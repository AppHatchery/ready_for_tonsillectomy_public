import 'package:flutter/cupertino.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_portal/flutter_portal.dart';
import '../main.dart';

Widget breakfastButton() {
  return Padding(
    padding: EdgeInsets.only(bottom: 0.0533 * screenWidth),
    child: Stack(alignment: Alignment.topLeft, children: [
      Stack(alignment: Alignment.bottomRight, children: [
        Container(
          height: 0.4133 * screenWidth,
          width: 0.8827 * screenWidth,
          decoration: BoxDecoration(
              color: HexColor("#d1c2df"),
              borderRadius:
                  BorderRadius.all(Radius.circular(0.0333 * screenWidth))),
        ),
        Padding(
            padding: EdgeInsets.only(
                right: 0.0587 * screenWidth, bottom: 0.0293 * screenWidth),
            child: SizedBox(
                height: 0.2933 * screenWidth,
                width: 0.1665 * screenWidth,
                child: SvgPicture.asset(
                    'assets/getting_ready/breakfast_icon.svg'))),
      ]),
      Padding(
        padding: EdgeInsets.only(
            left: 0.0587 * screenWidth, top: 0.0533 * screenWidth),
        child: Text("can I have breakfast \nbefore surgery?",
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
class BreakfastButton extends StatefulWidget {
  const BreakfastButton({Key? key}) : super(key: key);

  @override
  State<BreakfastButton> createState() => _BreakfastButtonState();
}

class _BreakfastButtonState extends State<BreakfastButton>
    with TickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
      duration: const Duration(milliseconds: 1500), vsync: this);
  late final Animation<double> _animation = CurvedAnimation(
      parent: _controller,
      curve: const Interval(0.37, 0.4, curve: Curves.ease));

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
    return FadeTransition(opacity: _animation, child: breakfastButton());
  }
}

/// Create "breakfast" overlay.
Widget breakfastOverlay() {
  return Container(
    height: 1.5064 * screenWidth,
    width: 0.8827 * screenWidth,
    color: HexColor('#ded3e8'),
    child: Padding(
      padding: EdgeInsets.only(
          left: 0.0587 * screenWidth, bottom: 0.0587 * screenWidth),
      child: Align(
        alignment: Alignment.center,
        child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(top: 0.2053 * screenWidth),
                child: RichText(
                  text: TextSpan(
                      text:
                          "Your body needs energy to get better. \nEat a healthy dinner the night before \nsurgery. To make your surgery safer, ",
                      style: TextStyle(
                          letterSpacing: 0,
                          height: 1.2,
                          fontFamily: "proxima",
                          fontSize: 0.0533 * screenWidth,
                          color: HexColor("#214b68")),
                      children: const <TextSpan>[
                        TextSpan(
                            text: "\ndon't eat after midnight",
                            style: TextStyle(
                                letterSpacing: 0,
                                height: 1.2,
                                fontWeight: FontWeight.bold)),
                        TextSpan(text: "."),
                      ]),
                ),
              ),
              SizedBox(
                  width: 0.7563 * screenWidth,
                  height: 0.2342 * screenWidth,
                  child:
                      SvgPicture.asset('assets/getting_ready/moon_stars.svg')),
              RichText(
                text: TextSpan(
                    text: "In the morning, drink something ",
                    style: TextStyle(
                        letterSpacing: 0,
                        height: 1.2,
                        fontFamily: "proxima",
                        fontSize: 0.0533 * screenWidth,
                        color: HexColor("#214b68")),
                    children: const <TextSpan>[
                      TextSpan(
                          text: "clear",
                          style: TextStyle(
                              letterSpacing: 0,
                              height: 1.2,
                              fontWeight: FontWeight.bold)),
                      TextSpan(
                          text:
                              "\nand sugary like a sports drink or apple \njuice for energy. No food, orange juice, \nor milk! "),
                      TextSpan(
                          text: "Stop drinking 2 hours before \nsurgery",
                          style: TextStyle(
                              letterSpacing: 0,
                              height: 1.2,
                              fontWeight: FontWeight.bold)),
                      TextSpan(text: " to be sure your body is ready."),
                    ]),
              ),
              Align(
                alignment: Alignment.center,
                child: Padding(
                    padding: EdgeInsets.only(right: 0.0587 * screenWidth),
                    child: SizedBox(
                        width: 0.256 * screenWidth,
                        height: 0.118 * screenWidth,
                        child:
                            SvgPicture.asset('assets/getting_ready/sun.svg'))),
              ),
              Text(
                  "Guess what? Kids get popsicles for \nbreakfast after surgery!",
                  style: TextStyle(
                      letterSpacing: 0,
                      height: 1.2,
                      fontFamily: "proxima",
                      fontSize: 0.0533 * screenWidth,
                      color: HexColor("#214b68"))),
            ]),
      ),
    ),
  );
}

Widget closeBreakfastOverlay() {
  return Padding(
    padding:
        EdgeInsets.only(top: 0.0533 * screenWidth, left: 0.0587 * screenWidth),
    child: Row(children: [
      Icon(CupertinoIcons.clear,
          size: 0.0853 * screenWidth, color: HexColor("#3474a2")),
      Padding(
        padding: EdgeInsets.only(
            left: 0.0533 * screenWidth, top: 0.0107 * screenWidth),
        child: Text("food rules",
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

class BreakfastOverlay extends StatefulWidget {
  const BreakfastOverlay({Key? key}) : super(key: key);

  @override
  _BreakfastOverlayState createState() => _BreakfastOverlayState();
}

bool isBreakfastOverlayOpen = false;

class _BreakfastOverlayState extends State<BreakfastOverlay> {
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      PortalTarget(
        visible: isBreakfastOverlayOpen,
        portalFollower: Align(
          alignment: Alignment.center,
          child: Padding(
            padding: EdgeInsets.only(left: 0.0587 * screenWidth),
            child: SingleChildScrollView(
              child: Stack(children: [
                breakfastOverlay(),
                GestureDetector(
                    child: closeBreakfastOverlay(),
                    onTap: () {
                      setState(() {
                        isBreakfastOverlayOpen = false;
                      });
                    }),
              ]),
            ),
          ),
        ),
        child: GestureDetector(
            child: const BreakfastButton(),
            onTap: () {
              setState(() {
                isBreakfastOverlayOpen = true;
              });
            }),
      ),
    ]);
  }
}
