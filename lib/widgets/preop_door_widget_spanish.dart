import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import '../main.dart';

/// Animate text.
class PreopDoorTextSpanish extends StatefulWidget {
  const PreopDoorTextSpanish({Key? key}) : super(key: key);

  @override
  State<PreopDoorTextSpanish> createState() => _PreopDoorTextSpanishState();
}

class _PreopDoorTextSpanishState extends State<PreopDoorTextSpanish>
    with TickerProviderStateMixin {
  late final AnimationController _controller =
      AnimationController(duration: const Duration(seconds: 5), vsync: this);
  late final Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    repeatOnce();
    _animation = Tween(
      begin: 1.0,
      end: 0.0,
    ).animate(CurvedAnimation(
        parent: _controller,
        curve: const Interval(0.999, 1.0, curve: Curves.ease)));
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
      child: Align(
        alignment: Alignment.topCenter,
        child: Padding(
          padding: EdgeInsets.only(top: 0.0587 * screenWidth),
          child: Text("¡Este es tu cuarto! Abramos la puerta...",
              textAlign: TextAlign.center,
              style: TextStyle(
                  letterSpacing: 0,
                  height: 1.2,
                  fontFamily: "proxima",
                  fontSize: 0.05 * screenWidth,
                  color: HexColor("#214b68"))),
        ),
      ),
    );
  }
}

class OpenDoorTextSpanish extends StatefulWidget {
  const OpenDoorTextSpanish({Key? key}) : super(key: key);

  @override
  State<OpenDoorTextSpanish> createState() => _OpenDoorTextSpanishState();
}

class _OpenDoorTextSpanishState extends State<OpenDoorTextSpanish>
    with TickerProviderStateMixin {
  late final AnimationController _controller =
      AnimationController(duration: const Duration(seconds: 5), vsync: this);
  late final Animation<double> _animation = CurvedAnimation(
      parent: _controller,
      curve: const Interval(0.80, 0.81, curve: Curves.ease));

  @override
  void initState() {
    super.initState();
    repeatOnce();
  }

  void repeatOnce() async {
    await _controller.forward();
    await _controller.reverse();
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
      child: Padding(
        padding: EdgeInsets.only(bottom: 0.0533 * screenWidth),
        child: Text("¿quién es?",
            textAlign: TextAlign.center,
            style: TextStyle(
                letterSpacing: 0,
                height: 1.2,
                fontFamily: "atrament",
                fontSize: 0.0853 * screenWidth,
                color: HexColor("#3474a2"))),
      ),
    );
  }
}
