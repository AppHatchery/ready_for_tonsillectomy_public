import 'dart:async';
import 'dart:math';
import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ready_for_tonsillectomy/locator.dart';
import 'package:ready_for_tonsillectomy/models/user_preferences.dart';
import 'package:ready_for_tonsillectomy/services/analytics_services.dart';
import 'package:ready_for_tonsillectomy/services/awesome_notifications.dart';
import 'package:ready_for_tonsillectomy/utils/constants.dart';
import 'package:ready_for_tonsillectomy/utils/prefs.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pendo_sdk/pendo_sdk.dart';

double screenWidth = 0;

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with WidgetsBindingObserver {
  String? selectedDate;
  String? selectedAge;
  String? selectedLanguage;
  List ageOptions = ["6 & under", "7 & older"];
  List languageOptions = ["English", "Español"];

  //For Pendo
  late Timer timer;
  int secondsSpent = 0;

  @override
  void initState() {
    NotificationController().addListener(() => setState(() {}));
    super.initState();
    WidgetsBinding.instance.addObserver(this);
    startTimer();

    locator<AnalyticsService>()
        .setUserProperties(Random().nextInt(100).toString());
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    Future<void> datePicker() async {
      DateTime? pickedDate = await showDatePicker(
          context: context,
          locale: const Locale("en", "EN"),
          initialDate: DateTime.now(),
          //get today's date
          firstDate: DateTime.now().subtract(const Duration(days: 0)),
          lastDate: DateTime(2101),
          builder: (BuildContext context, Widget? child) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Theme(
                  data: Theme.of(context).copyWith(
                    colorScheme: const ColorScheme.light(
                      primary: Color(0xFF468FC3),
                      onSurface: Color(0xFF214B68),
                    ),
                    textTheme: const TextTheme(
                      headlineMedium: TextStyle(
                        letterSpacing: 0,
                        height: 1.2,
                        fontFamily: "proxima",
                        fontWeight: FontWeight.w500,
                      ),
                      headlineSmall: TextStyle(
                          letterSpacing: 0,
                          height: 1.2,
                          fontFamily: "proxima",
                          fontWeight: FontWeight.normal),
                      titleLarge: TextStyle(
                          letterSpacing: 0,
                          height: 1.2,
                          fontFamily: "proxima",
                          fontWeight: FontWeight.normal),
                      labelSmall: TextStyle(
                          height: 1.2,
                          fontFamily: "proxima",
                          letterSpacing: 1,
                          fontWeight: FontWeight.normal),
                      // Selected Date portrait// Selected Date portrait// Title - SELECT DATE// year gridview picker
                      titleMedium: TextStyle(
                          letterSpacing: 0,
                          height: 1.2,
                          color: Color(0xFF468FC3),
                          fontFamily: "proxima",
                          fontWeight: FontWeight.normal),
                      // input
                      titleSmall: TextStyle(
                          letterSpacing: 0,
                          height: 1.2,
                          fontFamily: "proxima",
                          fontSize: 16,
                          fontWeight: FontWeight.normal),
                      //month/year picker,
                      bodySmall: TextStyle(
                          letterSpacing: 0,
                          height: 1.2,
                          fontFamily: "proxima",
                          fontSize: 14,
                          fontWeight: FontWeight.w600), // days
                    ),
                    textButtonTheme: TextButtonThemeData(
                      style: TextButton.styleFrom(
                        textStyle: const TextStyle(
                            letterSpacing: 0,
                            height: 1.2,
                            fontFamily: "proxima",
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    // Input
                    inputDecorationTheme: const InputDecorationTheme(
                      labelStyle: TextStyle(
                          letterSpacing: 0,
                          height: 1.2,
                          fontFamily: "proxima",
                          fontWeight: FontWeight.normal), // Input label
                    ),
                    dialogBackgroundColor: const Color(0xFFECF4F9),
                  ),
                  child: child!,
                ),
              ],
            );
          });
      if (pickedDate != null) {
        PendoFlutterPlugin.track('Splash_page_notifications_date_picked',
            {"surgery_date": pickedDate.toString()});
        PreferenceUtils.setTimestamp("DOS", pickedDate.millisecondsSinceEpoch);
        setState(() {
          selectedDate = pickedDate.toString();
        });
        AwesomeNotifications().isNotificationAllowed().then(
          (isAllowed) {
            if (!isAllowed) {
              showDialog(
                context: context,
                builder: (context) => AlertDialog(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4)),
                  titlePadding: const EdgeInsets.all(0),
                  backgroundColor: HexColor("#ecf4f9"),
                  title: Container(
                    decoration: BoxDecoration(
                      color: HexColor("#468fc3"),
                      borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(4),
                          topRight: Radius.circular(4)),
                    ),
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    height: 100,
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "ALLOW NOTIFICATIONS",
                            style: TextStyle(
                              letterSpacing: 0,
                              height: 1.2,
                              fontFamily: "proxima",
                              color: HexColor("#ecf4f9"),
                              fontSize: 20,
                            ),
                          ),
                        ]),
                  ),
                  content:
                      Text("Our app would like to send you reminders and tips.",
                          style: TextStyle(
                            letterSpacing: 0,
                            height: 1.2,
                            color: HexColor("#214b68"),
                            fontFamily: "proxima",
                            fontWeight: FontWeight.w600,
                            fontSize: 20,
                          )),
                  actions: [
                    TextButton(
                      onPressed: () {
                        PendoFlutterPlugin.track(
                            'Splash_page_notifications_not_allowed', {});
                        Navigator.pop(context);
                      },
                      child: Text("DON'T ALLOW",
                          style: TextStyle(
                            letterSpacing: 0,
                            height: 1.2,
                            fontFamily: "proxima",
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: HexColor("#bdd7ea"),
                          )),
                    ),
                    TextButton(
                      onPressed: () {
                        PendoFlutterPlugin.track(
                            'Splash_page_notifications_allowed', {});
                        AwesomeNotifications()
                            .requestPermissionToSendNotifications()
                            .then((_) => Navigator.pop(context));
                      },
                      child: Text("ALLOW",
                          style: TextStyle(
                            letterSpacing: 0,
                            height: 1.2,
                            fontFamily: "proxima",
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: HexColor("#468fc3"),
                          )),
                    ),
                  ],
                ),
              );
            }
          },
        );

        // var today =  DateTime.now();
        // var fiveSecondsAfter = today.add(const Duration(seconds: 5));
        // NotificationController.createNotification(
        //     "Ready for Surgery", "Many kids are starting to feel better by this point, but don’t worry if your child still has pain. "
        // "The throat may take 2-3 weeks to heal fully. Soon you’ll be moving on!", fiveSecondsAfter, "asset://assets/notifications/kids.png");

        print(pickedDate);
      }
    }

    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: HexColor("#bdd7ea"),
      body: ListView(padding: EdgeInsets.zero, children: [
        Stack(alignment: Alignment.bottomCenter, children: [
          Container(color: HexColor("#6ca7cf"), height: 1.05 * screenWidth),
          Column(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Align(
              alignment: Alignment.topCenter,
              child: Padding(
                padding: EdgeInsets.only(top: 0.05 * screenWidth),
                child: Text("READY FOR SURGERY",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        letterSpacing: 0,
                        height: 1.2,
                        fontFamily: "atrament",
                        fontSize: 0.1307 * screenWidth,
                        color: HexColor("#ecf4f9"))),
              ),
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Padding(
                padding: EdgeInsets.only(bottom: 0.05 * screenWidth),
                child: Text("- my tonsillectomy -",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        letterSpacing: 0,
                        height: 1.2,
                        fontFamily: "atrament",
                        fontSize: 0.096 * screenWidth,
                        color: HexColor("#fcf8c7"))),
              ),
            ),
            Align(
                alignment: Alignment.bottomRight,
                child: SizedBox(
                    width: 0.944 * screenWidth,
                    height: 0.5705 * screenWidth,
                    child: SvgPicture.asset('assets/splash.svg'))),
          ]),
        ]),
        Align(
          alignment: Alignment.topCenter,
          child: Padding(
              padding: EdgeInsets.only(top: 0.05 * screenWidth),
              child: SizedBox(
                width: 0.4533 * screenWidth,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(4)),
                        backgroundColor: HexColor("#3474a2"),
                        padding: EdgeInsets.only(
                            top: 0.0267 * screenWidth,
                            bottom: 0.02 * screenWidth),
                        textStyle: TextStyle(
                            letterSpacing: 0,
                            height: 1.2,
                            fontFamily: "atrament",
                            fontSize: 0.0587 * screenWidth,
                            color: HexColor("#ecf4f9"))),
                    child: Text("CAMBIAR AL ESPAÑOL",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            letterSpacing: 0,
                            height: 1.2,
                            fontFamily: "atrament",
                            color: HexColor("#ecf4f9"))),
                    onPressed: () async {
                      PreferenceUtils.setPrefString("language", "Es");
                      PendoFlutterPlugin.track(
                          'Splash_page_language_spanish', {});
                      Navigator.pushNamed(context, '/splash_screen_spanish');
                    }),
              )),
        ),
        Align(
          alignment: Alignment.topLeft,
          child: Padding(
            padding: EdgeInsets.only(left: 0.0587 * screenWidth),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Padding(
                padding: EdgeInsets.symmetric(
                    vertical: 0.0587 * screenWidth, horizontal: 0),
                child: RichText(
                  textAlign: TextAlign.left,
                  text: TextSpan(
                      text: "",
                      style: TextStyle(
                          letterSpacing: 0,
                          height: 1.2,
                          fontFamily: "proxima",
                          fontSize: 0.0533 * screenWidth,
                          color: HexColor("#214b68")),
                      children: const <TextSpan>[
                        TextSpan(
                            text: "Ready for Surgery",
                            style: TextStyle(
                                letterSpacing: 0,
                                height: 1.2,
                                fontWeight: FontWeight.bold)),
                        TextSpan(
                            text:
                                " shows what to expect \nbefore, during, and after your tonsillectomy.")
                      ]),
                ),
              ),
              RichText(
                textAlign: TextAlign.left,
                text: TextSpan(
                    text: "This app was ",
                    style: TextStyle(
                        letterSpacing: 0,
                        height: 1.2,
                        fontFamily: "proxima",
                        fontSize: 0.0533 * screenWidth,
                        color: HexColor("#214b68")),
                    children: const <TextSpan>[
                      TextSpan(
                          text: "kid-tested",
                          style: TextStyle(
                              letterSpacing: 0,
                              height: 1.2,
                              fontWeight: FontWeight.bold)),
                      TextSpan(text: " & "),
                      TextSpan(
                          text: "doctor-approved",
                          style: TextStyle(
                              letterSpacing: 0,
                              height: 1.2,
                              fontWeight: FontWeight.bold)),
                      TextSpan(
                          text:
                              "\nin a study at Children’s Healthcare of Atlanta.")
                    ]),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                    vertical: 0.0587 * screenWidth, horizontal: 0),
                child: Text("Set your surgery date for helpful reminders.",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        letterSpacing: 0,
                        height: 1.2,
                        fontFamily: "proxima",
                        fontSize: 0.0533 * screenWidth,
                        color: HexColor("#214b68"))),
              ),
            ]),
          ),
        ),
        Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(width: 0.12 * screenWidth),
              SizedBox(
                width: 0.4533 * screenWidth,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(4)),
                      backgroundColor: HexColor("#3474a2"),
                      padding: EdgeInsets.only(
                          top: 0.0267 * screenWidth,
                          bottom: 0.02 * screenWidth),
                      textStyle: TextStyle(
                          letterSpacing: 0,
                          height: 1.2,
                          fontFamily: "atrament",
                          fontSize: 0.0587 * screenWidth,
                          color: HexColor("#ecf4f9"))),
                  onPressed: () {
                    datePicker();
                  },
                  child: Text("SET SURGERY DATE",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          letterSpacing: 0,
                          height: 1.2,
                          fontFamily: "atrament",
                          color: HexColor("#ecf4f9"))),
                ),
              ),
              SizedBox(width: 0.04 * screenWidth),
              Align(
                alignment: Alignment.topLeft,
                child: PreferenceUtils.getTimestamp("DOS") != null
                    ? Icon(CupertinoIcons.check_mark_circled_solid,
                        size: 0.08 * screenWidth, color: HexColor("#45aa8c"))
                    : Icon(CupertinoIcons.xmark_circle_fill,
                        size: 0.08 * screenWidth, color: HexColor("#d72027")),
              ),
            ]),
        SizedBox(height: 0.0587 * screenWidth),
        Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(
                width: 0.4533 * screenWidth,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(4)),
                      backgroundColor: HexColor("#3474a2"),
                      padding: EdgeInsets.only(
                          top: 0.0267 * screenWidth,
                          bottom: 0.02 * screenWidth),
                      textStyle: TextStyle(
                          letterSpacing: 0,
                          height: 1.2,
                          fontFamily: "atrament",
                          fontSize: 0.0587 * screenWidth,
                          color: HexColor("#ecf4f9"))),
                  onPressed: () => {
                    locator<AnalyticsService>().setScreenName("Splash page"),
                    if (PreferenceUtils.getTimestamp("DOS") != null)
                      {
                        scheduleNotifications(),
                        Navigator.pushNamed(context, '/hub')
                      }
                    else
                      {
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                          backgroundColor: HexColor("#fcf8c7"),
                          content: Text("Please set your surgery date.",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  letterSpacing: 0,
                                  height: 1.2,
                                  fontFamily: "proxima",
                                  fontSize: 0.0533 * screenWidth,
                                  color: HexColor("#214b68"))),
                        )),
                      }
                  },
                  child: Text("START!",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          letterSpacing: 0,
                          height: 1.2,
                          fontFamily: "atrament",
                          color: HexColor("#ecf4f9"))),
                ),
              ),
            ]),
        SizedBox(height: 0.0587 * screenWidth),
      ]),
    );
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    secondsSpent = 0;
    timer.cancel();
    super.dispose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (state == AppLifecycleState.paused) {
      submitSeconds("Paused");
      resetTimer();
    }
    if (state == AppLifecycleState.detached) {
      submitSeconds("Detached");
      resetTimer();
    }
    if (state == AppLifecycleState.resumed) {
      startTimer();
    }
  }

  void scheduleNotifications() async {
    // check if we have permission
    final allowed = await AwesomeNotifications().isNotificationAllowed();
    if (allowed) {
      await NotificationController.cancelAllNotifications();
      await NotificationController.scheduleNewNotification('en');
    }
  }

  void startTimer() {
    timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        secondsSpent++;
      });
    });
  }

  void stopTimer() {
    timer.cancel();
  }

  void resetTimer() => setState(() => secondsSpent = 0);
  void submitSeconds(String state) {
    stopTimer();
    PendoFlutterPlugin.track(
        'SplashPage', {'time_on_page': secondsSpent, 'status': state});
  }
}
