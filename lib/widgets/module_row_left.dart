import 'package:flutter/cupertino.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:ready_for_tonsillectomy/widgets/module_icon_anime_left.dart';
import '../widgets/module_panels.dart';

class ModuleRowLeft extends StatelessWidget {
  final int index;
  final String name;
  final String icon;

  const ModuleRowLeft({
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
          left: 0.0667 * screenWidth, bottom: 0.1333 * screenWidth),
      child: Stack(alignment: Alignment.centerLeft, children: [
        Padding(
          padding: EdgeInsets.only(left: 0.72 * screenWidth),
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
        Stack(alignment: Alignment.topLeft, children: [
          ModuleIconAnimeLeft(imageUrl: icon),
          Stack(alignment: Alignment.center, children: [
            panelLeft(),
            Text(name,
                textAlign: TextAlign.center,
                style: TextStyle(
                    letterSpacing: 0,
                    height: 1.2,
                    fontFamily: "atrament",
                    fontSize: 0.096 * screenWidth,
                    color: HexColor("#ecf4f9"))),
          ]),
        ]),
      ]),
    );
  }
}
