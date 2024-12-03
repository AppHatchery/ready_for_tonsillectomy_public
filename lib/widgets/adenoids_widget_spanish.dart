import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../main.dart';

/// Create adenoids interaction.
Widget adenoidFrontSpanish() {
  return Stack(alignment: Alignment.topRight, children: [
    Container(color: HexColor("#ecf4f9"), height: 1.04 * screenWidth),
    Column(children: [
      Align(
          alignment: Alignment.topRight,
          child: SizedBox(
              width: 0.7275 * screenWidth,
              height: 0.8107 * screenWidth,
              child: SvgPicture.asset(
                  'assets/what_are_tonsils/adenoids_spanish.svg'))),
      Align(
        alignment: Alignment.bottomCenter,
        child: Padding(
          padding: EdgeInsets.only(
              top: 0.0267 * screenWidth, bottom: 0.0533 * screenWidth),
          child: Column(children: [
            Text("¿qué más hay por ahí?",
                textAlign: TextAlign.center,
                style: TextStyle(
                    letterSpacing: 0,
                    height: 1.2,
                    fontFamily: "atrament",
                    fontSize: 0.0853 * screenWidth,
                    color: HexColor("#468fc3"))),
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
                        text: "Toca",
                        style: TextStyle(
                            letterSpacing: 0,
                            height: 1.2,
                            fontWeight: FontWeight.bold)),
                    TextSpan(text: " para aprender acerca de ¡las adenoides!")
                  ]),
            ),
          ]),
        ),
      ),
    ]),
  ]);
}

Widget adenoidTextSpanish() {
  return Container(
    width: screenWidth,
    color: HexColor("#ecf4f9"),
    child: Align(
      alignment: Alignment.center,
      child: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: 0.05 * screenWidth, vertical: 0.0533 * screenWidth),
        child: RichText(
          text: TextSpan(
              text: "Las ",
              style: TextStyle(
                  letterSpacing: 0,
                  height: 1.2,
                  fontFamily: "proxima",
                  fontSize: 0.05 * screenWidth,
                  color: HexColor("#214b68")),
              children: const <TextSpan>[
                TextSpan(
                    text: "adenoides",
                    style: TextStyle(
                        letterSpacing: 0,
                        height: 1.2,
                        fontWeight: FontWeight.bold)),
                TextSpan(
                    text:
                        " se parecen mucho a las amígdalas. No las alcanzas a ver porque están en la parte alta de la garganta. Si tienes dificultad cuando duermes, es posible que también haya que extraer las adenoides."),
              ]),
        ),
      ),
    ),
  );
}

class AdenoidSliderSpanish extends StatefulWidget {
  const AdenoidSliderSpanish({Key? key}) : super(key: key);

  @override
  State<AdenoidSliderSpanish> createState() => _AdenoidSliderSpanishState();
}

class _AdenoidSliderSpanishState extends State<AdenoidSliderSpanish> {
  bool _first = true;
  double _top = 0;

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
      Stack(children: [
        Padding(
          padding: EdgeInsets.only(top: 0.637 * screenWidth),
          child: SizedBox(
            height: 0.7433 * screenWidth,
            child: Stack(children: <Widget>[
              AnimatedPositioned(
                  duration: const Duration(milliseconds: 200),
                  curve: Curves.easeOut,
                  top: _top,
                  child: adenoidTextSpanish()),
            ]),
          ),
        ),
        GestureDetector(
          child: adenoidFrontSpanish(),
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
