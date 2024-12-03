import 'package:flutter/cupertino.dart';
import 'package:hexcolor/hexcolor.dart';
import '../main.dart';

class HospitalText extends StatefulWidget {
  const HospitalText({Key? key}) : super(key: key);

  @override
  State<HospitalText> createState() => _HospitalTextState();
}

class _HospitalTextState extends State<HospitalText>
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
            "First, you get a check-up like at the doctor’s office. Nurses check your weight and blood pressure and ask questions.",
            style: TextStyle(
                letterSpacing: 0,
                height: 1.2,
                fontFamily: "proxima",
                fontSize: 0.0533 * screenWidth,
                color: HexColor("#214b68"))),
      ),
    );
  }
}
