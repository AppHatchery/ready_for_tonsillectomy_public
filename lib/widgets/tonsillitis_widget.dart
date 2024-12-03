import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../main.dart';

/// Create tonsillitis slider.
Widget tonsillitisFront() {
  return Stack(alignment: Alignment.topCenter, children: [
    Stack(alignment: Alignment.bottomCenter, children: [
      Container(height: screenWidth, color: HexColor("#3474a2")),
      SizedBox(
          width: 0.4 * screenWidth,
          height: 0.6667 * screenWidth,
          child: SvgPicture.asset('assets/why_surgery/girl_tonsillitis.svg')),
    ]),
    Padding(
      padding: EdgeInsets.only(top: 0.0853 * screenWidth),
      child: Column(children: [
        Text("are my tonsils making me sick?",
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

Widget tonsillitisText() {
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
              text: "When your tonsils get sick, it’s called ",
              style: TextStyle(
                  letterSpacing: 0,
                  height: 1.2,
                  fontFamily: "proxima",
                  fontSize: 0.0533 * screenWidth,
                  color: HexColor("#214b68")),
              children: const <TextSpan>[
                TextSpan(
                    text: "\ntonsillitis",
                    style: TextStyle(
                        letterSpacing: 0,
                        height: 1.2,
                        fontWeight: FontWeight.bold)),
                TextSpan(
                    text:
                        ". If that keeps coming back or \nwon’t go away, your tonsils stop working to \nkeep you healthy. Sick tonsils make you sick!"),
              ]),
        ),
      ),
    ),
  );
}

class TonsillitisSlider extends StatefulWidget {
  const TonsillitisSlider({Key? key}) : super(key: key);

  @override
  State<TonsillitisSlider> createState() => _TonsillitisSliderState();
}

class _TonsillitisSliderState extends State<TonsillitisSlider> {
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
                  child: tonsillitisText()),
            ]),
          ),
        ),
        GestureDetector(
          child: tonsillitisFront(),
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
