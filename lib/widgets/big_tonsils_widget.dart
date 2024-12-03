import 'package:flutter/cupertino.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:rive/rive.dart';
import '../main.dart';

/// Create playable "big tonsils" animation.
class BigTonsilsAnimation extends StatefulWidget {
  const BigTonsilsAnimation({Key? key}) : super(key: key);

  @override
  _BigTonsilsAnimationState createState() => _BigTonsilsAnimationState();
}

class _BigTonsilsAnimationState extends State<BigTonsilsAnimation> {
  late RiveAnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = OneShotAnimation('Animation 1', autoplay: false);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _controller.isActive = true,
      child: Stack(alignment: Alignment.topCenter, children: [
        Column(children: [
          Stack(alignment: Alignment.center, children: [
            Container(height: 0.2533 * screenWidth, color: HexColor("#facfd3")),
            Column(children: [
              Text("these are normal tonsils.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      letterSpacing: 0,
                      height: 1.2,
                      fontFamily: "atrament",
                      fontSize: 0.0853 * screenWidth,
                      color: HexColor("#214b68"))),
              RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                    text: "",
                    style: TextStyle(
                        letterSpacing: 0,
                        height: 1.2,
                        fontFamily: "proxima",
                        fontSize: 0.0533 * screenWidth,
                        color: HexColor("#214b68")),
                    children: const <TextSpan>[
                      TextSpan(
                          text: "Tap",
                          style: TextStyle(
                              letterSpacing: 0,
                              height: 1.2,
                              fontWeight: FontWeight.bold)),
                      TextSpan(text: " to see big tonsils!")
                    ]),
              ),
            ]),
          ]),
          Container(height: 0.8 * screenWidth, color: HexColor("#a46c35")),
        ]),
        SizedBox(
          width: screenWidth,
          height: 1.3333 * screenWidth,
          child: RiveAnimation.asset('assets/why_surgery/big_tonsils.riv',
              controllers: [_controller]),
        ),
      ]),
    );
  }
}
