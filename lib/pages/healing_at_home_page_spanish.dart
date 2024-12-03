import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:rive/rive.dart';
import 'package:ready_for_tonsillectomy/utils/constants.dart';
import '../main.dart';
import '../widgets/appbar_widget_spanish.dart';
import '../widgets/menu_tile_hub_widget_spanish.dart';
import '../widgets/menu_tile_parent_widget_spanish.dart';
import '../widgets/menu_tile_settings_widget_spanish.dart';
import '../widgets/menu_tile_widget_spanish.dart';
import 'package:flutter_portal/flutter_portal.dart';
import '../widgets/module_panels.dart';
import '../widgets/recovery_carousel_widget_spanish.dart';
import 'package:pendo_sdk/pendo_sdk.dart';

class HealingAtHomePageSpanish extends StatefulWidget {
  const HealingAtHomePageSpanish({Key? key}) : super(key: key);

  @override
  State<HealingAtHomePageSpanish> createState() =>
      _HealingAtHomePageSpanishState();
}

class _HealingAtHomePageSpanishState extends State<HealingAtHomePageSpanish>
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
      backgroundColor: HexColor("#ded3e8"),
      appBar: PreferredSize(
          preferredSize: Size(double.infinity, _size.height * appBarSize),
          child: AppBarWidgetSpanish(
            title: "recuperación en casa",
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
                        position: "7", title: "recuperación en casa"),
                  ]),
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
      body: Portal(
        child: SingleChildScrollView(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Padding(
              padding: EdgeInsets.only(
                  left: 0.085 * screenWidth, top: 0.0587 * screenWidth),
              child: Stack(alignment: Alignment.topLeft, children: [
                Text(
                    "Vas a ir mejorando poco a poco. \n¿Quieres saber cómo \nmejorar más rápido?",
                    style: TextStyle(
                        letterSpacing: 0,
                        height: 1.2,
                        fontFamily: "proxima",
                        fontSize: 0.05 * screenWidth,
                        color: HexColor("#214b68"))),
                Padding(
                  padding: EdgeInsets.only(left: 0.53 * screenWidth),
                  child: SizedBox(
                      width: 0.2338 * screenWidth,
                      height: 0.24 * screenWidth,
                      child:
                          SvgPicture.asset('assets/recovery_home/sundae.svg')),
                ),
              ]),
            ),
            const SliderRecoverySpanish(),
            Padding(
              padding: EdgeInsets.only(top: 0.1 * screenWidth),
              child: Container(
                color: HexColor("#468fc3"),
                height: 0.21 * screenWidth,
                width: screenWidth,
                child: Padding(
                  padding: EdgeInsets.only(top: 0.06 * screenWidth),
                  child: Text("¡la amigdalectomía mejora la vida!",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          letterSpacing: 0,
                          height: 1.2,
                          fontFamily: "atrament",
                          fontSize: 0.08 * screenWidth,
                          color: HexColor("#ecf4f9"))),
                ),
              ),
            ),
            Stack(alignment: Alignment.bottomCenter, children: [
              Container(
                  color: HexColor("#d1c2df"),
                  height: 0.5 * screenWidth,
                  width: screenWidth),
              SizedBox(
                  width: 0.791 * screenWidth,
                  height: 0.4297 * screenWidth,
                  child:
                      SvgPicture.asset('assets/recovery_home/kids_waving.svg')),
            ]),
            SizedBox(
              height: 0.21 * screenWidth,
              width: screenWidth,
              child: Row(children: [
                Padding(
                  padding: EdgeInsets.only(
                      left: 0.0587 * screenWidth, right: 0.0587 * screenWidth),
                  child: Stack(alignment: Alignment.center, children: [
                    numberCircle(),
                    Text("1",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            letterSpacing: 0,
                            height: 1.2,
                            fontFamily: "atrament",
                            fontSize: 0.064 * screenWidth,
                            color: HexColor("#ecf4f9"))),
                  ]),
                ),
                RichText(
                  textAlign: TextAlign.left,
                  text: TextSpan(
                      text: "Hace más fácil respirar y tragar. ",
                      style: TextStyle(
                          letterSpacing: 0,
                          height: 1.2,
                          fontFamily: "proxima",
                          fontSize: 0.05 * screenWidth,
                          color: HexColor("#214b68")),
                      children: const <TextSpan>[
                        TextSpan(
                            text: "\nDuermes mejor",
                            style: TextStyle(
                                letterSpacing: 0,
                                height: 1.2,
                                fontWeight: FontWeight.bold)),
                        TextSpan(text: " y "),
                        TextSpan(
                            text: "roncas menos",
                            style: TextStyle(
                                letterSpacing: 0,
                                height: 1.2,
                                fontWeight: FontWeight.bold)),
                        TextSpan(text: ".")
                      ]),
                ),
              ]),
            ),
            Container(
              color: HexColor("#d1c2df"),
              height: 0.21 * screenWidth,
              width: screenWidth,
              child: Row(children: [
                Padding(
                  padding: EdgeInsets.only(
                      left: 0.0587 * screenWidth, right: 0.0587 * screenWidth),
                  child: Stack(alignment: Alignment.center, children: [
                    numberCircle(),
                    Text("2",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            letterSpacing: 0,
                            height: 1.2,
                            fontFamily: "atrament",
                            fontSize: 0.064 * screenWidth,
                            color: HexColor("#ecf4f9"))),
                  ]),
                ),
                RichText(
                  textAlign: TextAlign.left,
                  text: TextSpan(
                      text: "Te ",
                      style: TextStyle(
                          letterSpacing: 0,
                          height: 1.2,
                          fontFamily: "proxima",
                          fontSize: 0.05 * screenWidth,
                          color: HexColor("#214b68")),
                      children: const <TextSpan>[
                        TextSpan(
                            text: "enfermarás menos",
                            style: TextStyle(
                                letterSpacing: 0,
                                height: 1.2,
                                fontWeight: FontWeight.bold)),
                        TextSpan(
                            text:
                                ". Es posible que \nno te vuelva a dar faringitis, ¡nunca!"),
                      ]),
                ),
              ]),
            ),
            SizedBox(
              height: 0.2587 * screenWidth,
              width: screenWidth,
              child: Row(children: [
                Padding(
                  padding: EdgeInsets.only(
                      left: 0.0587 * screenWidth, right: 0.0587 * screenWidth),
                  child: Stack(alignment: Alignment.center, children: [
                    numberCircle(),
                    Text("3",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            letterSpacing: 0,
                            height: 1.2,
                            fontFamily: "atrament",
                            fontSize: 0.064 * screenWidth,
                            color: HexColor("#ecf4f9"))),
                  ]),
                ),
                Text(
                    "Te puede ayudar si tienes asma, \ncansancio, dolor de oído o si tienes \naccidentes en la cama.",
                    style: TextStyle(
                        letterSpacing: 0,
                        height: 1.2,
                        fontFamily: "proxima",
                        fontSize: 0.05 * screenWidth,
                        color: HexColor("#214b68"))),
              ]),
            ),
            Stack(alignment: Alignment.center, children: [
              Container(
                  color: HexColor("#d1c2df"),
                  height: 0.268 * screenWidth,
                  width: screenWidth),
              EndOverlay(
                callback: () => submitSeconds("Finished"),
              ),
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
    PendoFlutterPlugin.track(
        'Healing_at_home', {'time_on_page': secondsSpent, 'status': state});
  }
}

/// Create end page popup.
class EndOverlay extends StatefulWidget {
  final Function()? callback;
  const EndOverlay({Key? key, this.callback}) : super(key: key);

  @override
  _EndOverlayState createState() => _EndOverlayState();
}

bool isEndOverlayOpen = false;

class _EndOverlayState extends State<EndOverlay> {
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      PortalTarget(
        visible: isEndOverlayOpen,
        portalFollower: Align(
          alignment: Alignment.center,
          child: SingleChildScrollView(
            child: Stack(alignment: Alignment.topCenter, children: [
              Container(
                  height: screenHeight,
                  width: screenWidth,
                  color: HexColor('#468fc3').withOpacity(0.5)),
              Padding(
                padding: EdgeInsets.only(top: 0.0587 * screenWidth),
                child: Stack(alignment: Alignment.bottomCenter, children: [
                  Container(
                    height: 1.5064 * screenWidth,
                    width: 0.8827 * screenWidth,
                    color: HexColor('#fcf8c7'),
                    child: Align(
                      alignment: Alignment.center,
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding:
                                  EdgeInsets.only(bottom: 0.0587 * screenWidth),
                              child: SizedBox(
                                  width: 0.612 * screenWidth,
                                  height: 0.16 * screenWidth,
                                  child: const RiveAnimation.asset(
                                      'assets/recovery_home/stars.riv')),
                            ),
                            Text("¡BIEN HECHO!",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    letterSpacing: 0,
                                    height: 1.2,
                                    fontFamily: "atrament",
                                    fontSize: 0.16 * screenWidth,
                                    color: HexColor("#468fc3"))),
                            Padding(
                              padding: EdgeInsets.only(
                                  top: 0.02 * screenWidth,
                                  bottom: 0.0587 * screenWidth),
                              child: Text(
                                  "¡Lo lograste! Si quieres repasar algo, \npuedes ir a la Base.",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      letterSpacing: 0,
                                      height: 1.2,
                                      fontFamily: "proxima",
                                      fontSize: 0.05 * screenWidth,
                                      color: HexColor("#214b68"))),
                            ),
                            GestureDetector(
                                child: Stack(
                                    alignment: Alignment.center,
                                    children: [
                                      Container(
                                        width: 0.1333 * screenWidth,
                                        height: 0.1333 * screenWidth,
                                        decoration: BoxDecoration(
                                            color: HexColor("#468fc3"),
                                            shape: BoxShape.circle),
                                      ),
                                      SizedBox(
                                          width: 0.08 * screenWidth,
                                          height: 0.08 * screenWidth,
                                          child: SvgPicture.asset(
                                              'assets/hub/menu_hub.svg')),
                                    ]),
                                onTap: () {
                                  if (widget.callback != null) {
                                    widget.callback!();
                                  }
                                  PendoFlutterPlugin.track(
                                      'Healing_at_home_Go_to_hub', {});
                                  Navigator.pushNamed(
                                      context, '/hub_older_spanish');
                                }),
                            Padding(
                              padding: EdgeInsets.only(
                                  top: 0.0587 * screenWidth,
                                  bottom: 0.0587 * screenWidth),
                              child: Text(
                                  "Diles a tus padres que lean \nla hoja de consejos.",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      letterSpacing: 0,
                                      height: 1.2,
                                      fontFamily: "proxima",
                                      fontSize: 0.05 * screenWidth,
                                      color: HexColor("#214b68"))),
                            ),
                            GestureDetector(
                                child: Stack(
                                    alignment: Alignment.center,
                                    children: [
                                      Container(
                                        width: 0.1333 * screenWidth,
                                        height: 0.1333 * screenWidth,
                                        decoration: BoxDecoration(
                                            color: HexColor("#468fc3"),
                                            shape: BoxShape.circle),
                                      ),
                                      SizedBox(
                                          width: 0.05 * screenWidth,
                                          height: 0.0821 * screenWidth,
                                          child: SvgPicture.asset(
                                              'assets/hub/menu_parents.svg')),
                                    ]),
                                onTap: () {
                                  if (widget.callback != null) {
                                    widget.callback!();
                                  }
                                  PendoFlutterPlugin.track(
                                      'Healing_at_home_Go_to_parents', {});
                                  Navigator.pushNamed(
                                      context, '/parent_tips_spanish');
                                }),
                            SizedBox(height: 0.12 * screenWidth),
                          ]),
                    ),
                  ),
                  GestureDetector(
                      child: closeEndOverlay(),
                      onTap: () {
                        PendoFlutterPlugin.track(
                            'Healing_at_home_Finished', {});
                        setState(() {
                          isEndOverlayOpen = false;
                        });
                      }),
                ]),
              ),
            ]),
          ),
        ),
        child: GestureDetector(
          child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4)),
                  backgroundColor: HexColor("#468fc3"),
                  padding: EdgeInsets.symmetric(
                      horizontal: 0.1067 * screenWidth,
                      vertical: 0.012 * screenWidth),
                  textStyle: TextStyle(
                      letterSpacing: 0,
                      height: 1.2,
                      fontFamily: "atrament",
                      fontSize: 0.0747 * screenWidth,
                      color: HexColor("#ecf4f9"))),
              child: Padding(
                  padding: EdgeInsets.only(top: 0.016 * screenWidth),
                  child: Text("TERMINAMOS",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          letterSpacing: 0,
                          height: 1.2,
                          fontFamily: "atrament",
                          color: HexColor("#ecf4f9")))),
              onPressed: () {
                setState(() {
                  isEndOverlayOpen = true;
                });
              }),
        ),
      ),
    ]);
  }
}

Widget closeEndOverlay() {
  return Container(
    color: HexColor("#bdd7ea"),
    width: 0.8827 * screenWidth,
    height: 0.12 * screenWidth,
    child: Icon(CupertinoIcons.clear,
        size: 0.0853 * screenWidth, color: HexColor("#3474a2")),
  );
}
