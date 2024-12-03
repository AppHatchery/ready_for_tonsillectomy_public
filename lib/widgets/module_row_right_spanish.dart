import 'package:flutter/cupertino.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:ready_for_tonsillectomy/widgets/module_icon_anime_right.dart';
import '../widgets/module_panels.dart';

class ModuleRowRightSpanish extends StatelessWidget {
  final int index;
  final String name;
  final String icon;

  const ModuleRowRightSpanish({
    Key? key,
    required this.index,
    required this.name,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.only(
          right: 0.0667 * screenWidth, bottom: 0.1333 * screenWidth),
      child: Row(mainAxisSize: MainAxisSize.min, children: [
        Padding(
          padding: EdgeInsets.only(right: 0.0533 * screenWidth),
          child: Stack(alignment: Alignment.center, children: [
            numberCircle(),
            Padding(
              padding: EdgeInsets.only(top: 0.008 * screenWidth),
              child: Text(index.toString(),
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      letterSpacing: 0,
                      height: 1.2,
                      fontFamily: "atrament",
                      fontSize: 0.064 * screenWidth,
                      color: HexColor("#ecf4f9"))),
            ),
          ]),
        ),
        Stack(alignment: Alignment.topRight, children: [
          ModuleIconAnimeRight(imageUrl: icon),
          Stack(alignment: Alignment.center, children: [
            panelRight(),
            Text(name,
                textAlign: TextAlign.center,
                style: TextStyle(
                    letterSpacing: 0,
                    height: 1.2,
                    fontFamily: "atrament",
                    fontSize: 0.07 * screenWidth,
                    color: HexColor("#ecf4f9"))),
          ]),
        ]),
      ]),
    );
  }
}
