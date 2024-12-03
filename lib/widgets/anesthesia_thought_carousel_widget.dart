import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:rive/rive.dart';
import 'package:carousel_slider/carousel_slider.dart';
import '../main.dart';

Widget thought1() {
  return Column(mainAxisAlignment: MainAxisAlignment.center, children: [
    Padding(
      padding: EdgeInsets.only(bottom: 0.04 * screenWidth),
      child: Text("I'm ready to go to sleep!",
          textAlign: TextAlign.center,
          style: TextStyle(
              letterSpacing: 0,
              height: 1.2,
              fontFamily: "atrament",
              fontSize: 0.075 * screenWidth,
              color: HexColor("#214b68"))),
    ),
    SizedBox(height: 0.08 * screenWidth),
    Stack(alignment: Alignment.topCenter, children: [
      SizedBox(
          width: 0.8083 * screenWidth,
          height: 0.666 * screenWidth,
          child: SvgPicture.asset('assets/sleep/thought_bubble.svg',
              color: HexColor('#d0e3f0'))),
      Padding(
        padding: EdgeInsets.only(top: 0.21 * screenWidth),
        child: RichText(
          textAlign: TextAlign.center,
          text: TextSpan(
              text: "",
              style: TextStyle(
                  letterSpacing: 0,
                  height: 1.2,
                  fontFamily: "proxima",
                  fontSize: 0.0533 * screenWidth,
                  color: HexColor("#214b68")),
              children: const <TextSpan>[
                TextSpan(
                    text: "Swipe",
                    style: TextStyle(
                        letterSpacing: 0,
                        height: 1.2,
                        fontWeight: FontWeight.bold)),
                TextSpan(
                    text: " the bubble to find out \nwhat anesthesia is like.")
              ]),
        ),
      ),
    ]),
  ]);
}

Widget thought2() {
  return Column(mainAxisAlignment: MainAxisAlignment.center, children: [
    Padding(
      padding: EdgeInsets.only(bottom: 0.04 * screenWidth),
      child: Text("Is anesthesia like sleep?",
          textAlign: TextAlign.center,
          style: TextStyle(
              letterSpacing: 0,
              height: 1.2,
              fontFamily: "atrament",
              fontSize: 0.075 * screenWidth,
              color: HexColor("#214b68"))),
    ),
    SizedBox(height: 0.08 * screenWidth),
    Stack(alignment: Alignment.topCenter, children: [
      SizedBox(
          width: 0.8083 * screenWidth,
          height: 0.666 * screenWidth,
          child: SvgPicture.asset('assets/sleep/thought_bubble.svg')),
      Padding(
        padding: EdgeInsets.only(top: 0.1227 * screenWidth),
        child: Text(
            "You feel like you’re \ngoing to sleep, but it’s deeper \nthan normal sleep. You won’t \neven know your surgery \nhappened!",
            textAlign: TextAlign.center,
            style: TextStyle(
                letterSpacing: 0,
                height: 1.2,
                fontFamily: "proxima",
                fontSize: 0.0533 * screenWidth,
                color: HexColor("#214b68"))),
      ),
    ]),
  ]);
}

Widget thought3() {
  return Column(mainAxisAlignment: MainAxisAlignment.center, children: [
    Padding(
      padding: EdgeInsets.only(bottom: 0.04 * screenWidth),
      child: Text("How long does it take?",
          textAlign: TextAlign.center,
          style: TextStyle(
              letterSpacing: 0,
              height: 1.2,
              fontFamily: "atrament",
              fontSize: 0.075 * screenWidth,
              color: HexColor("#214b68"))),
    ),
    SizedBox(height: 0.08 * screenWidth),
    Stack(alignment: Alignment.topCenter, children: [
      SizedBox(
          width: 0.8083 * screenWidth,
          height: 0.666 * screenWidth,
          child: SvgPicture.asset('assets/sleep/thought_bubble.svg',
              color: HexColor('#d0e3f0'))),
      Padding(
        padding: EdgeInsets.only(top: 0.1813 * screenWidth),
        child: Text(
            "You fall asleep in less than \na minute. Just close your eyes \nand relax.",
            textAlign: TextAlign.center,
            style: TextStyle(
                letterSpacing: 0,
                height: 1.2,
                fontFamily: "proxima",
                fontSize: 0.0533 * screenWidth,
                color: HexColor("#214b68"))),
      ),
    ]),
  ]);
}

Widget thought4() {
  return Column(mainAxisAlignment: MainAxisAlignment.center, children: [
    Padding(
      padding: EdgeInsets.only(bottom: 0.04 * screenWidth),
      child: Text("How does it work?",
          textAlign: TextAlign.center,
          style: TextStyle(
              letterSpacing: 0,
              height: 1.2,
              fontFamily: "atrament",
              fontSize: 0.075 * screenWidth,
              color: HexColor("#214b68"))),
    ),
    SizedBox(height: 0.08 * screenWidth),
    Stack(alignment: Alignment.topCenter, children: [
      SizedBox(
          width: 0.8083 * screenWidth,
          height: 0.666 * screenWidth,
          child: SvgPicture.asset('assets/sleep/thought_bubble.svg')),
      Padding(
        padding: EdgeInsets.only(top: 0.0907 * screenWidth),
        child: Text(
            "The sleep medicine slows \ndown your brain’s messages. \nThat relaxes you and stops you \nfrom feeling anything. Nothing will \nhurt. Everything goes back to \nnormal after surgery.",
            textAlign: TextAlign.center,
            style: TextStyle(
                letterSpacing: 0,
                height: 1.2,
                fontFamily: "proxima",
                fontSize: 0.0533 * screenWidth,
                color: HexColor("#214b68"))),
      ),
    ]),
  ]);
}

Widget thought5() {
  return Column(mainAxisAlignment: MainAxisAlignment.center, children: [
    Padding(
      padding: EdgeInsets.only(bottom: 0.04 * screenWidth),
      child: Text("Do the doctors check on me?",
          textAlign: TextAlign.center,
          style: TextStyle(
              letterSpacing: 0,
              height: 1.2,
              fontFamily: "atrament",
              fontSize: 0.075 * screenWidth,
              color: HexColor("#214b68"))),
    ),
    SizedBox(height: 0.08 * screenWidth),
    Stack(alignment: Alignment.topCenter, children: [
      SizedBox(
          width: 0.8083 * screenWidth,
          height: 0.666 * screenWidth,
          child: SvgPicture.asset('assets/sleep/thought_bubble.svg',
              color: HexColor('#d0e3f0'))),
      Padding(
        padding: EdgeInsets.only(top: 0.0907 * screenWidth),
        child: Text(
            "They put special stickers \non your chest and finger or toe \nto keep track of things like your \nheartbeat and breathing. That \nhelps doctors make sure \nnothing hurts.",
            textAlign: TextAlign.center,
            style: TextStyle(
                letterSpacing: 0,
                height: 1.2,
                fontFamily: "proxima",
                fontSize: 0.0533 * screenWidth,
                color: HexColor("#214b68"))),
      ),
    ]),
  ]);
}

final List<Widget> thoughtSlider = [
  thought1(),
  thought2(),
  thought3(),
  thought4(),
  thought5(),
];

class ManuallyControlledSliderThoughts extends StatefulWidget {
  const ManuallyControlledSliderThoughts({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _ManuallyControlledSliderThoughtsState();
  }
}

class _ManuallyControlledSliderThoughtsState
    extends State<ManuallyControlledSliderThoughts> {
  int _current = 0;
  final CarouselSliderController _controller = CarouselSliderController();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Padding(
        padding: EdgeInsets.only(top: 0.0533 * screenWidth),
        child: CarouselSlider(
            items: thoughtSlider,
            carouselController: _controller,
            options: CarouselOptions(
                height: 0.88 * screenWidth,
                enableInfiniteScroll: true,
                viewportFraction: 1.0,
                enlargeCenterPage: false,
                autoPlay: true,
                autoPlayInterval: const Duration(seconds: 20),
                onPageChanged: (index, reason) {
                  setState(() {
                    _current = index;
                  });
                })),
      ),
      Padding(
        padding: EdgeInsets.only(top: 0.914 * screenWidth),
        child: SizedBox(
            height: 0.4453 * screenWidth,
            width: screenWidth,
            child: const RiveAnimation.asset('assets/sleep/sleeping.riv')),
      ),
      Padding(
        padding: EdgeInsets.only(top: 0.125 * screenWidth),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: thoughtSlider.asMap().entries.map((entry) {
            return GestureDetector(
              onTap: () => _controller.animateToPage(entry.key),
              child: Container(
                width: 0.03 * screenWidth,
                height: 0.03 * screenWidth,
                margin: EdgeInsets.symmetric(
                    vertical: 0.06 * screenWidth,
                    horizontal: 0.0533 * screenWidth),
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: (Theme.of(context).brightness == Brightness.dark
                            ? Colors.white
                            : HexColor("#3474a2"))
                        .withOpacity(_current == entry.key ? 1.0 : 0.25)),
              ),
            );
          }).toList(),
        ),
      ),
    ]);
  }
}
