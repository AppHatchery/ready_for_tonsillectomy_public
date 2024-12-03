import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import '../main.dart';
import '../widgets/menu_tile_hub_widget_spanish.dart';
import '../widgets/menu_tile_parent_widget_spanish.dart';
import '../widgets/menu_tile_settings_widget_spanish.dart';
import '../widgets/menu_tile_widget_spanish.dart';
import 'package:ready_for_tonsillectomy/widgets/module_row_left_spanish.dart';
import 'package:ready_for_tonsillectomy/widgets/module_row_right_spanish.dart';
import 'package:ready_for_tonsillectomy/widgets/hub_intro_widget_spanish.dart';
import '../widgets/parent_tips_button_widget_spanish.dart';
import 'package:pendo_sdk/pendo_sdk.dart';

class HubPageSpanish extends StatefulWidget {
  HubPageSpanish({Key? key}) : super(key: key);

  @override
  State<HubPageSpanish> createState() => _HubPageSpanishState();
}

class _HubPageSpanishState extends State<HubPageSpanish>
    with WidgetsBindingObserver {
  //For Pendo
  late Timer timer;
  int secondsSpent = 0;

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    secondsSpent = 0;
    timer.cancel();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
    startTimer();
  }

  @override
  Widget build(BuildContext context) {
    double screenWidthLocal = MediaQuery.of(context).size.width;
    screenWidth = screenWidthLocal;
    double screenHeightLocal = MediaQuery.of(context).size.height;
    screenHeight = screenHeightLocal;
    return Scaffold(
      backgroundColor: HexColor("#bdd7ea"),
      appBar: AppBar(
        backgroundColor: HexColor("#ecf4f9"),
        titleSpacing: 0,
        leadingWidth: 0,
        automaticallyImplyLeading: false,
        toolbarHeight: 0.075 * screenHeight,
        title: Align(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: EdgeInsets.only(left: 0.0533 * screenWidth),
            child: Text("me preparo para la cirugía",
                style: TextStyle(
                    letterSpacing: 0,
                    height: 1.2,
                    fontFamily: "atrament",
                    fontSize: 0.034 * screenHeight,
                    color: HexColor("#468fc3"))),
          ),
        ),
        actions: [
          Align(
            alignment: Alignment.topRight,
            child: Builder(builder: (BuildContext context) {
              return Padding(
                padding: EdgeInsets.only(right: 0.0533 * screenWidth),
                child: IconButton(
                    onPressed: () {
                      Scaffold.of(context).openEndDrawer();
                    },
                    icon: Icon(CupertinoIcons.bars,
                        size: 0.055 * screenHeight,
                        color: HexColor("#468fc3"))),
              );
            }),
          )
        ],
      ),
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
                    const MenuTileHubWidgetSpanish(),
                  ]),
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
                  child: const MenuTileWidgetSpanish(
                      position: "2", title: "¿por qué cirugía?"),
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
      body: SingleChildScrollView(
        child: Column(mainAxisSize: MainAxisSize.min, children: [
          const HubIntroWidgetSpanish(),
          Align(
            alignment: Alignment.topRight,
            child: GestureDetector(
                child: const ModuleRowRightSpanish(
                    index: 1,
                    name: "¿qué son \namígdalas?",
                    icon: 'assets/hub/module_1.svg'),
                onTap: () {
                  submitSeconds("Finished");
                  Navigator.pushNamed(context, '/what_are_tonsils_spanish');
                }),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: GestureDetector(
                child: const ModuleRowLeftSpanish(
                    index: 2,
                    name: "¿por qué \ncirugía?",
                    icon: 'assets/hub/module_2.svg'),
                onTap: () {
                  submitSeconds("Finished");
                  Navigator.pushNamed(context, '/why_surgery_a_spanish');
                }),
          ),
          Align(
            alignment: Alignment.topRight,
            child: GestureDetector(
                child: const ModuleRowRightSpanish(
                    index: 3,
                    name: "preparación",
                    icon: 'assets/hub/module_3_spanish.svg'),
                onTap: () {
                  submitSeconds("Finished");
                  Navigator.pushNamed(context, '/getting_ready_a_spanish');
                }),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: GestureDetector(
                child: const ModuleRowLeftSpanish(
                    index: 4,
                    name: "me duermo",
                    icon: 'assets/hub/module_4.svg'),
                onTap: () {
                  submitSeconds("Finished");
                  Navigator.pushNamed(context, '/going_to_sleep_a_spanish');
                }),
          ),
          Align(
            alignment: Alignment.topRight,
            child: GestureDetector(
                child: const ModuleRowRightSpanish(
                    index: 5,
                    name: "la sala \nde cirugía",
                    icon: 'assets/hub/module_5.svg'),
                onTap: () {
                  submitSeconds("Finished");
                  Navigator.pushNamed(context, '/operating_room_spanish');
                }),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: GestureDetector(
                child: const ModuleRowLeftSpanish(
                    index: 6,
                    name: "después de \nla cirugía",
                    icon: 'assets/hub/module_6.svg'),
                onTap: () {
                  submitSeconds("Finished");
                  Navigator.pushNamed(context, '/after_surgery_a_spanish');
                }),
          ),
          Align(
            alignment: Alignment.topRight,
            child: GestureDetector(
                child: const ModuleRowRightSpanish(
                    index: 7,
                    name: "recuperación \nen casa",
                    icon: 'assets/hub/module_7_spanish.svg'),
                onTap: () {
                  submitSeconds("Finished");
                  Navigator.pushNamed(context, '/healing_at_home_spanish');
                }),
          ),
          GestureDetector(
              child: parentTipsButtonSpanish(),
              onTap: () {
                submitSeconds("Finished");
                Navigator.pushNamed(context, '/parent_tips_spanish');
              }),
        ]),
      ),
    );
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
        'Home_spanish', {'time_on_page': secondsSpent, 'status': state});
  }
}
