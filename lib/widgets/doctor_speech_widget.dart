import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'dart:async';
import '../main.dart';

/// Create repeating timed text transition.
class DoctorSpeech extends StatefulWidget {
  const DoctorSpeech({Key? key}) : super(key: key);

  @override
  _DoctorSpeechState createState() => _DoctorSpeechState();
}

class _DoctorSpeechState extends State<DoctorSpeech> {
  late final Timer timer;
  int count = 0;

  @override
  void initState() {
    super.initState();
    timer = Timer.periodic(
        const Duration(seconds: 10),
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
            height: 0.2533 * screenWidth,
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
                  "Hi! I’m an ear, nose, and throat (ENT) \ndoctor. I help kids like you every day. \nLet's get ready to fix your tonsils!",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      letterSpacing: 0,
                      height: 1.2,
                      fontFamily: "proxima",
                      fontSize: 0.0533 * screenWidth,
                      color: HexColor("#214b68")))
              : Text(
                  "Hundreds of thousands of kids \nget tonsil surgery each year!",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      letterSpacing: 0,
                      height: 1.2,
                      fontFamily: "proxima",
                      fontSize: 0.0533 * screenWidth,
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
