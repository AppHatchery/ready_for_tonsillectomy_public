import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import '../main.dart';

Widget hypertrophySymptomsButtonSpanish() {
  return Padding(
    padding: EdgeInsets.only(
        left: 0.0587 * screenWidth, bottom: 0.0587 * screenWidth),
    child: Stack(alignment: Alignment.center, children: [
      Container(
        width: 0.42 * screenWidth,
        height: 0.42 * screenWidth,
        decoration: BoxDecoration(
            color: HexColor("#d9eee8"),
            borderRadius:
                BorderRadius.all(Radius.circular(0.01 * screenWidth))),
      ),
      RichText(
        textAlign: TextAlign.center,
        text: TextSpan(
            text: "¿Tu respiración es ",
            style: TextStyle(
                letterSpacing: 0,
                height: 1.2,
                fontFamily: "proxima",
                fontSize: 0.05 * screenWidth,
                color: HexColor("#214b68")),
            children: const <TextSpan>[
              TextSpan(
                  text: "\nruidosa",
                  style: TextStyle(
                      letterSpacing: 0,
                      height: 1.2,
                      fontWeight: FontWeight.bold)),
              TextSpan(text: "?	¿"),
              TextSpan(
                  text: "Roncas",
                  style: TextStyle(
                      letterSpacing: 0,
                      height: 1.2,
                      fontWeight: FontWeight.bold)),
              TextSpan(
                  text:
                      " \no agarras mucho \naire al respirar \ncuando estás \ndurmiendo?"),
            ]),
      ),
    ]),
  );
}

Widget tonsillitisSymptomsButtonSpanish() {
  return Padding(
    padding: EdgeInsets.only(
        right: 0.0587 * screenWidth, bottom: 0.0587 * screenWidth),
    child: Stack(alignment: Alignment.center, children: [
      Container(
        width: 0.42 * screenWidth,
        height: 0.42 * screenWidth,
        decoration: BoxDecoration(
            color: HexColor("#d9eee8"),
            borderRadius:
                BorderRadius.all(Radius.circular(0.01 * screenWidth))),
      ),
      RichText(
        textAlign: TextAlign.center,
        text: TextSpan(
            text: "¿Te dan ",
            style: TextStyle(
                letterSpacing: 0,
                height: 1.2,
                fontFamily: "proxima",
                fontSize: 0.05 * screenWidth,
                color: HexColor("#214b68")),
            children: const <TextSpan>[
              TextSpan(
                  text: "dolores \nde garganta",
                  style: TextStyle(
                      letterSpacing: 0,
                      height: 1.2,
                      fontWeight: FontWeight.bold)),
              TextSpan(text: " con \nfrecuencia? \n¿Muchas "),
              TextSpan(
                  text: "fiebres",
                  style: TextStyle(
                      letterSpacing: 0,
                      height: 1.2,
                      fontWeight: FontWeight.bold)),
              TextSpan(text: " \ny "),
              TextSpan(
                  text: "mal aliento",
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
