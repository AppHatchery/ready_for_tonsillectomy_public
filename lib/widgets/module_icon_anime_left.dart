import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/svg.dart';

class ModuleIconAnimeLeft extends StatefulWidget {
  final String imageUrl;

  const ModuleIconAnimeLeft({
    Key? key,
    required this.imageUrl
  }) : super(key: key);

  @override
  State<ModuleIconAnimeLeft> createState() => _ModuleIconAnimeLeftState();
}

class _ModuleIconAnimeLeftState extends State<ModuleIconAnimeLeft>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller =
  AnimationController(duration: const Duration(seconds: 4), vsync: this)
    ..repeat(reverse: true);
  late final Animation<Offset> _offsetAnimation =
  Tween<Offset>(begin: Offset.zero, end: const Offset(0.3, 0.0)).animate(
      CurvedAnimation(
          parent: _controller,
          curve: const Interval(0.6, 0.85, curve: Curves.ease)));

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return SlideTransition(
      position: _offsetAnimation,
      child: SizedBox(
          width: 0.6667 * screenWidth,
          height: 0.6667 * screenWidth,
          child: SvgPicture.asset(widget.imageUrl)),
    );
  }
}



