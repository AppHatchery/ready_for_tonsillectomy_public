import 'package:flutter/cupertino.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_portal/flutter_portal.dart';
import '../main.dart';
import '../widgets/postop_circles_widget.dart';

Widget postopOverlay1() {
  return Container(
    height: 1.16 * screenWidth,
    width: 0.8827 * screenWidth,
    color: HexColor('#bdd7ea'),
    child: Align(
      alignment: Alignment.bottomCenter,
      child: SizedBox(
          width: 0.8827 * screenWidth,
          height: 0.8693 * screenWidth,
          child: SvgPicture.asset('assets/pacu/girl_resting.svg')),
    ),
  );
}

Widget closePostopOverlay1() {
  return Padding(
    padding:
        EdgeInsets.only(top: 0.0533 * screenWidth, left: 0.0587 * screenWidth),
    child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Icon(CupertinoIcons.clear,
          size: 0.0853 * screenWidth, color: HexColor("#3474a2")),
      Padding(
        padding: EdgeInsets.only(left: 0.0533 * screenWidth),
        child: Text(
            "You might feel sleepy or woozy \nfrom anesthesia. That goes \naway soon.",
            style: TextStyle(
                letterSpacing: 0,
                height: 1.2,
                fontFamily: "proxima",
                fontSize: 0.0533 * screenWidth,
                color: HexColor("#214b68"))),
      ),
    ]),
  );
}

class PostopOverlay1 extends StatefulWidget {
  const PostopOverlay1({Key? key}) : super(key: key);

  @override
  _PostopOverlay1State createState() => _PostopOverlay1State();
}

bool isPostopOverlay1Open = false;

class _PostopOverlay1State extends State<PostopOverlay1> {
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      PortalTarget(
        visible: isPostopOverlay1Open,
        portalFollower: Align(
          alignment: Alignment.topCenter,
          child: Padding(
            padding: EdgeInsets.only(
                left: 0.0587 * screenWidth, top: 0.0587 * screenWidth),
            child: SingleChildScrollView(
              child: Stack(children: [
                postopOverlay1(),
                GestureDetector(
                    child: closePostopOverlay1(),
                    onTap: () {
                      setState(() {
                        isPostopOverlay1Open = false;
                      });
                    }),
              ]),
            ),
          ),
        ),
        child: GestureDetector(
            child: const PostopCircle1(),
            onTap: () {
              setState(() {
                isPostopOverlay1Open = true;
              });
            }),
      ),
    ]);
  }
}

Widget postopOverlay2() {
  return Container(
    height: 1.16 * screenWidth,
    width: 0.8827 * screenWidth,
    color: HexColor('#bdd7ea'),
    child: Align(
      alignment: Alignment.bottomCenter,
      child: SizedBox(
          width: 0.8827 * screenWidth,
          height: 0.7413 * screenWidth,
          child: SvgPicture.asset('assets/pacu/scabs.svg')),
    ),
  );
}

Widget closePostopOverlay2() {
  return Padding(
    padding:
        EdgeInsets.only(top: 0.0533 * screenWidth, left: 0.0587 * screenWidth),
    child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Icon(CupertinoIcons.clear,
          size: 0.0853 * screenWidth, color: HexColor("#3474a2")),
      Padding(
        padding: EdgeInsets.only(left: 0.0533 * screenWidth),
        child: RichText(
          text: TextSpan(
              text:
                  "Your tonsils are gone. There \nare white patches in your throat \nwhile you get better. Those are \ngood ",
              style: TextStyle(
                  letterSpacing: 0,
                  height: 1.2,
                  fontFamily: "proxima",
                  fontSize: 0.0533 * screenWidth,
                  color: HexColor("#214b68")),
              children: const <TextSpan>[
                TextSpan(
                    text: "scabs",
                    style: TextStyle(
                        letterSpacing: 0,
                        height: 1.2,
                        fontWeight: FontWeight.bold)),
                TextSpan(text: ". They help you. \nYou won’t have scars."),
              ]),
        ),
      ),
    ]),
  );
}

class PostopOverlay2 extends StatefulWidget {
  const PostopOverlay2({Key? key}) : super(key: key);

  @override
  _PostopOverlay2State createState() => _PostopOverlay2State();
}

bool isPostopOverlay2Open = false;

class _PostopOverlay2State extends State<PostopOverlay2> {
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      PortalTarget(
        visible: isPostopOverlay2Open,
        portalFollower: Align(
          alignment: Alignment.topCenter,
          child: Padding(
            padding: EdgeInsets.only(
                left: 0.0587 * screenWidth, top: 0.0587 * screenWidth),
            child: SingleChildScrollView(
              child: Stack(children: [
                postopOverlay2(),
                GestureDetector(
                    child: closePostopOverlay2(),
                    onTap: () {
                      setState(() {
                        isPostopOverlay2Open = false;
                      });
                    }),
              ]),
            ),
          ),
        ),
        child: GestureDetector(
            child: const PostopCircle2(),
            onTap: () {
              setState(() {
                isPostopOverlay2Open = true;
              });
            }),
      ),
    ]);
  }
}

Widget postopOverlay3() {
  return Container(
    height: 1.16 * screenWidth,
    width: 0.8827 * screenWidth,
    color: HexColor('#bdd7ea'),
    child: Align(
      alignment: Alignment.bottomCenter,
      child: SizedBox(
          width: 0.8827 * screenWidth,
          height: 0.8053 * screenWidth,
          child: SvgPicture.asset('assets/pacu/boy_resting.svg')),
    ),
  );
}

Widget closePostopOverlay3() {
  return Padding(
    padding:
        EdgeInsets.only(top: 0.0533 * screenWidth, left: 0.0587 * screenWidth),
    child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Icon(CupertinoIcons.clear,
          size: 0.0853 * screenWidth, color: HexColor("#3474a2")),
      Padding(
        padding: EdgeInsets.only(left: 0.0533 * screenWidth),
        child: Text(
            "While you get better, you feel \nyucky and your throat is sore. \nYou need to rest a lot. You start \nto feel better in a week or so.",
            style: TextStyle(
                letterSpacing: 0,
                height: 1.2,
                fontFamily: "proxima",
                fontSize: 0.0533 * screenWidth,
                color: HexColor("#214b68"))),
      ),
    ]),
  );
}

class PostopOverlay3 extends StatefulWidget {
  const PostopOverlay3({Key? key}) : super(key: key);

  @override
  _PostopOverlay3State createState() => _PostopOverlay3State();
}

bool isPostopOverlay3Open = false;

class _PostopOverlay3State extends State<PostopOverlay3> {
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      PortalTarget(
        visible: isPostopOverlay3Open,
        portalFollower: Align(
          alignment: Alignment.topCenter,
          child: Padding(
            padding: EdgeInsets.only(
                left: 0.0587 * screenWidth, top: 0.0587 * screenWidth),
            child: SingleChildScrollView(
              child: Stack(children: [
                postopOverlay3(),
                GestureDetector(
                    child: closePostopOverlay3(),
                    onTap: () {
                      setState(() {
                        isPostopOverlay3Open = false;
                      });
                    }),
              ]),
            ),
          ),
        ),
        child: GestureDetector(
            child: const PostopCircle3(),
            onTap: () {
              setState(() {
                isPostopOverlay3Open = true;
              });
            }),
      ),
    ]);
  }
}
