import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import '../main.dart';

Widget settingsIcon() {
  return Align(
    alignment: Alignment.topLeft,
    child: Padding(
      padding: EdgeInsets.only(
          left: 0.05 * screenWidth,
          top: 0.015 * screenHeight,
          bottom: 0.015 * screenHeight),
      child: Row(mainAxisSize: MainAxisSize.min, children: [
        Stack(alignment: Alignment.center, children: [
          menuCircle(),
          Center(
              child: Icon(Icons.settings,
                  size: 0.027 * screenHeight, color: HexColor("#ecf4f9"))),
        ]),
        Padding(
          padding: EdgeInsets.only(
              left: 0.015 * screenHeight, bottom: 0.0045 * screenHeight),
          child: Text("settings",
              style: TextStyle(
                  letterSpacing: 0,
                  height: 1.2,
                  fontFamily: "proxima",
                  fontWeight: FontWeight.bold,
                  fontSize: 0.036 * screenHeight,
                  color: HexColor("#468fc3"))),
        ),
      ]),
    ),
  );
}

Widget menuCircle() {
  return Container(
    width: 0.045 * screenHeight,
    height: 0.045 * screenHeight,
    decoration:
        BoxDecoration(color: HexColor("#468fc3"), shape: BoxShape.circle),
  );
}
