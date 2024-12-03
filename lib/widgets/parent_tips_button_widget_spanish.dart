import 'package:flutter/cupertino.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../main.dart';

Widget parentTipsButtonSpanish() {
  return Padding(
    padding: EdgeInsets.only(
        left: 0.0667 * screenWidth,
        right: 0.0667 * screenWidth,
        bottom: 0.0667 * screenWidth),
    child: Stack(alignment: Alignment.center, children: [
      Container(
        height: 0.2187 * screenWidth,
        decoration: BoxDecoration(
            color: HexColor("#468fc3"),
            borderRadius:
                BorderRadius.all(Radius.circular(0.0333 * screenWidth))),
      ),
      Row(mainAxisAlignment: MainAxisAlignment.center, children: [
        SizedBox(
            height: 0.1347 * screenWidth,
            width: 0.0875 * screenWidth,
            child: SvgPicture.asset('assets/hub/parent_icon.svg')),
        Padding(
          padding: EdgeInsets.only(
              left: 0.0667 * screenWidth, top: 0.01 * screenWidth),
          child: Text("consejos para los padres",
              textAlign: TextAlign.center,
              style: TextStyle(
                  letterSpacing: 0,
                  height: 1.2,
                  fontFamily: "atrament",
                  fontSize: 0.07 * screenWidth,
                  color: HexColor("#ecf4f9"))),
        ),
      ]),
    ]),
  );
}
