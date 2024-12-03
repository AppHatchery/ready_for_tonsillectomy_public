import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:rive/rive.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:carousel_slider/carousel_slider.dart';
import '../main.dart';

Widget mask1Spanish() {
  return Stack(alignment: Alignment.topCenter, children: [
    Stack(alignment: Alignment.center, children: [
      SizedBox(width: 0.8 * screenWidth, height: 1.4667 * screenWidth),
      SizedBox(
          width: 0.8 * screenWidth,
          height: 0.8 * screenWidth,
          child: SvgPicture.asset('assets/sleep/mask_spanish.svg')),
    ]),
    Padding(
      padding: EdgeInsets.only(top: 1.28 * screenWidth),
      child: Text("La máscara es redonda y tiene un tubo largo.",
          textAlign: TextAlign.center,
          style: TextStyle(
              letterSpacing: 0,
              height: 1.2,
              fontFamily: "proxima",
              fontSize: 0.048 * screenWidth,
              color: HexColor("#214b68"))),
    ),
  ]);
}

Widget mask2Spanish() {
  return Stack(alignment: Alignment.topCenter, children: [
    Stack(children: [
      SizedBox(width: 0.8 * screenWidth, height: 1.4667 * screenWidth),
      SizedBox(
          height: 1.4667 * screenWidth,
          width: 0.8 * screenWidth,
          child:
              const RiveAnimation.asset('assets/sleep/astronaut_spanish.riv')),
    ]),
    Padding(
      padding: EdgeInsets.only(top: 1.28 * screenWidth),
      child: RichText(
        textAlign: TextAlign.center,
        text: TextSpan(
            text: "¡Eres como un ",
            style: TextStyle(
                letterSpacing: 0,
                height: 1.2,
                fontFamily: "proxima",
                fontSize: 0.048 * screenWidth,
                color: HexColor("#214b68")),
            children: const <TextSpan>[
              TextSpan(
                  text: "astronauta",
                  style: TextStyle(
                      letterSpacing: 0,
                      height: 1.2,
                      fontWeight: FontWeight.bold)),
              TextSpan(text: " con un casco espacial!"),
            ]),
      ),
    ),
  ]);
}

Widget mask3Spanish() {
  return Stack(alignment: Alignment.topCenter, children: [
    Stack(alignment: Alignment.center, children: [
      SizedBox(width: 0.8 * screenWidth, height: 1.4667 * screenWidth),
      SizedBox(
          height: 0.8 * screenWidth,
          width: 0.976 * screenWidth,
          child:
              const RiveAnimation.asset('assets/sleep/elephant_spanish.riv')),
    ]),
    Padding(
      padding: EdgeInsets.only(top: 1.28 * screenWidth),
      child: RichText(
        textAlign: TextAlign.center,
        text: TextSpan(
            text: "El tubo de la máscara es como la trompa de \n¡un ",
            style: TextStyle(
                letterSpacing: 0,
                height: 1.2,
                fontFamily: "proxima",
                fontSize: 0.048 * screenWidth,
                color: HexColor("#214b68")),
            children: const <TextSpan>[
              TextSpan(
                  text: "elephante",
                  style: TextStyle(
                      letterSpacing: 0,
                      height: 1.2,
                      fontWeight: FontWeight.bold)),
              TextSpan(text: "! ¿Te gustan los elefantes?"),
            ]),
      ),
    ),
  ]);
}

Widget mask4Spanish() {
  return Stack(alignment: Alignment.topCenter, children: [
    Stack(children: [
      SizedBox(width: 0.8 * screenWidth, height: 1.4667 * screenWidth),
      SizedBox(
          height: 1.4667 * screenWidth,
          width: 0.8 * screenWidth,
          child:
              const RiveAnimation.asset('assets/sleep/snorkeler_spanish.riv')),
    ]),
    Padding(
      padding: EdgeInsets.only(top: 1.28 * screenWidth),
      child: RichText(
        textAlign: TextAlign.center,
        text: TextSpan(
            text: "La máscara se parece a la que usan los ",
            style: TextStyle(
                letterSpacing: 0,
                height: 1.2,
                fontFamily: "proxima",
                fontSize: 0.048 * screenWidth,
                color: HexColor("#214b68")),
            children: const <TextSpan>[
              TextSpan(
                  text: "buzos",
                  style: TextStyle(
                      letterSpacing: 0,
                      height: 1.2,
                      fontWeight: FontWeight.bold)),
              TextSpan(
                  text:
                      " que nadan mirando peces. Cierra tus ojos... ¿ves delfines?"),
            ]),
      ),
    ),
  ]);
}

final List<Widget> maskSliderSpanish = [
  mask1Spanish(),
  mask2Spanish(),
  mask3Spanish(),
  mask4Spanish()
];

class ManuallyControlledSliderMaskSpanish extends StatefulWidget {
  const ManuallyControlledSliderMaskSpanish({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _ManuallyControlledSliderMaskSpanishState();
  }
}

class _ManuallyControlledSliderMaskSpanishState
    extends State<ManuallyControlledSliderMaskSpanish> {
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
              items: maskSliderSpanish,
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
            children: maskSliderSpanish.asMap().entries.map((entry) {
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
