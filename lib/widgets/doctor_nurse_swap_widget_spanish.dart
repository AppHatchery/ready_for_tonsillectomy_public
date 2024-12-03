import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../main.dart';

/// Create doctor-nurse cross-fade animation.
Widget anesthesiologistSurgeonSpanish() {
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
                  "Tu familia va a estar contigo en el cuarto \nmientras esperas. Los doctores van a \nvenir a hablar contigo. ¡Has preguntas! ",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      letterSpacing: 0,
                      height: 1.2,
                      fontFamily: "proxima",
                      fontSize: 0.05 * screenWidth,
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

Widget nurseReadySpanish() {
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
                  "Es probable que después te den medicina. \nLas enfermeras te llevarán al cuarto donde \nvas a dormir durante la cirugía. ¡Vámonos!",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      letterSpacing: 0,
                      height: 1.2,
                      fontFamily: "proxima",
                      fontSize: 0.05 * screenWidth,
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
                  child: SvgPicture.asset(
                      'assets/getting_ready/nurse_ready_spanish.svg')),
            ),
          ),
        ]),
  );
}

class VisitorsSpanish extends StatefulWidget {
  final Function()? callback;
  const VisitorsSpanish({Key? key, this.callback}) : super(key: key);

  @override
  State<VisitorsSpanish> createState() => _VisitorsSpanishState();
}

class _VisitorsSpanishState extends State<VisitorsSpanish> {
  bool _first = true;

  @override
  Widget build(BuildContext context) {
    return AnimatedCrossFade(
      duration: const Duration(milliseconds: 100),
      firstChild: Stack(alignment: Alignment.topCenter, children: [
        anesthesiologistSurgeonSpanish(),
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
                child: const Text("¿quién más va a venir?",
                    textAlign: TextAlign.center)),
          ),
        ),
      ]),
      secondChild: Column(children: [
        nurseReadySpanish(),
        Padding(
          padding: EdgeInsets.only(top: 0.25 * screenWidth),
          child: Stack(alignment: Alignment.center, children: [
            Container(height: 0.34 * screenWidth, color: HexColor("#ab90c5")),
            Container(height: 0.28 * screenWidth, color: HexColor("#d1c2df")),
            Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("¡hora de \ndormir!",
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
                        Navigator.pushNamed(
                            context, '/going_to_sleep_a_spanish');
                      },
                      child: Padding(
                          padding: EdgeInsets.only(top: 0.0213 * screenWidth),
                          child: const Text("SIGUIENTE",
                              textAlign: TextAlign.center)),
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
class VisitorsEntrySpanish extends StatefulWidget {
  final Function()? callback;
  const VisitorsEntrySpanish({Key? key, this.callback}) : super(key: key);

  @override
  State<VisitorsEntrySpanish> createState() => _VisitorsEntrySpanish();
}

class _VisitorsEntrySpanish extends State<VisitorsEntrySpanish>
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
        child: VisitorsSpanish(
          callback: () => {if (widget.callback != null) widget.callback!()},
        ));
  }
}
