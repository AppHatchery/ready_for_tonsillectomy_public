import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'dart:async';
import '../main.dart';

/// Create repeating timed text transition.
class DoctorSpeechSpanish extends StatefulWidget {
  const DoctorSpeechSpanish({Key? key}) : super(key: key);

  @override
  _DoctorSpeechSpanishState createState() => _DoctorSpeechSpanishState();
}

class _DoctorSpeechSpanishState extends State<DoctorSpeechSpanish> {
  late final Timer timer;
  int count = 0;

  @override
  void initState() {
    super.initState();
    timer = Timer.periodic(
        const Duration(seconds: 12),
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
    return Column(children: [
      Stack(alignment: Alignment.center, children: [
        Padding(
          padding: EdgeInsets.only(
              left: 0.0667 * screenWidth, right: 0.0667 * screenWidth),
          child: Container(
            height: 0.333 * screenWidth,
            decoration: BoxDecoration(
                color: HexColor("#d9eee8"),
                borderRadius:
                    BorderRadius.all(Radius.circular(0.0333 * screenWidth))),
          ),
        ),
        AnimatedSwitcher(
          duration: const Duration(milliseconds: 500),
          child: showText
              ? Text(
                  "¡Hola! Yo soy un doctor que trata oídos, \nnariz y garganta (otorrino). Todos los días \natiendo niños como tú. ¡Vamos a \narreglar tus amígdalas!",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      letterSpacing: 0,
                      height: 1.2,
                      fontFamily: "proxima",
                      fontSize: 0.05 * screenWidth,
                      color: HexColor("#214b68")))
              : Text(
                  "¡La cirugía de amígdalas se les hace \na miles de niños todos los años!",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      letterSpacing: 0,
                      height: 1.2,
                      fontFamily: "proxima",
                      fontSize: 0.05 * screenWidth,
                      color: HexColor("#214b68"))),
        ),
      ]),
      Align(
        alignment: Alignment.topLeft,
        child: Padding(
            padding: EdgeInsets.only(left: 0.2187 * screenWidth),
            child: SizedBox(
                width: 0.0933 * screenWidth,
                height: 0.1676 * screenWidth,
                child: SvgPicture.asset(
                    'assets/why_surgery/speech_bubble_base.svg'))),
      ),
    ]);
  }
}
