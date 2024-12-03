import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:ready_for_tonsillectomy/utils/constants.dart';
import 'package:rive/rive.dart';
import '../main.dart';
import '../widgets/appbar_widget_spanish.dart';
import '../widgets/menu_tile_hub_widget_spanish.dart';
import '../widgets/menu_tile_parent_widget_spanish.dart';
import '../widgets/menu_tile_settings_widget_spanish.dart';
import '../widgets/menu_tile_widget_spanish.dart';
import '../widgets/doctor_speech_widget_spanish.dart';
import 'package:pendo_sdk/pendo_sdk.dart';

class WhySurgeryPageDSpanish extends StatefulWidget {
  const WhySurgeryPageDSpanish({Key? key}) : super(key: key);

  @override
  State<WhySurgeryPageDSpanish> createState() => _WhySurgeryPageStateDSpanish();
}

class _WhySurgeryPageStateDSpanish extends State<WhySurgeryPageDSpanish>
    with WidgetsBindingObserver {
  late Size _size;

  //For Pendo
  late Timer timer;
  int secondsSpent = 0;

  @override
  void initState() {
    // Add your initialization code here
    WidgetsBinding.instance.addObserver(this);
    startTimer();
    super.initState();
    // WidgetsBinding.instance?.addPostFrameCallback((_) {
    //   setState(() {
    //     _size = MediaQuery.of(context).size;
    //   });
    // });
  }

  @override
  Widget build(BuildContext context) {
    _size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: HexColor("#b4ded2"),
      appBar: PreferredSize(
          preferredSize: Size(double.infinity, _size.height * appBarSize),
          child: AppBarWidgetSpanish(
            title: "¿por qué cirugía?",
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
                      Text("MENÚ",
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
                  child: const MenuTileHubWidgetSpanish(),
                  onTap: () {
                    submitSeconds("Finished");
                    Navigator.pushNamed(context, '/hub_older_spanish');
                  }),
              GestureDetector(
                  child: const MenuTileWidgetSpanish(
                      position: "1", title: "¿qué son amígdalas?"),
                  onTap: () {
                    submitSeconds("Finished");
                    Navigator.pushNamed(context, '/what_are_tonsils_spanish');
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
                    const MenuTileWidgetSpanish(
                        position: "2", title: "¿por qué cirugía?"),
                  ]),
                  onTap: () {
                    submitSeconds("Finished");
                    Navigator.pushNamed(context, '/why_surgery_a_spanish');
                  }),
              GestureDetector(
                  child: const MenuTileWidgetSpanish(
                      position: "3", title: "preparación"),
                  onTap: () {
                    submitSeconds("Finished");
                    Navigator.pushNamed(context, '/getting_ready_a_spanish');
                  }),
              GestureDetector(
                  child: const MenuTileWidgetSpanish(
                      position: "4", title: "me duermo"),
                  onTap: () {
                    submitSeconds("Finished");
                    Navigator.pushNamed(context, '/going_to_sleep_a_spanish');
                  }),
              GestureDetector(
                  child: const MenuTileWidgetSpanish(
                      position: "5", title: "la sala de cirugía"),
                  onTap: () {
                    submitSeconds("Finished");
                    Navigator.pushNamed(context, '/operating_room_spanish');
                  }),
              GestureDetector(
                  child: const MenuTileWidgetSpanish(
                      position: "6", title: "después de la cirugía"),
                  onTap: () {
                    submitSeconds("Finished");
                    Navigator.pushNamed(context, '/after_surgery_a_spanish');
                  }),
              GestureDetector(
                  child: const MenuTileWidgetSpanish(
                      position: "7", title: "recuperación en casa"),
                  onTap: () {
                    submitSeconds("Finished");
                    Navigator.pushNamed(context, '/healing_at_home_spanish');
                  }),
              GestureDetector(
                  child: const MenuTileParentsSpanish(),
                  onTap: () {
                    submitSeconds("Finished");
                    Navigator.pushNamed(context, '/parent_tips_spanish');
                  }),
              GestureDetector(
                  child: settingsIconSpanish(),
                  onTap: () {
                    submitSeconds("Finished");
                    Navigator.pushNamed(context, '/settings_spanish');
                  }),
            ]),
          ),
        ),
      ),
      body: Align(
        alignment: Alignment.bottomCenter,
        child: SingleChildScrollView(
          child: Column(mainAxisSize: MainAxisSize.min, children: [
            Padding(
              padding: EdgeInsets.only(top: 0.0533 * screenWidth),
              child: Stack(children: [
                const DoctorSpeechSpanish(),
                Padding(
                  padding: EdgeInsets.only(top: 0.3067 * screenWidth),
                  child: SizedBox(
                      width: screenWidth,
                      height: 0.9467 * screenWidth,
                      child: const RiveAnimation.asset(
                          'assets/why_surgery/hello_doctor.riv')),
                ),
              ]),
            ),
            Stack(alignment: Alignment.center, children: [
              Container(
                  height: 0.2933 * screenWidth, color: HexColor("#d9eee8")),
              Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("¡bueno! \n¡vamos!",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            letterSpacing: 0,
                            height: 1.2,
                            fontFamily: "atrament",
                            fontSize: 0.0853 * screenWidth,
                            color: HexColor("#468fc3"))),
                    Padding(
                      padding: EdgeInsets.only(left: 0.1333 * screenWidth),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(4)),
                            backgroundColor: HexColor("#468fc3"),
                            padding: EdgeInsets.symmetric(
                                horizontal: 0.1067 * screenWidth,
                                vertical: 0.0267 * screenWidth),
                            textStyle: TextStyle(
                                letterSpacing: 0,
                                height: 1.2,
                                fontFamily: "atrament",
                                fontSize: 0.0747 * screenWidth,
                                color: HexColor("#d9eee8"))),
                        onPressed: () {
                          submitSeconds("Finished");
                          Navigator.pushNamed(
                              context, '/getting_ready_a_spanish');
                        },
                        child: Padding(
                            padding: EdgeInsets.only(top: 0.0213 * screenWidth),
                            child: Text("SIGUIENTE",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    letterSpacing: 0,
                                    height: 1.2,
                                    fontFamily: "atrament",
                                    color: HexColor("#ecf4f9")))),
                      ),
                    ),
                  ]),
            ]),
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
    PendoFlutterPlugin.track('Why_surgery_d_spanish',
        {'time_on_page': secondsSpent, 'status': state});
  }
}
