import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import '../main.dart';

/// Create postop circle widgets.
Widget postopCircle1Spanish() {
  return Container(
    width: 0.5067 * screenWidth,
    height: 0.5067 * screenWidth,
    decoration:
        BoxDecoration(color: HexColor("#d0e3f0"), shape: BoxShape.circle),
    child: Center(
      child: Text("¿Cómo me sentiré \ncuando me despierte?",
          textAlign: TextAlign.center,
          style: TextStyle(
              letterSpacing: 0,
              height: 1.2,
              fontFamily: "proxima",
              fontSize: 0.05 * screenWidth,
              color: HexColor("#214b68"))),
    ),
  );
}

Widget postopCircle2Spanish() {
  return Container(
    width: 0.3467 * screenWidth,
    height: 0.3467 * screenWidth,
    decoration:
        BoxDecoration(color: HexColor("#bdd7ea"), shape: BoxShape.circle),
    child: Center(
      child: Text("¿Y ahora, \ncómo se ve mi \ngarganta?",
          textAlign: TextAlign.center,
          style: TextStyle(
              letterSpacing: 0,
              height: 1.2,
              fontFamily: "proxima",
              fontSize: 0.05 * screenWidth,
              color: HexColor("#214b68"))),
    ),
  );
}

Widget postopCircle3Spanish() {
  return Container(
    width: 0.4267 * screenWidth,
    height: 0.4267 * screenWidth,
    decoration:
        BoxDecoration(color: HexColor("#aacbe4"), shape: BoxShape.circle),
    child: Center(
      child: Text("¿Qué voy a sentir \nen la garganta?",
          textAlign: TextAlign.center,
          style: TextStyle(
              letterSpacing: 0,
              height: 1.2,
              fontFamily: "proxima",
              fontSize: 0.05 * screenWidth,
              color: HexColor("#214b68"))),
    ),
  );
}

/// Create postop circle entry animations.
class PostopCircle1Spanish extends StatefulWidget {
  const PostopCircle1Spanish({Key? key}) : super(key: key);

  @override
  State<PostopCircle1Spanish> createState() => _PostopCircle1SpanishState();
}

class _PostopCircle1SpanishState extends State<PostopCircle1Spanish>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
      duration: const Duration(milliseconds: 1500), vsync: this);
  late final Animation<Offset> _offsetAnimation =
      Tween<Offset>(begin: const Offset(0.0, 2.4), end: Offset.zero).animate(
          CurvedAnimation(
              parent: _controller,
              curve: const Interval(0.33, 1, curve: Curves.ease)));

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
    return SlideTransition(
      position: _offsetAnimation,
      child: postopCircle1Spanish(),
    );
  }
}

class PostopCircle2Spanish extends StatefulWidget {
  const PostopCircle2Spanish({Key? key}) : super(key: key);

  @override
  State<PostopCircle2Spanish> createState() => _PostopCircle2SpanishState();
}

class _PostopCircle2SpanishState extends State<PostopCircle2Spanish>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
      duration: const Duration(milliseconds: 1500), vsync: this);
  late final Animation<Offset> _offsetAnimation =
      Tween<Offset>(begin: const Offset(0.0, 2.49), end: Offset.zero).animate(
          CurvedAnimation(
              parent: _controller,
              curve: const Interval(0.33, 1, curve: Curves.ease)));

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
    return SlideTransition(
      position: _offsetAnimation,
      child: postopCircle2Spanish(),
    );
  }
}

class PostopCircle3Spanish extends StatefulWidget {
  const PostopCircle3Spanish({Key? key}) : super(key: key);

  @override
  State<PostopCircle3Spanish> createState() => _PostopCircle3SpanishState();
}

class _PostopCircle3SpanishState extends State<PostopCircle3Spanish>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
      duration: const Duration(milliseconds: 1500), vsync: this);
  late final Animation<Offset> _offsetAnimation =
      Tween<Offset>(begin: const Offset(0.0, 1.14), end: Offset.zero).animate(
          CurvedAnimation(
              parent: _controller,
              curve: const Interval(0.33, 1, curve: Curves.ease)));

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
    return SlideTransition(
      position: _offsetAnimation,
      child: postopCircle3Spanish(),
    );
  }
}
