import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:ready_for_tonsillectomy/utils/constants.dart';
import '../main.dart';
import '../widgets/appbar_widget.dart';
import '../widgets/menu_tile_hub_widget.dart';
import '../widgets/menu_tile_parent_widget.dart';
import '../widgets/menu_tile_settings_widget.dart';
import '../widgets/menu_tile_widget.dart';
import '../widgets/hello_tonsils_widget.dart';
import '../widgets/firefighter_comic_widget.dart';
import '../widgets/adenoids_widget.dart';
import 'package:pendo_sdk/pendo_sdk.dart';

class WhatAreTonsilsPage extends StatefulWidget {
  const WhatAreTonsilsPage({Key? key}) : super(key: key);

  @override
  State<WhatAreTonsilsPage> createState() => _WhatAreTonsilsPageState();
}

class _WhatAreTonsilsPageState extends State<WhatAreTonsilsPage>
    with WidgetsBindingObserver {
  bool isSelected = false;
  late Size _size;

  //For Pendo
  late Timer timer;
  int secondsSpent = 0;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
    startTimer();
    // WidgetsBinding.instance?.addPostFrameCallback((_) {
    //   setState(() {
    //     _size = MediaQuery.of(context).size;
    //     isSelected = true;
    //   });
    // });
  }

  @override
  Widget build(BuildContext context) {
    _size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: HexColor("#468fc3"),
      appBar: PreferredSize(
          preferredSize: Size(double.infinity, _size.height * appBarSize),
          child: AppBarWidget(
            title: "what are tonsils?",
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
                    const MenuTileWidget(
                        position: "1", title: "what are tonsils?")
                  ]),
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
          Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding: EdgeInsets.only(
                  top: 0.0533 * screenWidth, bottom: 0.0533 * screenWidth),
              child: Text(
                  "Tonsils are lumps in your throat \nthat should help keep you healthy.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      letterSpacing: 0,
                      height: 1.2,
                      fontFamily: "proxima",
                      fontSize: 0.0533 * screenWidth,
                      color: white)),
            ),
          ),
          Stack(children: [
            const HelloTonsilsText(),
            Padding(
                padding: EdgeInsets.only(top: 0.2533 * screenWidth),
                child: const HelloTonsilsAnimation()),
          ]),
          Padding(
            padding: EdgeInsets.only(
                top: 0.0267 * screenWidth, bottom: 0.3036 * screenWidth),
            child: Stack(children: [
              Container(
                  color: Colors.white,
                  height: 0.8667 * screenWidth,
                  width: screenWidth),
              const ManuallyControlledSliderComic(),
            ]),
          ),
          Padding(
              padding: EdgeInsets.only(bottom: 0.0533 * screenWidth),
              child: const AdenoidSlider()),
          Padding(
            padding: EdgeInsets.only(bottom: 0.0533 * screenWidth),
            child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("great job! \nkeep going!",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          letterSpacing: 0,
                          height: 1.2,
                          fontFamily: "atrament",
                          fontSize: 0.0853 * screenWidth,
                          color: HexColor("#ecf4f9"))),
                  Padding(
                    padding: EdgeInsets.only(left: 0.1333 * screenWidth),
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(4)),
                            backgroundColor: HexColor("#3474a2"),
                            padding: EdgeInsets.symmetric(
                                horizontal: 0.1067 * screenWidth,
                                vertical: 0.0267 * screenWidth),
                            textStyle: TextStyle(
                                letterSpacing: 0,
                                height: 1.2,
                                fontFamily: "atrament",
                                fontSize: 0.0747 * screenWidth,
                                color: HexColor("#ecf4f9"))),
                        onPressed: () {
                          submitSeconds("Finished");
                          Navigator.pushNamed(context, '/why_surgery_a');
                        },
                        child: Padding(
                          padding: EdgeInsets.only(top: 0.0213 * screenWidth),
                          child:
                              // const Text("NEXT", textAlign: TextAlign.center, selectionColor:Colors.white),
                              Text("NEXT",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      letterSpacing: 0,
                                      height: 1.2,
                                      fontFamily: "atrament",
                                      color: HexColor("#ecf4f9"))),
                        )),
                  ),
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
    // print("State changed to $state");
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
        'What_are_tonsils', {'time_on_page': secondsSpent, 'status': state});
  }
}
