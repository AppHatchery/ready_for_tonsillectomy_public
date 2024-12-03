import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:rive/rive.dart';
import 'dart:async';
import '../main.dart';

/// Create playable "hello tonsils" animation.
class HelloTonsilsAnimation extends StatefulWidget {
  const HelloTonsilsAnimation({Key? key}) : super(key: key);

  @override
  _HelloTonsilsAnimationState createState() => _HelloTonsilsAnimationState();
}

class _HelloTonsilsAnimationState extends State<HelloTonsilsAnimation> {
  late RiveAnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = OneShotAnimation('Animation 1', autoplay: false);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _controller.isActive = true,
      child: SizedBox(
        width: screenWidth,
        height: 1.0267 * screenWidth,
        child: RiveAnimation.asset(
            'assets/what_are_tonsils/hello_tonsils_spanish.riv',
            controllers: [_controller]),
      ),
    );
  }
}

/// Create repeating timed text transition.
class HelloTonsilsTextSpanish extends StatefulWidget {
  const HelloTonsilsTextSpanish({Key? key}) : super(key: key);

  @override
  _HelloTonsilsTextSpanishState createState() =>
      _HelloTonsilsTextSpanishState();
}

class _HelloTonsilsTextSpanishState extends State<HelloTonsilsTextSpanish> {
  late final Timer timer;
  int count = 0;

  @override
  void initState() {
    super.initState();
    timer = Timer.periodic(
        const Duration(seconds: 7),
        (_) => setState(() {
              showText = !showText;
            }));
  }

  @override
  void dispose() {
    super.dispose();
    timer.cancel();
  }

  bool showText = true;

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        height: screenWidth,
        decoration: BoxDecoration(color: HexColor("#deb18a")),
      ),
      Align(
        alignment: Alignment.topCenter,
        child: AnimatedSwitcher(
          duration: const Duration(milliseconds: 500),
          child: showText
              ? Padding(
                  padding: EdgeInsets.only(top: 0.0427 * screenWidth),
                  child: Column(children: [
                    Text("¿dónde están mis amígdalas?",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            letterSpacing: 0,
                            height: 1.2,
                            fontFamily: "atrament",
                            fontSize: 0.0853 * screenWidth,
                            color: HexColor("#214b68"))),
                    RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                          text: "¡",
                          style: TextStyle(
                              letterSpacing: 0,
                              height: 1.2,
                              fontFamily: "proxima",
                              fontSize: 0.05 * screenWidth,
                              color: HexColor("#214b68")),
                          children: const <TextSpan>[
                            TextSpan(
                                text: "Toca",
                                style: TextStyle(
                                    letterSpacing: 0,
                                    height: 1.2,
                                    fontWeight: FontWeight.bold)),
                            TextSpan(text: " la lengua para que veas!")
                          ]),
                    ),
                  ]),
                )
              : Padding(
                  padding: EdgeInsets.only(top: 0.032 * screenWidth),
                  child: Text(
                      "Tus amígdalas están en la parte de atrás de la \ngarganta, detrás de la lengua. Tienes dos \namígdalas, una a cada lado.",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          letterSpacing: 0,
                          height: 1.2,
                          fontFamily: "proxima",
                          fontSize: 0.05 * screenWidth,
                          color: HexColor("#214b68"))),
                ),
        ),
      ),
    ]);
  }
}
