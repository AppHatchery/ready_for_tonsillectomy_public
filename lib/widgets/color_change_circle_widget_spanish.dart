import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../main.dart';

class ColorChangeCircleSpanish extends StatefulWidget {
  const ColorChangeCircleSpanish({Key? key}) : super(key: key);

  @override
  State<ColorChangeCircleSpanish> createState() => _ColorChangeCircleSpanishState();
}

class _ColorChangeCircleSpanishState extends State<ColorChangeCircleSpanish>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;
  late final Animation<Color?> _color1;
  late final Animation<Color?> _color2;
  late final Animation<Color?> _color3;
  late final Animation<Color?> _color4;
  late final Animation<double> _fadeColor1;
  late final Animation<double> _fadeColor2;
  late final Animation<double> _fadeColor3;
  late final Animation<double> _fadeColor4;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 4),
      vsync: this,
    )..repeat(reverse: false);

    _color1 = ColorTween(begin: HexColor('#d1c2df'), end: HexColor('#5f417c'))
        .animate(CurvedAnimation(
        parent: _controller,
        curve: const Interval(0.1667, 0.2, curve: Curves.ease)));

    _color2 = ColorTween(begin: HexColor('#d1c2df'), end: HexColor('#5f417c'))
        .animate(CurvedAnimation(
        parent: _controller,
        curve: const Interval(0.3667, 0.4, curve: Curves.ease)));

    _color3 = ColorTween(begin: HexColor('#d1c2df'), end: HexColor('#5f417c'))
        .animate(CurvedAnimation(
        parent: _controller,
        curve: const Interval(0.5667, 0.6, curve: Curves.ease)));

    _color4 = ColorTween(begin: HexColor('#d1c2df'), end: HexColor('#5f417c'))
        .animate(CurvedAnimation(
        parent: _controller,
        curve: const Interval(0.7667, 0.8, curve: Curves.ease)));

    _fadeColor1 = CurvedAnimation(
        parent: _controller,
        curve: const Interval(0.25, 0.2667, curve: Curves.ease));

    _fadeColor2 = CurvedAnimation(
        parent: _controller,
        curve: const Interval(0.45, 0.4667, curve: Curves.ease));

    _fadeColor3 = CurvedAnimation(
        parent: _controller,
        curve: const Interval(0.65, 0.6667, curve: Curves.ease));

    _fadeColor4 = CurvedAnimation(
        parent: _controller,
        curve: const Interval(0.85, 0.8667, curve: Curves.ease));
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 0.8827 * screenWidth,
      height: 0.8827 * screenWidth,
      child: Stack(children: [
        Padding(
          padding: EdgeInsets.only(top: 0.616 * screenWidth),
          child: Stack(alignment: Alignment.center, children: [
            AnimatedBuilder(
                animation: _color1,
                builder: (BuildContext _, Widget? __) {
                  return Container(
                    width: 0.2667 * screenWidth,
                    height: 0.2667 * screenWidth,
                    decoration: BoxDecoration(
                        color: _color1.value, shape: BoxShape.circle),
                  );
                }),
            FadeTransition(
              opacity: _fadeColor1,
              child: Container(
                  width: 0.27 * screenWidth,
                  height: 0.27 * screenWidth,
                  decoration: BoxDecoration(
                      color: HexColor('#d1c2df'), shape: BoxShape.circle)),
            ),
            Padding(
              padding: EdgeInsets.only(top: 0.045 * screenWidth),
              child: SizedBox(
                  height: 0.1209 * screenWidth,
                  width: 0.2276 * screenWidth,
                  child: SvgPicture.asset('assets/sleep/watermelon.svg')),
            ),
          ]),
        ),
        Padding(
          padding: EdgeInsets.only(
              left: 0.0824 * screenWidth, top: 0.3083 * screenWidth),
          child: Stack(alignment: Alignment.center, children: [
            AnimatedBuilder(
                animation: _color2,
                builder: (BuildContext _, Widget? __) {
                  return Container(
                    width: 0.2667 * screenWidth,
                    height: 0.2667 * screenWidth,
                    decoration: BoxDecoration(
                        color: _color2.value, shape: BoxShape.circle),
                  );
                }),
            FadeTransition(
              opacity: _fadeColor2,
              child: Container(
                  width: 0.27 * screenWidth,
                  height: 0.27 * screenWidth,
                  decoration: BoxDecoration(
                      color: HexColor('#d1c2df'), shape: BoxShape.circle)),
            ),
            SizedBox(
                height: 0.2333 * screenWidth,
                width: 0.1396 * screenWidth,
                child: SvgPicture.asset('assets/sleep/cotton_candy.svg')),
          ]),
        ),
        Padding(
          padding: EdgeInsets.only(
              left: 0.3022 * screenWidth, top: 0.0832 * screenWidth),
          child: Stack(alignment: Alignment.center, children: [
            AnimatedBuilder(
                animation: _color3,
                builder: (BuildContext _, Widget? __) {
                  return Container(
                    width: 0.2667 * screenWidth,
                    height: 0.2667 * screenWidth,
                    decoration: BoxDecoration(
                        color: _color3.value, shape: BoxShape.circle),
                  );
                }),
            FadeTransition(
              opacity: _fadeColor3,
              child: Container(
                  width: 0.27 * screenWidth,
                  height: 0.27 * screenWidth,
                  decoration: BoxDecoration(
                      color: HexColor('#d1c2df'), shape: BoxShape.circle)),
            ),
            SizedBox(
                height: 0.114 * screenWidth,
                width: 0.2333 * screenWidth,
                child: SvgPicture.asset('assets/sleep/bubblegum_spanish.svg')),
          ]),
        ),
        Padding(
          padding: EdgeInsets.only(left: 0.616 * screenWidth),
          child: Stack(alignment: Alignment.center, children: [
            AnimatedBuilder(
                animation: _color4,
                builder: (BuildContext _, Widget? __) {
                  return Container(
                    width: 0.2667 * screenWidth,
                    height: 0.2667 * screenWidth,
                    decoration: BoxDecoration(
                        color: _color4.value, shape: BoxShape.circle),
                  );
                }),
            FadeTransition(
              opacity: _fadeColor4,
              child: Container(
                  width: 0.27 * screenWidth,
                  height: 0.27 * screenWidth,
                  decoration: BoxDecoration(
                      color: HexColor('#d1c2df'), shape: BoxShape.circle)),
            ),
            SizedBox(
                height: 0.2058 * screenWidth,
                width: 0.1667 * screenWidth,
                child: SvgPicture.asset('assets/sleep/strawberry.svg')),
          ]),
        ),
      ]),
    );
  }
}