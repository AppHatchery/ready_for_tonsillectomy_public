import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../main.dart';

/// Create apnea slider.
Widget apneaFront() {
  return Stack(alignment: Alignment.topCenter, children: [
    Stack(alignment: Alignment.bottomRight, children: [
      Container(height: screenWidth, color: HexColor("#3474a2")),
      SizedBox(
          width: screenWidth,
          height: 0.656 * screenWidth,
          child: SvgPicture.asset('assets/why_surgery/boy_snore.svg'))
    ]),
    Padding(
      padding: EdgeInsets.only(top: 0.0853 * screenWidth),
      child: Column(children: [
        Text("are my tonsils making me snore?",
            textAlign: TextAlign.center,
            style: TextStyle(
                letterSpacing: 0,
                height: 1.2,
                fontFamily: "atrament",
                fontSize: 0.0853 * screenWidth,
                color: HexColor("#ecf4f9"))),
        RichText(
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
                    text: "Tap",
                    style: TextStyle(
                        letterSpacing: 0,
                        height: 1.2,
                        fontWeight: FontWeight.bold)),
                TextSpan(text: " to learn more!")
              ]),
        ),
      ]),
    ),
  ]);
}

Widget apneaText() {
  return Container(
    width: screenWidth,
    color: HexColor("#ecf4f9"),
    child: Align(
      alignment: Alignment.center,
      child: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: 0, vertical: 0.0533 * screenWidth),
        child: RichText(
          text: TextSpan(
              text:
                  "Big tonsils block air from moving easily \nthrough your throat. That makes it hard \nto breathe while you’re asleep. You might \nhave a problem called ",
              style: TextStyle(
                  letterSpacing: 0,
                  height: 1.2,
                  fontFamily: "proxima",
                  fontSize: 0.0533 * screenWidth,
                  color: HexColor("#214b68")),
              children: const <TextSpan>[
                TextSpan(
                    text: "sleep apnea",
                    style: TextStyle(
                        letterSpacing: 0,
                        height: 1.2,
                        fontWeight: FontWeight.bold)),
                TextSpan(text: "."),
              ]),
        ),
      ),
    ),
  );
}

class ApneaSlider extends StatefulWidget {
  const ApneaSlider({Key? key}) : super(key: key);

  @override
  State<ApneaSlider> createState() => _ApneaSliderState();
}

class _ApneaSliderState extends State<ApneaSlider> {
  bool _first = true;
  double _top = 0;

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
      Stack(children: [
        Padding(
          padding: EdgeInsets.only(top: 0.637 * screenWidth),
          child: SizedBox(
            height: 0.6933 * screenWidth,
            child: Stack(children: <Widget>[
              AnimatedPositioned(
                  duration: const Duration(milliseconds: 200),
                  curve: Curves.easeOut,
                  top: _top,
                  child: apneaText()),
            ]),
          ),
        ),
        GestureDetector(
          child: apneaFront(),
          onTap: () {
            setState(() {
              _top = _first ? 0.3467 * screenWidth : 0;
              _first = !_first;
            });
          },
        ),
      ]),
    ]);
  }
}
