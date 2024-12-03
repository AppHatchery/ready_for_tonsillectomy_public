import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import '../main.dart';

/// Create postop circle widgets.
Widget postopCircle1() {
  return Container(
    width: 0.5067 * screenWidth,
    height: 0.5067 * screenWidth,
    decoration:
        BoxDecoration(color: HexColor("#d0e3f0"), shape: BoxShape.circle),
    child: Center(
      child: Text("How do I feel \nwhen I wake up?",
          textAlign: TextAlign.center,
          style: TextStyle(
              letterSpacing: 0,
              height: 1.2,
              fontFamily: "proxima",
              fontSize: 0.0533 * screenWidth,
              color: HexColor("#214b68"))),
    ),
  );
}

Widget postopCircle2() {
  return Container(
    width: 0.3467 * screenWidth,
    height: 0.3467 * screenWidth,
    decoration:
        BoxDecoration(color: HexColor("#bdd7ea"), shape: BoxShape.circle),
    child: Center(
      child: Text("How does \nmy throat look \nnow?",
          textAlign: TextAlign.center,
          style: TextStyle(
              letterSpacing: 0,
              height: 1.2,
              fontFamily: "proxima",
              fontSize: 0.0533 * screenWidth,
              color: HexColor("#214b68"))),
    ),
  );
}

Widget postopCircle3() {
  return Container(
    width: 0.4267 * screenWidth,
    height: 0.4267 * screenWidth,
    decoration:
        BoxDecoration(color: HexColor("#aacbe4"), shape: BoxShape.circle),
    child: Center(
      child: Text("How will my \nthroat feel?",
          textAlign: TextAlign.center,
          style: TextStyle(
              letterSpacing: 0,
              height: 1.2,
              fontFamily: "proxima",
              fontSize: 0.0533 * screenWidth,
              color: HexColor("#214b68"))),
    ),
  );
}

/// Create postop circle entry animations.
class PostopCircle1 extends StatefulWidget {
  const PostopCircle1({Key? key}) : super(key: key);

  @override
  State<PostopCircle1> createState() => _PostopCircle1State();
}

class _PostopCircle1State extends State<PostopCircle1>
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
      child: postopCircle1(),
    );
  }
}

class PostopCircle2 extends StatefulWidget {
  const PostopCircle2({Key? key}) : super(key: key);

  @override
  State<PostopCircle2> createState() => _PostopCircle2State();
}

class _PostopCircle2State extends State<PostopCircle2>
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
      child: postopCircle2(),
    );
  }
}

class PostopCircle3 extends StatefulWidget {
  const PostopCircle3({Key? key}) : super(key: key);

  @override
  State<PostopCircle3> createState() => _PostopCircle3State();
}

class _PostopCircle3State extends State<PostopCircle3>
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
      child: postopCircle3(),
    );
  }
}
