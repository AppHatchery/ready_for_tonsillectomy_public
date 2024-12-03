import 'package:flutter/cupertino.dart';
import 'package:hexcolor/hexcolor.dart';
import '../main.dart';

class HospitalTextSpanish extends StatefulWidget {
  const HospitalTextSpanish({Key? key}) : super(key: key);

  @override
  State<HospitalTextSpanish> createState() => _HospitalTextSpanishState();
}

class _HospitalTextSpanishState extends State<HospitalTextSpanish>
    with TickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
      duration: const Duration(milliseconds: 6500), vsync: this);
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
        padding: EdgeInsets.only(
            left: 0.0667 * screenWidth,
            top: 0.955 * screenWidth,
            right: 0.0667 * screenWidth),
        child: Text(
            "Primero, igual que en el consultorio del doctor, te chequean. Las enfermeras te pesan, te toman la presión y hacen preguntas.",
            style: TextStyle(
                letterSpacing: 0,
                height: 1.2,
                fontFamily: "proxima",
                fontSize: 0.05 * screenWidth,
                color: HexColor("#214b68"))),
      ),
    );
  }
}
