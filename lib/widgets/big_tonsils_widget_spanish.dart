import 'package:flutter/cupertino.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:rive/rive.dart';
import '../main.dart';

/// Create playable "big tonsils" animation.
class BigTonsilsAnimationSpanish extends StatefulWidget {
  const BigTonsilsAnimationSpanish({Key? key}) : super(key: key);

  @override
  _BigTonsilsAnimationSpanishState createState() =>
      _BigTonsilsAnimationSpanishState();
}

class _BigTonsilsAnimationSpanishState
    extends State<BigTonsilsAnimationSpanish> {
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
              Text("estas son amígdalas normales.",
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
                    text: "¡",
                    style: TextStyle(
                        letterSpacing: 0,
                        height: 1.2,
                        fontFamily: "proxima",
                        fontSize: 0.05 * screenWidth,
                        color: HexColor("#214b68")),
                    children: const <TextSpan>[
                      TextSpan(
                          text: "Toca",
                          style: TextStyle(
                              letterSpacing: 0,
                              height: 1.2,
                              fontWeight: FontWeight.bold)),
                      TextSpan(text: " para ver amígdalas grandes!")
                    ]),
              ),
            ]),
          ]),
          Container(height: 0.8 * screenWidth, color: HexColor("#a46c35")),
        ]),
        SizedBox(
          width: screenWidth,
          height: 1.3333 * screenWidth,
          child: RiveAnimation.asset(
              'assets/why_surgery/big_tonsils_spanish.riv',
              controllers: [_controller]),
        ),
      ]),
    );
  }
}
