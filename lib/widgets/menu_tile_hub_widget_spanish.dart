import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hexcolor/hexcolor.dart';

import '../main.dart';

class MenuTileHubWidgetSpanish extends StatelessWidget {
  const MenuTileHubWidgetSpanish({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
            SizedBox(
                width: 0.027 * screenHeight,
                height: 0.027 * screenHeight,
                child: SvgPicture.asset('assets/hub/menu_hub.svg')),
          ]),
          Padding(
            padding: EdgeInsets.only(
                left: 0.015 * screenHeight, bottom: 0.0045 * screenHeight),
            child: Text("la base",
                style: TextStyle(
                    letterSpacing: 0,
                    height: 1.2,
                    fontFamily: "proxima",
                    fontWeight: FontWeight.bold,
                    fontSize: 0.028 * screenHeight,
                    color: HexColor("#468fc3"))),
          ),
        ]),
      ),
    );
  }
}

Widget menuCircle() {
  return Container(
    width: 0.045 * screenHeight,
    height: 0.045 * screenHeight,
    decoration:
        BoxDecoration(color: HexColor("#468fc3"), shape: BoxShape.circle),
  );
}
