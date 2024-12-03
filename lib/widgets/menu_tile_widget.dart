import 'package:flutter/cupertino.dart';
import 'package:hexcolor/hexcolor.dart';
import '../main.dart';

class MenuTileWidget extends StatefulWidget {
  final String position;
  final String title;
  const MenuTileWidget({Key? key, required this.position, required this.title})
      : super(key: key);

  @override
  State<MenuTileWidget> createState() => _MenuTileWidgetState();
}

class _MenuTileWidgetState extends State<MenuTileWidget> {
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
            Padding(
              padding: EdgeInsets.only(top: 0.003 * screenHeight),
              child: Text(widget.position,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      letterSpacing: 0,
                      height: 1.2,
                      fontFamily: "atrament",
                      fontSize: 0.027 * screenHeight,
                      color: HexColor("#ecf4f9"))),
            ),
          ]),
          Padding(
            padding: EdgeInsets.only(
                left: 0.015 * screenHeight, bottom: 0.0045 * screenHeight),
            child: Text(widget.title,
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
}

Widget menuCircle() {
  return Container(
    width: 0.045 * screenHeight,
    height: 0.045 * screenHeight,
    decoration:
        BoxDecoration(color: HexColor("#468fc3"), shape: BoxShape.circle),
  );
}
