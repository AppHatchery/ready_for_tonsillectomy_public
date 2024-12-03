import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../main.dart';
import '../services/awesome_notifications.dart';
import '../utils/constants.dart';
import '../utils/prefs.dart';
import '../widgets/appbar_widget.dart';
import '../widgets/menu_tile_hub_widget.dart';
import '../widgets/menu_tile_parent_widget.dart';
import '../widgets/menu_tile_widget.dart';
import '../widgets/menu_tile_settings_widget.dart';
import 'package:pendo_sdk/pendo_sdk.dart';
import 'package:url_launcher/url_launcher.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage>
    with WidgetsBindingObserver {
  //For Pendo
  late Timer timer;
  int secondsSpent = 0;
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
    startTimer();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    Future<void> showPopDialog(
        BuildContext context, String message, Function() onPress) {
      return showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
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
                        "CHANGE SETTINGS",
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
              content: SizedBox(
                height: 100.0,
                width: 300.0,
                child: Text(message,
                    style: TextStyle(
                        letterSpacing: 0,
                        height: 1.2,
                        color: HexColor("#214b68"),
                        fontFamily: 'proxima',
                        fontWeight: FontWeight.w600,
                        fontSize: 20)),
              ),
              actions: <Widget>[
                TextButton(
                  child: Text("CANCEL",
                      style: TextStyle(
                        letterSpacing: 0,
                        height: 1.2,
                        fontFamily: "proxima",
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: HexColor("#468fc3"),
                      )),
                  onPressed: () {
                    PendoFlutterPlugin.track('Back', {});
                    Navigator.of(context).pop();
                  },
                ),
                //add selection to shared preferences
                TextButton(
                  onPressed: onPress,
                  child: Text("OK",
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
            );
          });
    }

    return Scaffold(
      backgroundColor: HexColor("#bdd7ea"),
      appBar: PreferredSize(
          preferredSize: Size(double.infinity, size.height * appBarSize),
          child: AppBarWidget(
            title: "settings",
            hasBackArrow: true,
            callback: () => {
              submitSeconds("Finished"),
              PendoFlutterPlugin.track('Back', {})
            },
          )),
      endDrawer: SizedBox(
        width: 0.85 * screenWidth,
        child: Drawer(
          backgroundColor: HexColor("#ecf4f9"),
          child: SingleChildScrollView(
            child: Column(children: [
              SizedBox(
                height: 0.2 * screenHeight,
                child: DrawerHeader(
                  decoration: BoxDecoration(color: HexColor("#468fc3")),
                  child: Padding(
                    padding: EdgeInsets.only(left: 0.008 * screenHeight),
                    child: Row(children: [
                      Padding(
                        padding: EdgeInsets.only(right: 0.02 * screenHeight),
                        child: IconButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            icon: Icon(CupertinoIcons.clear,
                                size: 0.045 * screenHeight,
                                color: HexColor("#ecf4f9"))),
                      ),
                      Text("MENU",
                          style: TextStyle(
                              letterSpacing: 0,
                              height: 1.2,
                              fontFamily: "atrament",
                              fontSize: 0.045 * screenHeight,
                              color: HexColor("#ecf4f9"))),
                    ]),
                  ),
                ),
              ),
              GestureDetector(
                  child: const MenuTileHubWidget(),
                  onTap: () {
                    submitSeconds("Finished");
                    Navigator.pushNamed(context, '/hub');
                  }),
              GestureDetector(
                  child: const MenuTileWidget(
                      position: "1", title: "what are tonsils?"),
                  onTap: () {
                    submitSeconds("Finished");
                    Navigator.pushNamed(context, '/what_are_tonsils');
                  }),
              GestureDetector(
                  child: const MenuTileWidget(
                      position: "2", title: "why surgery?"),
                  onTap: () {
                    submitSeconds("Finished");
                    Navigator.pushNamed(context, '/why_surgery_a');
                  }),
              GestureDetector(
                  child: const MenuTileWidget(
                      position: "3", title: "getting ready"),
                  onTap: () {
                    submitSeconds("Finished");
                    Navigator.pushNamed(context, '/getting_ready_a');
                  }),
              GestureDetector(
                  child: const MenuTileWidget(
                      position: "4", title: "going to sleep"),
                  onTap: () {
                    submitSeconds("Finished");
                    Navigator.pushNamed(context, '/going_to_sleep_a');
                  }),
              GestureDetector(
                  child: const MenuTileWidget(position: "5", title: "the OR"),
                  onTap: () {
                    submitSeconds("Finished");
                    Navigator.pushNamed(context, '/operating_room');
                  }),
              GestureDetector(
                  child: const MenuTileWidget(
                      position: "6", title: "after surgery"),
                  onTap: () {
                    submitSeconds("Finished");
                    Navigator.pushNamed(context, '/after_surgery_a');
                  }),
              GestureDetector(
                  child: const MenuTileWidget(
                      position: "7", title: "healing at home"),
                  onTap: () {
                    submitSeconds("Finished");
                    Navigator.pushNamed(context, '/healing_at_home');
                  }),
              GestureDetector(
                  child: const MenuTileParents(),
                  onTap: () {
                    submitSeconds("Finished");
                    Navigator.pushNamed(context, '/parent_tips');
                  }),
              GestureDetector(
                  child: Stack(alignment: Alignment.center, children: [
                    Container(
                        height: 0.080 * screenHeight,
                        width: 0.8 * screenWidth,
                        decoration: BoxDecoration(
                            color: HexColor("#f7fafc"),
                            border: Border.all(
                                color: HexColor("#bdd7ea"),
                                width: 0.005 * screenHeight),
                            borderRadius:
                                BorderRadius.circular(0.01 * screenWidth))),
                    settingsIcon(),
                  ]),
                  onTap: () {
                    submitSeconds("Finished");
                    Navigator.pushNamed(context, '/settings');
                  }),
            ]),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          Padding(
            padding: EdgeInsets.only(
                top: 0.0587 * screenWidth, bottom: 0.0587 * screenWidth),
            child: SizedBox(
              width: 0.8826 * screenWidth,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4)),
                    alignment: Alignment.centerLeft,
                    backgroundColor: HexColor("#468fc3"),
                    padding: EdgeInsets.symmetric(
                        horizontal: 0.04 * screenWidth,
                        vertical: 0.02 * screenWidth),
                    textStyle: TextStyle(
                        letterSpacing: 0,
                        height: 1.2,
                        fontFamily: "atrament",
                        fontSize: 0.0747 * screenWidth,
                        color: HexColor("#ecf4f9"))),
                onPressed: () async => await showPopDialog(
                    context,
                    "Are you sure you want to reset your surgery date?",
                    () async => {
                          await NotificationController.cancelAllNotifications(),
                          await PreferenceUtils.clearPrefs("DOS"),
                          submitSeconds("Finished"),
                          Navigator.pushNamed(context, "/splash_screen"),
                        }),
                child: Padding(
                    padding: EdgeInsets.only(top: 0.012 * screenWidth),
                    child: Text("CHANGE SURGERY DATE",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            letterSpacing: 0,
                            height: 1.2,
                            fontFamily: "atrament",
                            color: HexColor("#ecf4f9")))),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 0.0587 * screenWidth),
            child: SizedBox(
              width: 0.8826 * screenWidth,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4)),
                    alignment: Alignment.centerLeft,
                    backgroundColor: HexColor("#468fc3"),
                    padding: EdgeInsets.symmetric(
                        horizontal: 0.04 * screenWidth,
                        vertical: 0.02 * screenWidth),
                    textStyle: TextStyle(
                        letterSpacing: 0,
                        height: 1.2,
                        fontFamily: "atrament",
                        fontSize: 0.0747 * screenWidth,
                        color: HexColor("#ecf4f9"))),
                onPressed: () async => {
                  await showPopDialog(
                    context,
                    "Are you sure you want to reset your language?",
                    () async => {
                      //await PreferenceUtils.clearPrefs("language"),
                      submitSeconds("Finished"),
                      Navigator.pushNamed(context, "/splash_screen"),
                    },
                  )
                },
                child: Padding(
                    padding: EdgeInsets.only(top: 0.012 * screenWidth),
                    child: Text("CHANGE LANGUAGE",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            letterSpacing: 0,
                            height: 1.2,
                            fontFamily: "atrament",
                            color: HexColor("#ecf4f9")))),
              ),
            ),
          ),
          SizedBox(
            width: 0.8826 * screenWidth,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4)),
                  alignment: Alignment.centerLeft,
                  backgroundColor: HexColor("#468fc3"),
                  padding: EdgeInsets.symmetric(
                      horizontal: 0.04 * screenWidth,
                      vertical: 0.02 * screenWidth),
                  textStyle: TextStyle(
                      letterSpacing: 0,
                      height: 1.2,
                      fontFamily: "atrament",
                      fontSize: 0.0747 * screenWidth,
                      color: HexColor("#ecf4f9"))),
              onPressed: () => showDialog<String>(
                context: context,
                builder: (BuildContext context) => AlertDialog(
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
                            "RATE THIS APP",
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
                  content: SizedBox(
                    height: 100.0,
                    width: 300.0,
                    child: Text(
                        "Please give our app a review in the App Store!",
                        style: TextStyle(
                            letterSpacing: 0,
                            height: 1.2,
                            color: HexColor("#214b68"),
                            fontFamily: 'proxima',
                            fontWeight: FontWeight.w600,
                            fontSize: 20)),
                  ),
                  actions: <Widget>[
                    TextButton(
                      child: Padding(
                        padding: const EdgeInsets.only(right: 8.0),
                        child: Text("CANCEL",
                            style: TextStyle(
                              letterSpacing: 0,
                              height: 1.2,
                              fontFamily: "proxima",
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: HexColor("#468fc3"),
                            )),
                      ),
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                    ),
                  ],
                ),
              ),
              child: Row(children: [
                Padding(
                    padding: EdgeInsets.only(top: 0.012 * screenWidth),
                    child: Text("RATE THIS APP!",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            letterSpacing: 0,
                            height: 1.2,
                            fontFamily: "atrament",
                            color: HexColor("#ecf4f9")))),
                SizedBox(width: 0.025 * screenWidth),
                SizedBox(
                    height: 0.045 * screenWidth,
                    width: 0.27 * screenWidth,
                    child: SvgPicture.asset('assets/rating.svg')),
              ]),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(0.0587 * screenWidth),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              RichText(
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
                              " was designed and developed by Holly Cordray, with support from Dr. Kara Prickett, the Department of Otolaryngology–Head and Neck Surgery at Emory University School of Medicine, and the Georgia Clinical & Translational Science Alliance AppHatchery."),
                    ]),
              ),
              SizedBox(height: 0.0587 * screenWidth),
              Text(
                  "The app benefitted from patient and parent feedback in a research study at Children’s Healthcare of Atlanta.",
                  style: TextStyle(
                      letterSpacing: 0,
                      height: 1.2,
                      fontFamily: "proxima",
                      fontSize: 0.0533 * screenWidth,
                      color: HexColor("#214b68"))),
              SizedBox(height: 0.0587 * screenWidth),
              Text(
                  "The content is based on clinical knowledge and the following resources on best practices for tonsillectomy (linked below):",
                  style: TextStyle(
                      letterSpacing: 0,
                      height: 1.2,
                      fontFamily: "proxima",
                      fontSize: 0.0533 * screenWidth,
                      color: HexColor("#214b68"))),
              SizedBox(height: 0.0587 * screenWidth),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4)),
                    alignment: Alignment.centerLeft,
                    backgroundColor: HexColor("#bdd7ea"),
                    padding: EdgeInsets.symmetric(
                        horizontal: 0.02 * screenWidth,
                        vertical: 0.02 * screenWidth)),
                onPressed: () async {
                  final url = Uri.parse(
                    "https://doi.org/10.1002/lary.31198",
                  );
                  if (await canLaunchUrl(url)) {
                    submitSeconds("Finished");
                    launchUrl(url);
                  } else {
                    // ignore: avoid_print
                    print("Can't launch $url");
                  }
                },
                child: RichText(
                  textAlign: TextAlign.left,
                  text: TextSpan(
                      text:
                          "Cordray H, Wright EA, Patel C, Raol N, Prickett KK. A mobile application for child-focused tonsillectomy education: development and user-testing. ",
                      style: TextStyle(
                          letterSpacing: 0,
                          height: 1.2,
                          fontFamily: "proxima",
                          fontSize: 0.045 * screenWidth,
                          color: HexColor("#214b68")),
                      children: const <TextSpan>[
                        TextSpan(
                            text: "Laryngoscope",
                            style: TextStyle(
                                letterSpacing: 0,
                                height: 1.2,
                                fontStyle: FontStyle.italic)),
                        TextSpan(text: ". 2024;134(5):2455-2463."),
                      ]),
                ),
              ),
              SizedBox(height: 0.02 * screenWidth),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4)),
                    alignment: Alignment.centerLeft,
                    backgroundColor: HexColor("#bdd7ea"),
                    padding: EdgeInsets.symmetric(
                        horizontal: 0.02 * screenWidth,
                        vertical: 0.02 * screenWidth)),
                onPressed: () async {
                  final url = Uri.parse(
                    "https://doi.org/10.1177/01945998211053197",
                  );
                  if (await canLaunchUrl(url)) {
                    submitSeconds("Finished");
                    launchUrl(url);
                  } else {
                    // ignore: avoid_print
                    print("Can't launch $url");
                  }
                },
                child: RichText(
                  textAlign: TextAlign.left,
                  text: TextSpan(
                      text:
                          "Cordray H, Patel C, Prickett KK. Reducing children's preoperative fear with an educational pop-up book: a randomized controlled trial. ",
                      style: TextStyle(
                          letterSpacing: 0,
                          height: 1.2,
                          fontFamily: "proxima",
                          fontSize: 0.045 * screenWidth,
                          color: HexColor("#214b68")),
                      children: const <TextSpan>[
                        TextSpan(
                            text: "Otolaryngology–Head and Neck Surgery",
                            style: TextStyle(
                                letterSpacing: 0,
                                height: 1.2,
                                fontStyle: FontStyle.italic)),
                        TextSpan(text: ". 2022;167(2):366-374."),
                      ]),
                ),
              ),
              SizedBox(height: 0.02 * screenWidth),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4)),
                    alignment: Alignment.centerLeft,
                    backgroundColor: HexColor("#bdd7ea"),
                    padding: EdgeInsets.symmetric(
                        horizontal: 0.02 * screenWidth,
                        vertical: 0.02 * screenWidth)),
                onPressed: () async {
                  final url = Uri.parse(
                    "https://doi.org/10.1177/0194599818817758",
                  );
                  if (await canLaunchUrl(url)) {
                    submitSeconds("Finished");
                    launchUrl(url);
                  } else {
                    // ignore: avoid_print
                    print("Can't launch $url");
                  }
                },
                child: RichText(
                  textAlign: TextAlign.left,
                  text: TextSpan(
                      text:
                          "Finestone SA, Giordano T, Mitchell RB, Walsh SA, O’Connor SS, Satterfield LM. Plain language summary for patients: tonsillectomy in children. ",
                      style: TextStyle(
                          letterSpacing: 0,
                          height: 1.2,
                          fontFamily: "proxima",
                          fontSize: 0.045 * screenWidth,
                          color: HexColor("#214b68")),
                      children: const <TextSpan>[
                        TextSpan(
                            text: "Otolaryngology–Head and Neck Surgery",
                            style: TextStyle(
                                letterSpacing: 0,
                                height: 1.2,
                                fontStyle: FontStyle.italic)),
                        TextSpan(text: ". 2019;160(2):206-212."),
                      ]),
                ),
              ),
              SizedBox(height: 0.02 * screenWidth),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4)),
                    alignment: Alignment.centerLeft,
                    backgroundColor: HexColor("#bdd7ea"),
                    padding: EdgeInsets.symmetric(
                        horizontal: 0.02 * screenWidth,
                        vertical: 0.02 * screenWidth)),
                onPressed: () async {
                  final url = Uri.parse(
                    "https://doi.org/10.1177/0194599818801757",
                  );
                  if (await canLaunchUrl(url)) {
                    submitSeconds("Finished");
                    launchUrl(url);
                  } else {
                    // ignore: avoid_print
                    print("Can't launch $url");
                  }
                },
                child: RichText(
                  textAlign: TextAlign.left,
                  text: TextSpan(
                      text:
                          "Mitchell RB, Archer SM, Ishman SL, et al. Clinical practice guideline: tonsillectomy in children (update). ",
                      style: TextStyle(
                          letterSpacing: 0,
                          height: 1.2,
                          fontFamily: "proxima",
                          fontSize: 0.045 * screenWidth,
                          color: HexColor("#214b68")),
                      children: const <TextSpan>[
                        TextSpan(
                            text: "Otolaryngology–Head and Neck Surgery",
                            style: TextStyle(
                                letterSpacing: 0,
                                height: 1.2,
                                fontStyle: FontStyle.italic)),
                        TextSpan(text: ". 2019;160(1_suppl):S1-S42."),
                      ]),
                ),
              ),
              SizedBox(height: 0.02 * screenWidth),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(4)),
                      alignment: Alignment.centerLeft,
                      backgroundColor: HexColor("#bdd7ea"),
                      padding: EdgeInsets.symmetric(
                          horizontal: 0.02 * screenWidth,
                          vertical: 0.02 * screenWidth)),
                  onPressed: () async {
                    final url = Uri.parse(
                      "https://www.enthealth.org/be_ent_smart/how-to-prepare-for-tonsil-and-adenoid-surgery/",
                    );
                    if (await canLaunchUrl(url)) {
                      submitSeconds("Finished");
                      launchUrl(url);
                    } else {
                      // ignore: avoid_print
                      print("Can't launch $url");
                    }
                  },
                  child: Text(
                      "How to prepare for tonsil and adenoid surgery. American Academy of Otolaryngology–Head and Neck Surgery Foundation. 2019.",
                      style: TextStyle(
                          letterSpacing: 0,
                          height: 1.2,
                          fontFamily: "proxima",
                          fontSize: 0.045 * screenWidth,
                          color: HexColor("#214b68")))),
              SizedBox(height: 0.02 * screenWidth),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(4)),
                      alignment: Alignment.centerLeft,
                      backgroundColor: HexColor("#bdd7ea"),
                      padding: EdgeInsets.symmetric(
                          horizontal: 0.02 * screenWidth,
                          vertical: 0.02 * screenWidth)),
                  onPressed: () async {
                    final url = Uri.parse(
                      "https://www.choa.org/~/media/files/Childrens/medical-services/surgery/surgery-teaching-sheets/preparing-for-surgery-schoolage.PDF?la=en",
                    );
                    if (await canLaunchUrl(url)) {
                      submitSeconds("Finished");
                      launchUrl(url);
                    } else {
                      // ignore: avoid_print
                      print("Can't launch $url");
                    }
                  },
                  child: Text(
                      "Preparing your child for surgery (school age 6-12 years) [teaching sheet]. Children’s Healthcare of Atlanta. 2018.",
                      style: TextStyle(
                          letterSpacing: 0,
                          height: 1.2,
                          fontFamily: "proxima",
                          fontSize: 0.045 * screenWidth,
                          color: HexColor("#214b68")))),
              Padding(
                padding: EdgeInsets.only(
                    top: 0.0587 * screenWidth, bottom: 0.05 * screenWidth),
                child: SizedBox(
                    width: screenWidth,
                    child: Image.asset("assets/EU_shield_hz_280.png")),
              ),
              Text(
                  "Copyright © 2023 Emory University and Holly Cordray. All rights reserved.",
                  style: TextStyle(
                      letterSpacing: 0,
                      height: 1.2,
                      fontFamily: "proxima",
                      fontSize: 0.0533 * screenWidth,
                      color: HexColor("#214b68"))),
            ]),
          ),
        ]),
      ),
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
        'Settings', {'time_on_page': secondsSpent, 'status': state});
  }
}
