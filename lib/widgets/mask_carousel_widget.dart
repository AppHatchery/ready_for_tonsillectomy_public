import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:rive/rive.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:carousel_slider/carousel_slider.dart';
import '../main.dart';

Widget mask1() {
  return Stack(alignment: Alignment.topCenter, children: [
    Stack(alignment: Alignment.center, children: [
      SizedBox(width: 0.8 * screenWidth, height: 1.4667 * screenWidth),
      SizedBox(
          width: 0.8 * screenWidth,
          height: 0.8 * screenWidth,
          child: SvgPicture.asset('assets/sleep/mask.svg')),
    ]),
    Padding(
      padding: EdgeInsets.only(top: 1.28 * screenWidth),
      child: Text("The mask is round and has a big tube.",
          textAlign: TextAlign.center,
          style: TextStyle(
              letterSpacing: 0,
              height: 1.2,
              fontFamily: "proxima",
              fontSize: 0.0533 * screenWidth,
              color: HexColor("#214b68"))),
    ),
  ]);
}

Widget mask2() {
  return Stack(alignment: Alignment.topCenter, children: [
    Stack(children: [
      SizedBox(width: 0.8 * screenWidth, height: 1.4667 * screenWidth),
      SizedBox(
          height: 1.4667 * screenWidth,
          width: 0.8 * screenWidth,
          child: const RiveAnimation.asset('assets/sleep/astronaut.riv')),
    ]),
    Padding(
      padding: EdgeInsets.only(top: 1.28 * screenWidth),
      child: RichText(
        textAlign: TextAlign.center,
        text: TextSpan(
            text: "You're like an ",
            style: TextStyle(
                letterSpacing: 0,
                height: 1.2,
                fontFamily: "proxima",
                fontSize: 0.0533 * screenWidth,
                color: HexColor("#214b68")),
            children: const <TextSpan>[
              TextSpan(
                  text: "astronaut",
                  style: TextStyle(
                      letterSpacing: 0,
                      height: 1.2,
                      fontWeight: FontWeight.bold)),
              TextSpan(text: " in a space helmet!"),
            ]),
      ),
    ),
  ]);
}

Widget mask3() {
  return Stack(alignment: Alignment.topCenter, children: [
    Stack(alignment: Alignment.center, children: [
      SizedBox(width: 0.8 * screenWidth, height: 1.4667 * screenWidth),
      SizedBox(
          height: 0.8 * screenWidth,
          width: 0.976 * screenWidth,
          child: const RiveAnimation.asset('assets/sleep/elephant.riv')),
    ]),
    Padding(
      padding: EdgeInsets.only(top: 1.28 * screenWidth),
      child: RichText(
        textAlign: TextAlign.center,
        text: TextSpan(
            text: "The tube on the mask is like an ",
            style: TextStyle(
                letterSpacing: 0,
                height: 1.2,
                fontFamily: "proxima",
                fontSize: 0.0533 * screenWidth,
                color: HexColor("#214b68")),
            children: const <TextSpan>[
              TextSpan(
                  text: "elephant",
                  style: TextStyle(
                      letterSpacing: 0,
                      height: 1.2,
                      fontWeight: FontWeight.bold)),
              TextSpan(text: "\ntrunk! Do you like elephants?"),
            ]),
      ),
    ),
  ]);
}

Widget mask4() {
  return Stack(alignment: Alignment.topCenter, children: [
    Stack(children: [
      SizedBox(width: 0.8 * screenWidth, height: 1.4667 * screenWidth),
      SizedBox(
          height: 1.4667 * screenWidth,
          width: 0.8 * screenWidth,
          child: const RiveAnimation.asset('assets/sleep/snorkeler.riv')),
    ]),
    Padding(
      padding: EdgeInsets.only(top: 1.28 * screenWidth),
      child: RichText(
        textAlign: TextAlign.center,
        text: TextSpan(
            text: "The mask is like a ",
            style: TextStyle(
                letterSpacing: 0,
                height: 1.2,
                fontFamily: "proxima",
                fontSize: 0.0533 * screenWidth,
                color: HexColor("#214b68")),
            children: const <TextSpan>[
              TextSpan(
                  text: "snorkel",
                  style: TextStyle(
                      letterSpacing: 0,
                      height: 1.2,
                      fontWeight: FontWeight.bold)),
              TextSpan(
                  text:
                      " for swimming. \nClose your eyes… can you see dolphins?"),
            ]),
      ),
    ),
  ]);
}

final List<Widget> maskSlider = [mask1(), mask2(), mask3(), mask4()];

class ManuallyControlledSliderMask extends StatefulWidget {
  const ManuallyControlledSliderMask({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _ManuallyControlledSliderMaskState();
  }
}

class _ManuallyControlledSliderMaskState
    extends State<ManuallyControlledSliderMask> {
  int _current = 0;
  final CarouselSliderController _controller = CarouselSliderController();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipRect(
          child: Align(
            alignment: Alignment.bottomCenter,
            heightFactor: 0.9,
            child: CarouselSlider(
              items: maskSlider,
              options: CarouselOptions(
                  height: 1.4667 * screenWidth,
                  enableInfiniteScroll: true,
                  viewportFraction: 1.0,
                  enlargeCenterPage: false,
                  autoPlay: true,
                  autoPlayInterval: const Duration(seconds: 10),
                  onPageChanged: (index, reason) {
                    setState(() {
                      _current = index;
                    });
                  }),
              carouselController: _controller,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 0.97 * screenWidth),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: maskSlider.asMap().entries.map((entry) {
              return GestureDetector(
                onTap: () => _controller.animateToPage(entry.key),
                child: Container(
                  width: 0.04 * screenWidth,
                  height: 0.04 * screenWidth,
                  margin: EdgeInsets.symmetric(
                      vertical: 0.06 * screenWidth,
                      horizontal: 0.0533 * screenWidth),
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: (Theme.of(context).brightness == Brightness.dark
                              ? Colors.white
                              : HexColor("#214b68"))
                          .withOpacity(_current == entry.key ? 1.0 : 0.25)),
                ),
              );
            }).toList(),
          ),
        )
      ],
    );
  }
}
