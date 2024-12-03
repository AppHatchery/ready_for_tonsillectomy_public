import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:ready_for_tonsillectomy/utils/constants.dart';
import '../main.dart';
import '../widgets/appbar_widget_spanish.dart';
import '../widgets/menu_tile_hub_widget_spanish.dart';
import '../widgets/menu_tile_parent_widget_spanish.dart';
import '../widgets/menu_tile_settings_widget_spanish.dart';
import '../widgets/menu_tile_widget_spanish.dart';
import '../widgets/mask_carousel_widget_spanish.dart';
import '../widgets/color_change_circle_widget_spanish.dart';
import 'package:pendo_sdk/pendo_sdk.dart';

class GoingToSleepPageBSpanish extends StatefulWidget {
  const GoingToSleepPageBSpanish({Key? key}) : super(key: key);

  @override
  State<GoingToSleepPageBSpanish> createState() =>
      _GoingToSleepPageStateBSpanish();
}

class _GoingToSleepPageStateBSpanish extends State<GoingToSleepPageBSpanish>
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
          child: AppBarWidgetSpanish(
            title: "me duermo",
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
                        position: "4", title: "me duermo"),
                  ]),
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
                          fontSize: 0.048 * screenWidth,
                          color: HexColor("#214b68")),
                      children: const <TextSpan>[
                        TextSpan(
                            text: "Desliza",
                            style: TextStyle(
                                letterSpacing: 0,
                                height: 1.2,
                                fontWeight: FontWeight.bold)),
                        TextSpan(
                            text:
                                " para ver ¡a quién me parezco con la máscara!")
                      ]),
                ),
              ),
              Container(
                  height: 0.94 * screenWidth,
                  width: screenWidth,
                  color: HexColor("#468fc3"))
            ]),
            const ManuallyControlledSliderMaskSpanish(),
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
                child: const ColorChangeCircleSpanish(),
              ),
              Padding(
                padding: EdgeInsets.only(
                    right: 0.06 * screenWidth, bottom: 0.0533 * screenWidth),
                child: Column(children: [
                  Text(
                      "¡Puedes escoger \nun olor rico para tu \nmáscara! Ahora vamos a \nver cómo te quedas dormido.",
                      textAlign: TextAlign.right,
                      style: TextStyle(
                          letterSpacing: 0,
                          height: 1.2,
                          fontFamily: "proxima",
                          fontSize: 0.048 * screenWidth,
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
                        Navigator.pushNamed(
                            context, '/going_to_sleep_c_spanish');
                      },
                      child: Padding(
                        padding: EdgeInsets.only(top: 0.015 * screenWidth),
                        child: Text("SIGUIENTE",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                letterSpacing: 0,
                                height: 1.2,
                                fontFamily: "atrament",
                                color: HexColor("#ecf4f9"))),
                      ),
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
    PendoFlutterPlugin.track('Going_to_sleep_b_spanish',
        {'time_on_page': secondsSpent, 'status': state});
  }
}
