import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import '../main.dart';

class PACUNextButton extends StatefulWidget {
  final Function()? callback;
  const PACUNextButton({Key? key, this.callback}) : super(key: key);

  @override
  State<PACUNextButton> createState() => _PACUNextButtonState();
}

class _PACUNextButtonState extends State<PACUNextButton>
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
      child: Padding(
        padding: EdgeInsets.only(bottom: 0.0533 * screenWidth),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(4)),
              backgroundColor: HexColor("#468fc3"),
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
            Navigator.pushNamed(context, '/after_surgery_b');
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
