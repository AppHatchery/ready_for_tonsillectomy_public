import 'package:flutter/cupertino.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:rive/rive.dart';

class HubIntroWidget extends StatelessWidget {
  const HubIntroWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Stack(clipBehavior: Clip.none, children: [
      Align(
        alignment: Alignment.topLeft,
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Container(
            padding: EdgeInsets.only(
                left: 0.06 * screenWidth, top: 0.0427 * screenWidth),
            width: 0.5467 * screenWidth,
            child: Text("welcome to the hub!",
                textAlign: TextAlign.center,
                style: TextStyle(
                    letterSpacing: 0,
                    height: 1.2,
                    fontFamily: "atrament",
                    fontSize: 0.12 * screenWidth,
                    color: HexColor("#468fc3"))),
          ),
          Container(
            padding: EdgeInsets.only(
                left: 0.06 * screenWidth, top: 0.015 * screenWidth),
            width: 0.5467 * screenWidth,
            child: Text(
                "The hub has answers \nto all your questions about surgery.",
                textAlign: TextAlign.center,
                style: TextStyle(
                    letterSpacing: 0,
                    height: 1.2,
                    fontFamily: "proxima",
                    fontSize: 0.0533 * screenWidth,
                    color: HexColor("#214b68"))),
          ),
          Container(
            padding: EdgeInsets.only(
                left: 0.06 * screenWidth, top: 0.03 * screenWidth),
            width: 0.5467 * screenWidth,
            child: Text("Tap the first square \nto dive in!",
                textAlign: TextAlign.center,
                style: TextStyle(
                    letterSpacing: 0,
                    height: 1.2,
                    fontFamily: "proxima",
                    fontSize: 0.0533 * screenWidth,
                    color: HexColor("#214b68"))),
          ),
          Padding(
            padding: EdgeInsets.only(
                left: 0.06 * screenWidth, top: 0.225 * screenWidth),
            child: Icon(CupertinoIcons.arrow_down,
                size: 0.125 * screenWidth, color: HexColor("#ecf4f9")),
          ),
        ]),
      ),
      Padding(
        padding: EdgeInsets.only(top: 0.2 * screenWidth),
        child: SizedBox(
            width: screenWidth,
            height: 0.88 * screenWidth,
            child: const RiveAnimation.asset('assets/hub/doctor_tablet.riv')),
      ),
    ]);
  }
}
