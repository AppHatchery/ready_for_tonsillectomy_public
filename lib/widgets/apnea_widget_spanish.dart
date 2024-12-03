import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../main.dart';

/// Create apnea slider.
Widget apneaFrontSpanish() {
  return Stack(alignment: Alignment.topCenter, children: [
    Stack(alignment: Alignment.bottomRight, children: [
      Container(height: screenWidth, color: HexColor("#3474a2")),
      SizedBox(
          width: screenWidth,
          height: 0.656 * screenWidth,
          child: SvgPicture.asset('assets/why_surgery/boy_snore_spanish.svg'))
    ]),
    Padding(
      padding: EdgeInsets.only(top: 0.07 * screenWidth),
      child: Column(children: [
        Text("¿las amígdalas son las que \nme hacen roncar?",
            textAlign: TextAlign.center,
            style: TextStyle(
                letterSpacing: 0,
                height: 1.2,
                fontFamily: "atrament",
                fontSize: 0.075 * screenWidth,
                color: HexColor("#ecf4f9"))),
        RichText(
          textAlign: TextAlign.center,
          text: TextSpan(
              text: "Si quieres saber más, ",
              style: TextStyle(
                  letterSpacing: 0,
                  height: 1.2,
                  fontFamily: "proxima",
                  fontSize: 0.05 * screenWidth,
                  color: HexColor("#214b68")),
              children: const <TextSpan>[
                TextSpan(
                    text: "¡Toca!",
                    style: TextStyle(
                        letterSpacing: 0,
                        height: 1.2,
                        fontWeight: FontWeight.bold)),
                TextSpan(text: "")
              ]),
        ),
      ]),
    ),
  ]);
}

Widget apneaTextSpanish() {
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
                  "Cuando las amígdalas están grandes, el aire \nno se mueve libremente en la garganta. Esto \ndificulta la respiración al dormir. Es posible \nque tengas ",
              style: TextStyle(
                  letterSpacing: 0,
                  height: 1.2,
                  fontFamily: "proxima",
                  fontSize: 0.05 * screenWidth,
                  color: HexColor("#214b68")),
              children: const <TextSpan>[
                TextSpan(
                    text: "apnea del sueño",
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

class ApneaSliderSpanish extends StatefulWidget {
  const ApneaSliderSpanish({Key? key}) : super(key: key);

  @override
  State<ApneaSliderSpanish> createState() => _ApneaSliderSpanishState();
}

class _ApneaSliderSpanishState extends State<ApneaSliderSpanish> {
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
                  child: apneaTextSpanish()),
            ]),
          ),
        ),
        GestureDetector(
          child: apneaFrontSpanish(),
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
