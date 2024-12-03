import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import '../main.dart';
import '../widgets/menu_tile_hub_widget.dart';
import '../widgets/menu_tile_parent_widget.dart';
import '../widgets/menu_tile_settings_widget.dart';
import '../widgets/menu_tile_widget.dart';
import 'package:ready_for_tonsillectomy/widgets/module_row_left.dart';
import 'package:ready_for_tonsillectomy/widgets/module_row_right.dart';
import 'package:ready_for_tonsillectomy/widgets/hub_intro_widget.dart';
import '../widgets/parent_tips_button_widget.dart';
import 'package:pendo_sdk/pendo_sdk.dart';

class HubPage extends StatefulWidget {
  HubPage({Key? key}) : super(key: key);

  @override
  State<HubPage> createState() => _HubPageState();
}

class _HubPageState extends State<HubPage> with WidgetsBindingObserver {
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
            child: Text("Ready for Surgery",
                style: TextStyle(
                    letterSpacing: 0,
                    height: 1.2,
                    fontFamily: "atrament",
                    fontSize: 0.045 * screenHeight,
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
                    const MenuTileHubWidget(),
                  ]),
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
                  child: settingsIcon(),
                  onTap: () {
                    submitSeconds("Finished");
                    Navigator.pushNamed(context, '/settings');
                  }),
            ]),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(mainAxisSize: MainAxisSize.min, children: [
          const HubIntroWidget(),
          Align(
            alignment: Alignment.topRight,
            child: GestureDetector(
                child: const ModuleRowRight(
                    index: 1,
                    name: "what are\ntonsils?",
                    icon: 'assets/hub/module_1.svg'),
                onTap: () {
                  submitSeconds("Finished");
                  Navigator.pushNamed(context, '/what_are_tonsils');
                }),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: GestureDetector(
                child: const ModuleRowLeft(
                    index: 2,
                    name: "why\nsurgery?",
                    icon: 'assets/hub/module_2.svg'),
                onTap: () {
                  submitSeconds("Finished");
                  Navigator.pushNamed(context, '/why_surgery_a');
                }),
          ),
          Align(
            alignment: Alignment.topRight,
            child: GestureDetector(
                child: const ModuleRowRight(
                    index: 3,
                    name: "getting\nready",
                    icon: 'assets/hub/module_3.svg'),
                onTap: () {
                  submitSeconds("Finished");
                  Navigator.pushNamed(context, '/getting_ready_a');
                }),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: GestureDetector(
                child: const ModuleRowLeft(
                    index: 4,
                    name: "going to\nsleep",
                    icon: 'assets/hub/module_4.svg'),
                onTap: () {
                  submitSeconds("Finished");
                  Navigator.pushNamed(context, '/going_to_sleep_a');
                }),
          ),
          Align(
            alignment: Alignment.topRight,
            child: GestureDetector(
                child: const ModuleRowRight(
                    index: 5, name: "the OR", icon: 'assets/hub/module_5.svg'),
                onTap: () {
                  submitSeconds("Finished");
                  Navigator.pushNamed(context, '/operating_room');
                }),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: GestureDetector(
                child: const ModuleRowLeft(
                    index: 6,
                    name: "after\nsurgery",
                    icon: 'assets/hub/module_6.svg'),
                onTap: () {
                  submitSeconds("Finished");
                  Navigator.pushNamed(context, '/after_surgery_a');
                }),
          ),
          Align(
            alignment: Alignment.topRight,
            child: GestureDetector(
                child: const ModuleRowRight(
                    index: 7,
                    name: "healing\nat home",
                    icon: 'assets/hub/module_7.svg'),
                onTap: () {
                  submitSeconds("Finished");
                  Navigator.pushNamed(context, '/healing_at_home');
                }),
          ),
          GestureDetector(
              child: parentTipsButton(),
              onTap: () {
                submitSeconds("Finished");
                Navigator.pushNamed(context, '/parent_tips');
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
        'Home', {'time_on_page': secondsSpent, 'status': state});
  }
}
