import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import '../main.dart';

class HospitalNextButton2 extends StatefulWidget {
  final Function()? callback;
  const HospitalNextButton2({Key? key, this.callback}) : super(key: key);

  @override
  State<HospitalNextButton2> createState() => _HospitalNextButton2State();
}

class _HospitalNextButton2State extends State<HospitalNextButton2>
    with TickerProviderStateMixin {
  late final AnimationController _controller =
      AnimationController(duration: const Duration(seconds: 5), vsync: this);
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
            right: 0.0667 * screenWidth, bottom: 0.04 * screenWidth),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(4)),
              backgroundColor: HexColor("#468fc3"),
              padding: EdgeInsets.symmetric(
                  horizontal: 0.08 * screenWidth,
                  vertical: 0.008 * screenWidth),
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
            Navigator.pushNamed(context, '/getting_ready_d');
          },
          child: Padding(
              padding: EdgeInsets.only(top: 0.015 * screenWidth),
              child: Text("NEXT",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      letterSpacing: 0,
                      height: 1.2,
                      fontFamily: "atrament",
                      color: HexColor("#ecf4f9")))),
        ),
      ),
    );
  }
}
