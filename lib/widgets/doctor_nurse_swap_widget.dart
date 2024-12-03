import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../main.dart';

/// Create doctor-nurse cross-fade animation.
Widget anesthesiologistSurgeon() {
  return SizedBox(
    height: 1.12 * screenWidth,
    child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding: EdgeInsets.only(top: 0.0587 * screenWidth),
              child: Text(
                  "You wait with your family. \nYour doctors come talk to you. \nAsk questions!",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      letterSpacing: 0,
                      height: 1.2,
                      fontFamily: "proxima",
                      fontSize: 0.0533 * screenWidth,
                      color: HexColor("#214b68"))),
            ),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 0.0232 * screenWidth),
              child: SizedBox(
                  width: 0.3473 * screenWidth,
                  height: 0.7572 * screenWidth,
                  child: SvgPicture.asset(
                      'assets/getting_ready/anesthesiologist_surgeon.svg')),
            ),
          ),
        ]),
  );
}

Widget nurseReady() {
  return SizedBox(
    height: 1.12 * screenWidth,
    child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding: EdgeInsets.only(top: 0.0587 * screenWidth),
              child: Text(
                  "Next, you might get medicine. \nNurses take you to the room where \nyou go to sleep for surgery. Let's go!",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      letterSpacing: 0,
                      height: 1.2,
                      fontFamily: "proxima",
                      fontSize: 0.0533 * screenWidth,
                      color: HexColor("#214b68"))),
            ),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 0.088 * screenWidth),
              child: SizedBox(
                  width: 0.3206 * screenWidth,
                  height: 0.7912 * screenWidth,
                  child:
                      SvgPicture.asset('assets/getting_ready/nurse_ready.svg')),
            ),
          ),
        ]),
  );
}

class Visitors extends StatefulWidget {
  final Function()? callback;
  const Visitors({Key? key, this.callback}) : super(key: key);

  @override
  State<Visitors> createState() => _VisitorsState();
}

class _VisitorsState extends State<Visitors> {
  bool _first = true;

  @override
  Widget build(BuildContext context) {
    return AnimatedCrossFade(
      duration: const Duration(milliseconds: 100),
      firstChild: Stack(alignment: Alignment.topCenter, children: [
        anesthesiologistSurgeon(),
        Padding(
          padding: EdgeInsets.only(
              top: 1.2 * screenWidth, bottom: 0.0533 * screenWidth),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4)),
                backgroundColor: HexColor("#3474a2"),
                padding: EdgeInsets.symmetric(
                    horizontal: 0.08 * screenWidth,
                    vertical: 0.0133 * screenWidth),
                textStyle: TextStyle(
                    letterSpacing: 0,
                    height: 1.2,
                    fontFamily: "atrament",
                    fontSize: 0.0853 * screenWidth,
                    color: HexColor("#fdfbdf"))),
            onPressed: () {
              setState(() {
                _first = !_first;
              });
            },
            child: Padding(
                padding: EdgeInsets.only(top: 0.01 * screenWidth),
                child: Text("who else visits?",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        letterSpacing: 0,
                        height: 1.2,
                        fontFamily: "atrament",
                        color: HexColor("#ecf4f9")))),
          ),
        ),
      ]),
      secondChild: Column(children: [
        nurseReady(),
        Padding(
          padding: EdgeInsets.only(top: 0.25 * screenWidth),
          child: Stack(alignment: Alignment.center, children: [
            Container(height: 0.34 * screenWidth, color: HexColor("#ab90c5")),
            Container(height: 0.28 * screenWidth, color: HexColor("#d1c2df")),
            Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("time to \ngo to sleep!",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          letterSpacing: 0,
                          height: 1.2,
                          fontFamily: "atrament",
                          fontSize: 0.0853 * screenWidth,
                          color: HexColor("#3474a2"))),
                  Padding(
                    padding: EdgeInsets.only(left: 0.1333 * screenWidth),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(4)),
                          backgroundColor: HexColor("#3474a2"),
                          padding: EdgeInsets.symmetric(
                              horizontal: 0.1067 * screenWidth,
                              vertical: 0.0267 * screenWidth),
                          textStyle: TextStyle(
                              letterSpacing: 0,
                              height: 1.2,
                              fontFamily: "atrament",
                              fontSize: 0.0747 * screenWidth,
                              color: HexColor("#d9eee8"))),
                      onPressed: () {
                        if (widget.callback != null) {
                          widget.callback!();
                        }
                        Navigator.pushNamed(context, '/going_to_sleep_a');
                      },
                      child: Padding(
                          padding: EdgeInsets.only(top: 0.0213 * screenWidth),
                          child: Text("NEXT",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  letterSpacing: 0,
                                  height: 1.2,
                                  fontFamily: "atrament",
                                  color: HexColor("#ecf4f9")))),
                    ),
                  ),
                ]),
          ]),
        ),
      ]),
      crossFadeState:
          _first ? CrossFadeState.showFirst : CrossFadeState.showSecond,
    );
  }
}

/// Animate visitors widget entry.
class VisitorsEntry extends StatefulWidget {
  final Function()? callback;
  const VisitorsEntry({Key? key, this.callback}) : super(key: key);

  @override
  State<VisitorsEntry> createState() => _VisitorsEntry();
}

class _VisitorsEntry extends State<VisitorsEntry>
    with TickerProviderStateMixin {
  late final AnimationController _controller =
      AnimationController(duration: const Duration(seconds: 8), vsync: this);
  late final Animation<double> _animation = CurvedAnimation(
      parent: _controller,
      curve: const Interval(0.999, 1.0, curve: Curves.ease));

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
    return FadeTransition(
        opacity: _animation,
        child: Visitors(
          callback: () => {if (widget.callback != null) widget.callback!()},
        ));
  }
}
