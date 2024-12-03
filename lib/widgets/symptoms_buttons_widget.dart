import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import '../main.dart';

Widget hypertrophySymptomsButton() {
  return Padding(
    padding: EdgeInsets.only(
        left: 0.0587 * screenWidth, bottom: 0.0587 * screenWidth),
    child: Stack(alignment: Alignment.center, children: [
      Container(
        width: 0.42 * screenWidth,
        height: 0.4 * screenWidth,
        decoration: BoxDecoration(
            color: HexColor("#d9eee8"),
            borderRadius:
                BorderRadius.all(Radius.circular(0.01 * screenWidth))),
      ),
      RichText(
        textAlign: TextAlign.center,
        text: TextSpan(
            text: "Is your breathing ",
            style: TextStyle(
                letterSpacing: 0,
                height: 1.2,
                fontFamily: "proxima",
                fontSize: 0.0533 * screenWidth,
                color: HexColor("#214b68")),
            children: const <TextSpan>[
              TextSpan(
                  text: "\nnoisy",
                  style: TextStyle(
                      letterSpacing: 0,
                      height: 1.2,
                      fontWeight: FontWeight.bold)),
              TextSpan(text: "? Do you "),
              TextSpan(
                  text: "\nsnore",
                  style: TextStyle(
                      letterSpacing: 0,
                      height: 1.2,
                      fontWeight: FontWeight.bold)),
              TextSpan(text: " or take \nbig breaths \nin your sleep?"),
            ]),
      ),
    ]),
  );
}

Widget tonsillitisSymptomsButton() {
  return Padding(
    padding: EdgeInsets.only(
        right: 0.0587 * screenWidth, bottom: 0.0587 * screenWidth),
    child: Stack(alignment: Alignment.center, children: [
      Container(
        width: 0.42 * screenWidth,
        height: 0.4 * screenWidth,
        decoration: BoxDecoration(
            color: HexColor("#d9eee8"),
            borderRadius:
                BorderRadius.all(Radius.circular(0.01 * screenWidth))),
      ),
      RichText(
        textAlign: TextAlign.center,
        text: TextSpan(
            text: "Do you keep \ngetting a ",
            style: TextStyle(
                letterSpacing: 0,
                height: 1.2,
                fontFamily: "proxima",
                fontSize: 0.0533 * screenWidth,
                color: HexColor("#214b68")),
            children: const <TextSpan>[
              TextSpan(
                  text: "sore \nthroat",
                  style: TextStyle(
                      letterSpacing: 0,
                      height: 1.2,
                      fontWeight: FontWeight.bold)),
              TextSpan(text: "? Lots \nof "),
              TextSpan(
                  text: "fevers",
                  style: TextStyle(
                      letterSpacing: 0,
                      height: 1.2,
                      fontWeight: FontWeight.bold)),
              TextSpan(text: " and "),
              TextSpan(
                  text: "\nyucky breath",
                  style: TextStyle(
                      letterSpacing: 0,
                      height: 1.2,
                      fontWeight: FontWeight.bold)),
              TextSpan(text: "?"),
            ]),
      ),
    ]),
  );
}
