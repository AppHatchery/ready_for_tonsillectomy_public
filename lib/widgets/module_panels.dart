import 'package:flutter/cupertino.dart';
import 'package:hexcolor/hexcolor.dart';
import '../main.dart';

/// Create module panels.
Widget panelRight() {
  return Container(
    width: 0.3333 * screenWidth,
    height: 0.6667 * screenWidth,
    decoration: BoxDecoration(
      color: HexColor("#468fc3"),
      borderRadius: BorderRadius.only(
          topRight: Radius.circular(0.0333 * screenWidth),
          bottomRight: Radius.circular(0.0333 * screenWidth)),
    ),
  );
}

Widget panelLeft() {
  return Container(
    width: 0.3333 * screenWidth,
    height: 0.6667 * screenWidth,
    decoration: BoxDecoration(
      color: HexColor("#468fc3"),
      borderRadius: BorderRadius.only(
          topLeft: Radius.circular(0.0333 * screenWidth),
          bottomLeft: Radius.circular(0.0333 * screenWidth)),
    ),
  );
}

/// Create number circle widget.
Widget numberCircle() {
  return Container(
    width: 0.1067 * screenWidth,
    height: 0.1067 * screenWidth,
    decoration:
    BoxDecoration(color: HexColor("#468fc3"), shape: BoxShape.circle),
  );
}