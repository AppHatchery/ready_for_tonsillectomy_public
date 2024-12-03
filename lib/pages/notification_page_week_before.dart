import 'dart:async';
import 'dart:math';
import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ready_for_tonsillectomy/locator.dart';
import 'package:ready_for_tonsillectomy/services/analytics_services.dart';
import 'package:ready_for_tonsillectomy/services/awesome_notifications.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pendo_sdk/pendo_sdk.dart';

double screenWidth = 0;
ReceivedAction? initialAction;

class NotificationPageWeekBefore extends StatefulWidget {
  const NotificationPageWeekBefore({Key? key}) : super(key: key);

  @override
  State<NotificationPageWeekBefore> createState() =>
      _NotificationPageWeekBeforeState();
}

class _NotificationPageWeekBeforeState extends State<NotificationPageWeekBefore>
    with WidgetsBindingObserver {
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

    AwesomeNotifications().getInitialNotificationAction().then(
      (receivedAction) {
        if (receivedAction != null) {}
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: HexColor("#bdd7ea"),
      appBar: AppBar(
        backgroundColor: HexColor("#ecf4f9"),
        titleSpacing: 0,
        leadingWidth: 0,
        automaticallyImplyLeading: false,
        toolbarHeight: 0.075 * screenHeight,
        title: Align(
          alignment: Alignment.topLeft,
          child: SizedBox(
            height: 0.065 * screenHeight,
            child: Row(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 0.035 * screenWidth),
                    child: IconButton(
                        onPressed: () {
                          submitSeconds("Finished");
                          PendoFlutterPlugin.track('Back', {});
                          Navigator.pop(context);
                        },
                        icon: Icon(CupertinoIcons.back,
                            size: 0.045 * screenHeight,
                            color: HexColor("#468fc3"))),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        top: 0.008 * screenHeight, left: 0.035 * screenWidth),
                    child: Text("reminder",
                        style: TextStyle(
                            letterSpacing: 0,
                            height: 1.2,
                            fontFamily: "atrament",
                            fontSize: 0.045 * screenHeight,
                            color: HexColor("#468fc3"))),
                  ),
                ]),
          ),
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(mainAxisSize: MainAxisSize.min, children: [
            Padding(
              padding: EdgeInsets.all(0.0587 * screenWidth),
              child: RichText(
                text: TextSpan(
                    text:
                        "Kids have less anxiety about surgery when they know what to expect. Talk to your child about surgery and what the day will be like. Go through the ",
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
                      TextSpan(text: " app together."),
                    ]),
              ),
            ),
            SizedBox(
                width: 0.8826 * screenWidth,
                height: 0.8826 * screenWidth,
                child: SvgPicture.asset('assets/notifications/doctor.svg')),
            SizedBox(height: 0.0587 * screenWidth),
          ]),
        ),
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
    PendoFlutterPlugin.track('NotificationPageWeekBefore',
        {'time_on_page': secondsSpent, 'status': state});
  }
}
