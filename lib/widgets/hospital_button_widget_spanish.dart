import 'package:flutter/cupertino.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../main.dart';

Widget hospitalButtonSpanish() {
  return Padding(
    padding: EdgeInsets.only(bottom: 0.0533 * screenWidth),
    child: Stack(alignment: Alignment.topLeft, children: [
      Stack(alignment: Alignment.bottomRight, children: [
        Container(
          height: 0.4133 * screenWidth,
          width: 0.8827 * screenWidth,
          decoration: BoxDecoration(
              color: HexColor("#d1c2df"),
              borderRadius:
                  BorderRadius.all(Radius.circular(0.0333 * screenWidth))),
        ),
        Padding(
            padding: EdgeInsets.only(right: 0.0587 * screenWidth),
            child: SizedBox(
                height: 0.3303 * screenWidth,
                width: 0.3733 * screenWidth,
                child: SvgPicture.asset(
                    'assets/getting_ready/hospital_icon.svg'))),
      ]),
      Padding(
        padding: EdgeInsets.only(
            left: 0.0587 * screenWidth, top: 0.0533 * screenWidth),
        child: Text("¿cómo es el \nhospital?",
            style: TextStyle(
                letterSpacing: 0,
                height: 1.2,
                fontFamily: "atrament",
                fontSize: 0.075 * screenWidth,
                color: HexColor("#3474a2"))),
      ),
    ]),
  );
}

/// Animate button entry.
class HospitalButtonSpanish extends StatefulWidget {
  const HospitalButtonSpanish({Key? key}) : super(key: key);

  @override
  State<HospitalButtonSpanish> createState() => _HospitalButtonSpanishState();
}

class _HospitalButtonSpanishState extends State<HospitalButtonSpanish>
    with TickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
      duration: const Duration(milliseconds: 1500), vsync: this);
  late final Animation<double> _animation = CurvedAnimation(
      parent: _controller,
      curve: const Interval(0.97, 1.0, curve: Curves.ease));

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
    return FadeTransition(opacity: _animation, child: hospitalButtonSpanish());
  }
}
