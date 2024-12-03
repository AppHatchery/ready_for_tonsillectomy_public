import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import '../main.dart';

class ORNextPanelSpanish extends StatefulWidget {
  final Function()? callback;
  const ORNextPanelSpanish({Key? key, this.callback}) : super(key: key);

  @override
  State<ORNextPanelSpanish> createState() => _ORNextPanelSpanishState();
}

class _ORNextPanelSpanishState extends State<ORNextPanelSpanish>
    with TickerProviderStateMixin {
  late final AnimationController _controller =
      AnimationController(duration: const Duration(seconds: 5), vsync: this);
  late final Animation<double> _animation = CurvedAnimation(
      parent: _controller,
      curve: const Interval(0.99, 1.0, curve: Curves.ease));

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
        padding: EdgeInsets.only(bottom: 0.0587 * screenWidth),
        child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("¿ya pasó \nla cirugía?",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      letterSpacing: 0,
                      height: 1.2,
                      fontFamily: "atrament",
                      fontSize: 0.0853 * screenWidth,
                      color: HexColor("#468fc3"))),
              Padding(
                padding: EdgeInsets.only(left: 0.1 * screenWidth),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(4)),
                      backgroundColor: HexColor("#468fc3"),
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
                    Navigator.pushNamed(context, '/after_surgery_a_spanish');
                  },
                  child: Padding(
                      padding: EdgeInsets.only(top: 0.0213 * screenWidth),
                      child:
                          const Text("SIGUIENTE", textAlign: TextAlign.center)),
                ),
              ),
            ]),
      ),
    );
  }
}
