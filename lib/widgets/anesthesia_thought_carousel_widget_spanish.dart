import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:rive/rive.dart';
import 'package:carousel_slider/carousel_slider.dart';
import '../main.dart';

Widget thought1Spanish() {
  return Column(mainAxisAlignment: MainAxisAlignment.center, children: [
    Padding(
      padding: EdgeInsets.only(bottom: 0.04 * screenWidth),
      child: Text("¡Estoy listo para dormir!",
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
                  fontSize: 0.05 * screenWidth,
                  color: HexColor("#214b68")),
              children: const <TextSpan>[
                TextSpan(
                    text: "Desliza",
                    style: TextStyle(
                        letterSpacing: 0,
                        height: 1.2,
                        fontWeight: FontWeight.bold)),
                TextSpan(text: " la burbuja para saber \ncómo es la anestesia.")
              ]),
        ),
      ),
    ]),
  ]);
}

Widget thought2Spanish() {
  return Column(mainAxisAlignment: MainAxisAlignment.center, children: [
    Padding(
      padding: EdgeInsets.only(bottom: 0.04 * screenWidth),
      child: Text("¿La anestesia es como el sueño?",
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
            "Sientes que te \nestás durmiendo, pero más \nprofundamente. No te vas a \ndar cuenta de que la \ncirugía ¡ya pasó!",
            textAlign: TextAlign.center,
            style: TextStyle(
                letterSpacing: 0,
                height: 1.2,
                fontFamily: "proxima",
                fontSize: 0.05 * screenWidth,
                color: HexColor("#214b68"))),
      ),
    ]),
  ]);
}

Widget thought3Spanish() {
  return Column(mainAxisAlignment: MainAxisAlignment.center, children: [
    Padding(
      padding: EdgeInsets.only(bottom: 0.04 * screenWidth),
      child: Text("¿En cuánto tiempo me duermo?",
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
            "Te demoras menos de un \nminuto en quedarte dormido. Solo \ncierra tus ojos y relájate.",
            textAlign: TextAlign.center,
            style: TextStyle(
                letterSpacing: 0,
                height: 1.2,
                fontFamily: "proxima",
                fontSize: 0.05 * screenWidth,
                color: HexColor("#214b68"))),
      ),
    ]),
  ]);
}

Widget thought4Spanish() {
  return Column(mainAxisAlignment: MainAxisAlignment.center, children: [
    Padding(
      padding: EdgeInsets.only(bottom: 0.04 * screenWidth),
      child: Text("¿Cómo funciona?",
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
            "La medicina para dormir \nhace que los mensajes de tu \ncerebro se vuelvan lentos. Eso hace que \nte relajes y no sientas nada. No vas a \nsentir dolor. Después de la cirugía \ntodo vuelve a la normalidad.",
            textAlign: TextAlign.center,
            style: TextStyle(
                letterSpacing: 0,
                height: 1.2,
                fontFamily: "proxima",
                fontSize: 0.05 * screenWidth,
                color: HexColor("#214b68"))),
      ),
    ]),
  ]);
}

Widget thought5Spanish() {
  return Column(mainAxisAlignment: MainAxisAlignment.center, children: [
    Padding(
      padding: EdgeInsets.only(bottom: 0.04 * screenWidth),
      child: Text("¿Los doctores me van a cuidar?",
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
            "Te van a poner unos \nstickers especiales en el pecho \ny en un dedo para ver cómo late tu \ncorazón y cómo respiras. Así los \ndoctores saben cómo \ncontrolar tu dolor.",
            textAlign: TextAlign.center,
            style: TextStyle(
                letterSpacing: 0,
                height: 1.2,
                fontFamily: "proxima",
                fontSize: 0.05 * screenWidth,
                color: HexColor("#214b68"))),
      ),
    ]),
  ]);
}

final List<Widget> thoughtSliderSpanish = [
  thought1Spanish(),
  thought2Spanish(),
  thought3Spanish(),
  thought4Spanish(),
  thought5Spanish(),
];

class ManuallyControlledSliderThoughtsSpanish extends StatefulWidget {
  const ManuallyControlledSliderThoughtsSpanish({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _ManuallyControlledSliderThoughtsSpanishState();
  }
}

class _ManuallyControlledSliderThoughtsSpanishState
    extends State<ManuallyControlledSliderThoughtsSpanish> {
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
            items: thoughtSliderSpanish,
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
          children: thoughtSliderSpanish.asMap().entries.map((entry) {
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
