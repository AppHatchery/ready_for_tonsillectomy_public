import 'package:flutter/cupertino.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_portal/flutter_portal.dart';
import '../main.dart';
import '../widgets/postop_circles_widget_spanish.dart';

Widget postopOverlay1Spanish() {
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

Widget closePostopOverlay1Spanish() {
  return Padding(
    padding: EdgeInsets.only(top: 0.05 * screenWidth, left: 0.04 * screenWidth),
    child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Icon(CupertinoIcons.clear,
          size: 0.0853 * screenWidth, color: HexColor("#3474a2")),
      Padding(
        padding: EdgeInsets.only(left: 0.04 * screenWidth),
        child: Text(
            "La anestesia te puede producir \nsueño o mareo. Eso se quita \npronto.",
            style: TextStyle(
                letterSpacing: 0,
                height: 1.2,
                fontFamily: "proxima",
                fontSize: 0.05 * screenWidth,
                color: HexColor("#214b68"))),
      ),
    ]),
  );
}

class PostopOverlay1Spanish extends StatefulWidget {
  const PostopOverlay1Spanish({Key? key}) : super(key: key);

  @override
  _PostopOverlay1SpanishState createState() => _PostopOverlay1SpanishState();
}

bool isPostopOverlay1SpanishOpen = false;

class _PostopOverlay1SpanishState extends State<PostopOverlay1Spanish> {
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      PortalTarget(
        visible: isPostopOverlay1SpanishOpen,
        portalFollower: Align(
          alignment: Alignment.topCenter,
          child: Padding(
            padding: EdgeInsets.only(
                left: 0.0587 * screenWidth, top: 0.0587 * screenWidth),
            child: SingleChildScrollView(
              child: Stack(children: [
                postopOverlay1Spanish(),
                GestureDetector(
                    child: closePostopOverlay1Spanish(),
                    onTap: () {
                      setState(() {
                        isPostopOverlay1SpanishOpen = false;
                      });
                    }),
              ]),
            ),
          ),
        ),
        child: GestureDetector(
            child: const PostopCircle1Spanish(),
            onTap: () {
              setState(() {
                isPostopOverlay1SpanishOpen = true;
              });
            }),
      ),
    ]);
  }
}

Widget postopOverlay2Spanish() {
  return Container(
    height: 1.16 * screenWidth,
    width: 0.8827 * screenWidth,
    color: HexColor('#bdd7ea'),
    child: Align(
      alignment: Alignment.bottomCenter,
      child: SizedBox(
          width: 0.8827 * screenWidth,
          height: 0.7413 * screenWidth,
          child: SvgPicture.asset('assets/pacu/scabs_spanish.svg')),
    ),
  );
}

Widget closePostopOverlay2Spanish() {
  return Padding(
    padding: EdgeInsets.only(top: 0.05 * screenWidth, left: 0.04 * screenWidth),
    child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Icon(CupertinoIcons.clear,
          size: 0.0853 * screenWidth, color: HexColor("#3474a2")),
      Padding(
        padding: EdgeInsets.only(left: 0.04 * screenWidth),
        child: RichText(
          text: TextSpan(
              text:
                  "Las amígdalas ya no están. Mientras \nque te mejoras, vas a tener unas \nmanchas blancas en la garganta. \nEsas son ",
              style: TextStyle(
                  letterSpacing: 0,
                  height: 1.2,
                  fontFamily: "proxima",
                  fontSize: 0.05 * screenWidth,
                  color: HexColor("#214b68")),
              children: const <TextSpan>[
                TextSpan(
                    text: "costras",
                    style: TextStyle(
                        letterSpacing: 0,
                        height: 1.2,
                        fontWeight: FontWeight.bold)),
                TextSpan(
                    text:
                        " buenas. Ellas te \nayudan. No vas a tener cicatrices."),
              ]),
        ),
      ),
    ]),
  );
}

class PostopOverlay2Spanish extends StatefulWidget {
  const PostopOverlay2Spanish({Key? key}) : super(key: key);

  @override
  _PostopOverlay2SpanishState createState() => _PostopOverlay2SpanishState();
}

bool isPostopOverlay2SpanishOpen = false;

class _PostopOverlay2SpanishState extends State<PostopOverlay2Spanish> {
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      PortalTarget(
        visible: isPostopOverlay2SpanishOpen,
        portalFollower: Align(
          alignment: Alignment.topCenter,
          child: Padding(
            padding: EdgeInsets.only(
                left: 0.0587 * screenWidth, top: 0.0587 * screenWidth),
            child: SingleChildScrollView(
              child: Stack(children: [
                postopOverlay2Spanish(),
                GestureDetector(
                    child: closePostopOverlay2Spanish(),
                    onTap: () {
                      setState(() {
                        isPostopOverlay2SpanishOpen = false;
                      });
                    }),
              ]),
            ),
          ),
        ),
        child: GestureDetector(
            child: const PostopCircle2Spanish(),
            onTap: () {
              setState(() {
                isPostopOverlay2SpanishOpen = true;
              });
            }),
      ),
    ]);
  }
}

Widget postopOverlay3Spanish() {
  return Container(
    height: 1.16 * screenWidth,
    width: 0.8827 * screenWidth,
    color: HexColor('#bdd7ea'),
    child: Align(
      alignment: Alignment.bottomCenter,
      child: SizedBox(
          width: 0.8827 * screenWidth,
          height: 0.7413 * screenWidth,
          child: SvgPicture.asset('assets/pacu/boy_resting_spanish.svg')),
    ),
  );
}

Widget closePostopOverlay3Spanish() {
  return Padding(
    padding: EdgeInsets.only(top: 0.05 * screenWidth, left: 0.04 * screenWidth),
    child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Icon(CupertinoIcons.clear,
          size: 0.0853 * screenWidth, color: HexColor("#3474a2")),
      Padding(
        padding: EdgeInsets.only(left: 0.04 * screenWidth),
        child: Text(
            "Mientras que te mejoras, te vas a \nsentir mal y te va a doler la \ngarganta. Tienes que descansar \nmucho. Te vas a empezar a sentir \nmejor después de una semana.",
            style: TextStyle(
                letterSpacing: 0,
                height: 1.2,
                fontFamily: "proxima",
                fontSize: 0.05 * screenWidth,
                color: HexColor("#214b68"))),
      ),
    ]),
  );
}

class PostopOverlay3Spanish extends StatefulWidget {
  const PostopOverlay3Spanish({Key? key}) : super(key: key);

  @override
  _PostopOverlay3SpanishState createState() => _PostopOverlay3SpanishState();
}

bool isPostopOverlay3SpanishOpen = false;

class _PostopOverlay3SpanishState extends State<PostopOverlay3Spanish> {
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      PortalTarget(
        visible: isPostopOverlay3SpanishOpen,
        portalFollower: Align(
          alignment: Alignment.topCenter,
          child: Padding(
            padding: EdgeInsets.only(
                left: 0.0587 * screenWidth, top: 0.0587 * screenWidth),
            child: SingleChildScrollView(
              child: Stack(children: [
                postopOverlay3Spanish(),
                GestureDetector(
                    child: closePostopOverlay3Spanish(),
                    onTap: () {
                      setState(() {
                        isPostopOverlay3SpanishOpen = false;
                      });
                    }),
              ]),
            ),
          ),
        ),
        child: GestureDetector(
            child: const PostopCircle3Spanish(),
            onTap: () {
              setState(() {
                isPostopOverlay3SpanishOpen = true;
              });
            }),
      ),
    ]);
  }
}
