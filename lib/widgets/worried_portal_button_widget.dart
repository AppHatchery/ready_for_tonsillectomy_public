import 'package:flutter/cupertino.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_portal/flutter_portal.dart';
import '../main.dart';

Widget worriedButton() {
  return Padding(
    padding: EdgeInsets.only(bottom: 0.0533 * screenWidth),
    child: Stack(alignment: Alignment.topLeft, children: [
      Stack(alignment: Alignment.centerRight, children: [
        Container(
          height: 0.4133 * screenWidth,
          width: 0.8827 * screenWidth,
          decoration: BoxDecoration(
              color: HexColor("#d1c2df"),
              borderRadius:
                  BorderRadius.all(Radius.circular(0.0333 * screenWidth))),
        ),
        Padding(
            padding: EdgeInsets.only(right: 0.0587 * screenWidth),
            child: SizedBox(
                height: 0.3453 * screenWidth,
                width: 0.274 * screenWidth,
                child:
                    SvgPicture.asset('assets/getting_ready/worried_icon.svg'))),
      ]),
      Padding(
        padding: EdgeInsets.only(
            left: 0.0587 * screenWidth, top: 0.0533 * screenWidth),
        child: Text("what do I do if \nI'm worried?",
            style: TextStyle(
                letterSpacing: 0,
                height: 1.2,
                fontFamily: "atrament",
                fontSize: 0.0853 * screenWidth,
                color: HexColor("#3474a2"))),
      ),
    ]),
  );
}

/// Animate button entry.
class WorriedButton extends StatefulWidget {
  const WorriedButton({Key? key}) : super(key: key);

  @override
  State<WorriedButton> createState() => _WorriedButtonState();
}

class _WorriedButtonState extends State<WorriedButton>
    with TickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
      duration: const Duration(milliseconds: 1500), vsync: this);
  late final Animation<double> _animation = CurvedAnimation(
      parent: _controller,
      curve: const Interval(0.67, 0.7, curve: Curves.ease));

  @override
  void initState() {
    super.initState();
    repeatOnce();
  }

  void repeatOnce() async {
    await _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FadeTransition(opacity: _animation, child: worriedButton());
  }
}

/// Create "worried" overlay.
Widget worriedOverlay() {
  return Container(
    height: 1.5064 * screenWidth,
    width: 0.8827 * screenWidth,
    color: HexColor('#ded3e8'),
    child: Padding(
      padding: EdgeInsets.only(
          left: 0.0587 * screenWidth, bottom: 0.0587 * screenWidth),
      child: Stack(children: [
        Stack(alignment: Alignment.topRight, children: [
          Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 0.2053 * screenWidth),
                  child: Text(
                      "Talk to your family about surgery. Your \ndoctors and nurses care about you \ntoo. Ask them questions.",
                      style: TextStyle(
                          letterSpacing: 0,
                          height: 1.2,
                          fontFamily: "proxima",
                          fontSize: 0.0533 * screenWidth,
                          color: HexColor("#214b68"))),
                ),
                Text(
                    "Bring a toy or blanket. \nHold onto it when you \ngo to surgery.",
                    style: TextStyle(
                        letterSpacing: 0,
                        height: 1.2,
                        fontFamily: "proxima",
                        fontSize: 0.0533 * screenWidth,
                        color: HexColor("#214b68"))),
                Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
                  Text(
                      "Think about surgery as an adventure! \nYou get to see lots of cool things. The",
                      style: TextStyle(
                          letterSpacing: 0,
                          height: 1.2,
                          fontFamily: "proxima",
                          fontSize: 0.0533 * screenWidth,
                          color: HexColor("#214b68"))),
                  Text(
                      "surgery room is \nlike the inside \nof a rocket ship. \nPlus, the day is \nall about you!",
                      style: TextStyle(
                          letterSpacing: 0,
                          height: 1.2,
                          fontFamily: "proxima",
                          fontSize: 0.0533 * screenWidth,
                          color: HexColor("#214b68"))),
                ]),
                Text(
                    "Think about how your surgery will help \nyou. You’ll sleep better or stop getting \nbad sore throats. Sounds good!",
                    style: TextStyle(
                        letterSpacing: 0,
                        height: 1.2,
                        fontFamily: "proxima",
                        fontSize: 0.0533 * screenWidth,
                        color: HexColor("#214b68"))),
              ]),
          Padding(
              padding: EdgeInsets.only(
                  top: 0.38 * screenWidth, right: 0.02 * screenWidth),
              child: SizedBox(
                  height: 0.3067 * screenWidth,
                  width: 0.2489 * screenWidth,
                  child: SvgPicture.asset(
                      'assets/getting_ready/teddy_purple.svg'))),
        ]),
        Padding(
            padding: EdgeInsets.only(
                left: 0.01 * screenWidth, top: 0.9 * screenWidth),
            child: SizedBox(
                height: 0.2667 * screenWidth,
                width: 0.3392 * screenWidth,
                child: SvgPicture.asset('assets/getting_ready/rocket.svg'))),
      ]),
    ),
  );
}

Widget closeWorriedOverlay() {
  return Padding(
    padding:
        EdgeInsets.only(left: 0.0587 * screenWidth, top: 0.0533 * screenWidth),
    child: Row(children: [
      Icon(CupertinoIcons.clear,
          size: 0.0853 * screenWidth, color: HexColor("#3474a2")),
      Padding(
        padding: EdgeInsets.only(
            left: 0.0533 * screenWidth, top: 0.0107 * screenWidth),
        child: Text("if you're worried",
            style: TextStyle(
                letterSpacing: 0,
                height: 1.2,
                fontFamily: "atrament",
                fontSize: 0.0853 * screenWidth,
                color: HexColor("#3474a2"))),
      ),
    ]),
  );
}

class WorriedOverlay extends StatefulWidget {
  const WorriedOverlay({Key? key}) : super(key: key);

  @override
  _WorriedOverlayState createState() => _WorriedOverlayState();
}

bool isWorriedOverlayOpen = false;

class _WorriedOverlayState extends State<WorriedOverlay> {
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      PortalTarget(
        visible: isWorriedOverlayOpen,
        portalFollower: Align(
          alignment: Alignment.center,
          child: Padding(
            padding: EdgeInsets.only(left: 0.0587 * screenWidth),
            child: SingleChildScrollView(
              child: Stack(children: [
                worriedOverlay(),
                GestureDetector(
                    child: closeWorriedOverlay(),
                    onTap: () {
                      setState(() {
                        isWorriedOverlayOpen = false;
                      });
                    }),
              ]),
            ),
          ),
        ),
        child: GestureDetector(
            child: const WorriedButton(),
            onTap: () {
              setState(() {
                isWorriedOverlayOpen = true;
              });
            }),
      ),
    ]);
  }
}
