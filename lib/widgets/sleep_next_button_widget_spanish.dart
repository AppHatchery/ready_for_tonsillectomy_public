import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import '../main.dart';

class SleepNextButtonSpanish extends StatefulWidget {
  final Function()? callback;
  const SleepNextButtonSpanish({Key? key, this.callback}) : super(key: key);

  @override
  State<SleepNextButtonSpanish> createState() => _SleepNextButtonSpanishState();
}

class _SleepNextButtonSpanishState extends State<SleepNextButtonSpanish>
    with TickerProviderStateMixin {
  late final AnimationController _controller =
      AnimationController(duration: const Duration(seconds: 6), vsync: this);
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
      child: Padding(
        padding: EdgeInsets.only(
            top: 0.0533 * screenWidth, bottom: 0.0533 * screenWidth),
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
                  fontSize: 0.0747 * screenWidth,
                  color: HexColor("#fdfbdf"))),
          onPressed: () {
            if (widget.callback != null) {
              widget.callback!();
            }
            Navigator.pushNamed(context, '/going_to_sleep_b_spanish');
          },
          child: Padding(
              padding: EdgeInsets.only(top: 0.015 * screenWidth),
              child: const Text("SIGUIENTE", textAlign: TextAlign.center)),
        ),
      ),
    );
  }
}
