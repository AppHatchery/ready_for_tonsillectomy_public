import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../main.dart';

/// Create tonsillitis slider.
Widget tonsillitisFrontSpanish() {
  return Stack(alignment: Alignment.topCenter, children: [
    Stack(alignment: Alignment.bottomCenter, children: [
      Container(height: screenWidth, color: HexColor("#3474a2")),
      SizedBox(
          width: 0.4 * screenWidth,
          height: 0.6667 * screenWidth,
          child: SvgPicture.asset('assets/why_surgery/girl_tonsillitis.svg')),
    ]),
    Padding(
      padding: EdgeInsets.only(top: 0.07 * screenWidth),
      child: Column(children: [
        Text("¿me estoy enfermando \npor culpa de las amígdalas?",
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

Widget tonsillitisTextSpanish() {
  return Container(
    width: screenWidth,
    color: HexColor("#ecf4f9"),
    child: Align(
      alignment: Alignment.center,
      child: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: 0.0533 * screenWidth, vertical: 0.0533 * screenWidth),
        child: RichText(
          text: TextSpan(
              text: "",
              style: TextStyle(
                  letterSpacing: 0,
                  height: 1.2,
                  fontFamily: "proxima",
                  fontSize: 0.05 * screenWidth,
                  color: HexColor("#214b68")),
              children: const <TextSpan>[
                TextSpan(
                    text: "Amigdalitis",
                    style: TextStyle(
                        letterSpacing: 0,
                        height: 1.2,
                        fontWeight: FontWeight.bold)),
                TextSpan(
                    text:
                        " es el nombre de las amígdalas \nenfermas. Si te la pasas enfermo es porque las amígdalas ya no están trabajando. Si las \namígdalas están enfermas, ¡tú te enfermas!"),
              ]),
        ),
      ),
    ),
  );
}

class TonsillitisSliderSpanish extends StatefulWidget {
  const TonsillitisSliderSpanish({Key? key}) : super(key: key);

  @override
  State<TonsillitisSliderSpanish> createState() =>
      _TonsillitisSliderSpanishState();
}

class _TonsillitisSliderSpanishState extends State<TonsillitisSliderSpanish> {
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
                  child: tonsillitisTextSpanish()),
            ]),
          ),
        ),
        GestureDetector(
          child: tonsillitisFrontSpanish(),
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
