import 'package:flutter/cupertino.dart';
import 'package:hexcolor/hexcolor.dart';

class BlinkBorderSpanish extends StatefulWidget {
  const BlinkBorderSpanish({Key? key}) : super(key: key);

  @override
  State<BlinkBorderSpanish> createState() => _BlinkBorderSpanishState();
}

class _BlinkBorderSpanishState extends State<BlinkBorderSpanish>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller =
  AnimationController(duration: const Duration(seconds: 4), vsync: this)
    ..repeat(reverse: true);
  late final Animation<double> _animation = CurvedAnimation(
      parent: _controller,
      curve: const Interval(0.8, 1.0, curve: Curves.ease));

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return FadeTransition(opacity: _animation,
        child: Container(
          width: 0.44 * screenWidth,
          height: 0.44 * screenWidth,
          decoration: BoxDecoration(
              color: HexColor("#599bc9"),
              borderRadius:
              BorderRadius.all(Radius.circular(0.01 * screenWidth))),
        ),
    );
  }
}



