import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:ready_for_tonsillectomy/utils/constants.dart';
import '../main.dart';
import '../widgets/appbar_widget.dart';
import '../widgets/menu_tile_hub_widget.dart';
import '../widgets/menu_tile_parent_widget.dart';
import '../widgets/menu_tile_settings_widget.dart';
import '../widgets/menu_tile_widget.dart';
import '../widgets/mask_carousel_widget.dart';
import '../widgets/color_change_circle_widget.dart';
import 'package:pendo_sdk/pendo_sdk.dart';

class GoingToSleepPageB extends StatefulWidget {
  const GoingToSleepPageB({Key? key}) : super(key: key);

  @override
  State<GoingToSleepPageB> createState() => _GoingToSleepPageStateB();
}

class _GoingToSleepPageStateB extends State<GoingToSleepPageB>
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
      backgroundColor: HexColor("#d1c2df"),
      appBar: PreferredSize(
          preferredSize: Size(double.infinity, _size.height * appBarSize),
          child: AppBarWidget(
            title: "going to sleep",
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
                        position: "4", title: "going to sleep"),
                  ]),
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
        child: Column(children: [
          Stack(alignment: Alignment.topCenter, children: [
            Column(mainAxisSize: MainAxisSize.min, children: [
              Padding(
                padding: EdgeInsets.only(
                    top: 0.0533 * screenWidth, bottom: 0.035 * screenWidth),
                child: RichText(
                  textAlign: TextAlign.center,
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
                            text: "Swipe",
                            style: TextStyle(
                                letterSpacing: 0,
                                height: 1.2,
                                fontWeight: FontWeight.bold)),
                        TextSpan(text: " to see who I look like in my mask!")
                      ]),
                ),
              ),
              Container(
                  height: 0.94 * screenWidth,
                  width: screenWidth,
                  color: HexColor("#468fc3"))
            ]),
            const ManuallyControlledSliderMask(),
          ]),
          Padding(
            padding: EdgeInsets.only(top: 0.025 * screenWidth),
            child: Stack(alignment: Alignment.bottomRight, children: [
              SizedBox(
                  width: screenWidth,
                  height: screenWidth,
                  child: SvgPicture.asset('assets/sleep/curve.svg')),
              Padding(
                padding: EdgeInsets.only(
                    right: 0.0533 * screenWidth, bottom: 0.0533 * screenWidth),
                child: const ColorChangeCircle(),
              ),
              Padding(
                padding: EdgeInsets.only(
                    right: 0.06 * screenWidth, bottom: 0.0533 * screenWidth),
                child: Column(children: [
                  Text(
                      "You get to \nchoose a yummy smell \nfor your mask! Now let's \nsee how you go to sleep.",
                      textAlign: TextAlign.right,
                      style: TextStyle(
                          letterSpacing: 0,
                          height: 1.2,
                          fontFamily: "proxima",
                          fontSize: 0.0533 * screenWidth,
                          color: HexColor("#214b68"))),
                  Padding(
                    padding: EdgeInsets.only(
                        top: 0.07 * screenWidth, bottom: 0.04 * screenWidth),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(4)),
                          backgroundColor: HexColor("#468fc3"),
                          padding: EdgeInsets.symmetric(
                              horizontal: 0.08 * screenWidth,
                              vertical: 0.008 * screenWidth),
                          textStyle: TextStyle(
                              letterSpacing: 0,
                              height: 1.2,
                              fontFamily: "atrament",
                              fontSize: 0.0747 * screenWidth,
                              color: HexColor("#fdfbdf"))),
                      onPressed: () {
                        submitSeconds("Finished");
                        Navigator.pushNamed(context, '/going_to_sleep_c');
                      },
                      child: Padding(
                          padding: EdgeInsets.only(top: 0.015 * screenWidth),
                          child: Text("NEXT",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  letterSpacing: 0,
                                  height: 1.2,
                                  fontFamily: "atrament",
                                  color: HexColor("#ecf4f9")))),
                    ),
                  ),
                ]),
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
        'Going_to_sleep_b', {'time_on_page': secondsSpent, 'status': state});
  }
}
