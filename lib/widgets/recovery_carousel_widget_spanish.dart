import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:rive/rive.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:float_column/float_column.dart';
import '../main.dart';

/// Create recovery slider.
final List<Widget> recoverySliderSpanish = [
  recovery1Spanish(),
  recovery2Spanish(),
  recovery3Spanish(),
  recovery4Spanish(),
  recovery5Spanish(),
  recovery6Spanish()
];

Widget recovery1Spanish() {
  return Container(
    width: 0.9 * screenWidth,
    height: screenWidth,
    decoration: BoxDecoration(
      color: HexColor("#d1c2df"),
      borderRadius: BorderRadius.all(Radius.circular(0.0333 * screenWidth)),
    ),
    child: Align(
      alignment: Alignment.bottomCenter,
      child: Stack(alignment: Alignment.bottomCenter, children: [
        Container(
            width: screenWidth,
            height: 0.3 * screenWidth,
            decoration: BoxDecoration(
              color: HexColor("#bdd7ea"),
              borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(0.0333 * screenWidth),
                  bottomLeft: Radius.circular(0.0333 * screenWidth)),
            )),
        Padding(
          padding: EdgeInsets.only(bottom: 0.1 * screenWidth),
          child: SizedBox(
              width: 0.8 * screenWidth,
              height: 0.4012 * screenWidth,
              child: SvgPicture.asset('assets/recovery_home/couch.svg')),
        ),
      ]),
    ),
  );
}

Widget recovery2Spanish() {
  return Container(
    width: 0.9 * screenWidth,
    height: screenWidth,
    decoration: BoxDecoration(
      color: HexColor("#468fc3"),
      borderRadius: BorderRadius.all(Radius.circular(0.0333 * screenWidth)),
    ),
    child: Padding(
      padding: EdgeInsets.only(
          left: 0.0533 * screenWidth, right: 0.0533 * screenWidth),
      child: Center(
        child: FloatColumn(children: [
          Floatable(
            float: FCFloat.right,
            child: SizedBox(
                width: 0.5 * screenWidth,
                height: 0.5 * screenWidth,
                child: const RiveAnimation.asset(
                    'assets/recovery_home/medicine.riv')),
          ),
          RichText(
            text: TextSpan(
                text: "Tómate las ",
                style: TextStyle(
                    letterSpacing: 0,
                    height: 1.2,
                    fontFamily: "proxima",
                    fontSize: 0.0533 * screenWidth,
                    color: HexColor("ecf4f9")),
                children: const <TextSpan>[
                  TextSpan(
                      text: "medicinas",
                      style: TextStyle(
                          letterSpacing: 0,
                          height: 1.2,
                          fontWeight: FontWeight.bold)),
                  TextSpan(
                      text:
                          " que el doctor te recetó. Si te las tomas vas a tener menos dolor y podrás descansar más.")
                ]),
          ),
        ]),
      ),
    ),
  );
}

Widget recovery3Spanish() {
  return Container(
    width: 0.9 * screenWidth,
    height: screenWidth,
    decoration: BoxDecoration(
      color: HexColor("##468fc3"),
      borderRadius: BorderRadius.all(Radius.circular(0.0333 * screenWidth)),
    ),
    child: Padding(
      padding: EdgeInsets.only(
          left: 0.0533 * screenWidth, top: 0.0533 * screenWidth),
      child: Stack(alignment: Alignment.topLeft, children: [
        RichText(
          text: TextSpan(
              text: "Toma ",
              style: TextStyle(
                  letterSpacing: 0,
                  height: 1.2,
                  fontFamily: "proxima",
                  fontSize: 0.0533 * screenWidth,
                  color: HexColor("ecf4f9")),
              children: const <TextSpan>[
                TextSpan(
                    text: "muchos líquidos",
                    style: TextStyle(
                        letterSpacing: 0,
                        height: 1.2,
                        fontWeight: FontWeight.bold)),
                TextSpan(
                    text:
                        ". Trata de tomar jugos y refrescos para deportistas. La garganta se siente mejor \ncon "),
                TextSpan(
                    text: "bebidas frías",
                    style: TextStyle(
                        letterSpacing: 0,
                        height: 1.2,
                        fontWeight: FontWeight.bold)),
                TextSpan(text: ".")
              ]),
        ),
        Padding(
          padding: EdgeInsets.only(
              left: 0.02 * screenWidth, top: 0.15 * screenWidth),
          child: Row(crossAxisAlignment: CrossAxisAlignment.end, children: [
            SizedBox(
                width: 0.4761 * screenWidth,
                height: 0.346 * screenWidth,
                child: SvgPicture.asset(
                    'assets/recovery_home/milk_juice_spanish.svg')),
            Padding(
              padding: EdgeInsets.only(left: 0.072 * screenWidth),
              child: SizedBox(
                  width: 0.1735 * screenWidth,
                  height: 0.4649 * screenWidth,
                  child: SvgPicture.asset('assets/recovery_home/powerade.svg')),
            ),
          ]),
        ),
      ]),
    ),
  );
}

Widget recovery4Spanish() {
  return Container(
    width: 0.9 * screenWidth,
    height: screenWidth,
    decoration: BoxDecoration(
      color: HexColor("#468fc3"),
      borderRadius: BorderRadius.all(Radius.circular(0.0333 * screenWidth)),
    ),
    child: Padding(
      padding: EdgeInsets.all(0.0533 * screenWidth),
      child: Center(
        child: FloatColumn(children: [
          Floatable(
            float: FCFloat.right,
            clearMinSpacing: 0.0587 * screenWidth,
            child: SizedBox(
                width: 0.4108 * screenWidth,
                height: 0.33 * screenWidth,
                child: const RiveAnimation.asset(
                    'assets/recovery_home/yogurt_spanish.riv')),
          ),
          RichText(
            text: TextSpan(
                text: "Las gomitas \ny las paletas \ntambién sirven. \nCome ",
                style: TextStyle(
                    letterSpacing: 0,
                    height: 1.2,
                    fontFamily: "proxima",
                    fontSize: 0.0533 * screenWidth,
                    color: HexColor("ecf4f9")),
                children: const <TextSpan>[
                  TextSpan(
                      text: "alimentos blandos",
                      style: TextStyle(
                          letterSpacing: 0,
                          height: 1.2,
                          fontWeight: FontWeight.bold)),
                  TextSpan(
                      text:
                          ". La comida crujiente, picante, salada o ácida puede afectar la garganta.")
                ]),
          ),
        ]),
      ),
    ),
  );
}

Widget recovery5Spanish() {
  return Container(
    width: 0.9 * screenWidth,
    height: screenWidth,
    decoration: BoxDecoration(
      color: HexColor("#468fc3"),
      borderRadius: BorderRadius.all(Radius.circular(0.0333 * screenWidth)),
    ),
    child: Padding(
      padding: EdgeInsets.all(0.0533 * screenWidth),
      child: Center(
        child: RichText(
          text: TextSpan(
              text: "Cuando no te sientas bien, has ",
              style: TextStyle(
                  letterSpacing: 0,
                  height: 1.2,
                  fontFamily: "proxima",
                  fontSize: 0.0533 * screenWidth,
                  color: HexColor("ecf4f9")),
              children: const <TextSpan>[
                TextSpan(
                    text: "actividades divertidas",
                    style: TextStyle(
                        letterSpacing: 0,
                        height: 1.2,
                        fontWeight: FontWeight.bold)),
                TextSpan(text: " para distraerte. "),
                TextSpan(
                    text: "\n \nNo corras ni practiques deportes",
                    style: TextStyle(
                        letterSpacing: 0,
                        height: 1.2,
                        fontWeight: FontWeight.bold)),
                TextSpan(
                    text:
                        " por 2 semanas. Eso puede hacer que las costras se caigan. Si eso pasa, te vas a demorar más tiempo en mejorar.")
              ]),
        ),
      ),
    ),
  );
}

Widget recovery6Spanish() {
  return Container(
    width: 0.9 * screenWidth,
    height: screenWidth,
    decoration: BoxDecoration(
      color: HexColor("#468fc3"),
      borderRadius: BorderRadius.all(Radius.circular(0.0333 * screenWidth)),
    ),
    child: Padding(
      padding: EdgeInsets.all(0.0533 * screenWidth),
      child: Center(
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              RichText(
                text: TextSpan(
                    text:
                        "¿Malestar en el estómago? Toma sorbos de agua o jugo. ",
                    style: TextStyle(
                        letterSpacing: 0,
                        height: 1.2,
                        fontFamily: "proxima",
                        fontSize: 0.0533 * screenWidth,
                        color: HexColor("ecf4f9")),
                    children: const <TextSpan>[
                      TextSpan(
                          text: "Camina",
                          style: TextStyle(
                              letterSpacing: 0,
                              height: 1.2,
                              fontWeight: FontWeight.bold)),
                      TextSpan(
                          text:
                              ", apenas puedas, para que el estómago se sienta mejor.")
                    ]),
              ),
              SizedBox(
                  width: 0.444 * screenWidth,
                  height: 0.36 * screenWidth,
                  child: const RiveAnimation.asset(
                      'assets/recovery_home/stomp.riv')),
            ]),
      ),
    ),
  );
}

class SliderRecoverySpanish extends StatefulWidget {
  const SliderRecoverySpanish({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _SliderRecoverySpanishState();
  }
}

class _SliderRecoverySpanishState extends State<SliderRecoverySpanish> {
  int _current = 0;
  final CarouselSliderController _controller = CarouselSliderController();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      SizedBox(
        width: 0.9 * screenWidth,
        child: CarouselSlider(
            items: recoverySliderSpanish,
            carouselController: _controller,
            options: CarouselOptions(
                height: 0.92 * screenWidth,
                aspectRatio: 1.0,
                enlargeCenterPage: true,
                scrollDirection: Axis.vertical,
                autoPlay: true,
                autoPlayInterval: const Duration(seconds: 15),
                onPageChanged: (index, reason) {
                  setState(() {
                    _current = index;
                  });
                })),
      ),
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: recoverySliderSpanish.asMap().entries.map((entry) {
          return GestureDetector(
            onTap: () => _controller.animateToPage(entry.key),
            child: Container(
              width: 0.035 * screenWidth,
              height: 0.035 * screenWidth,
              margin: EdgeInsets.symmetric(
                  vertical: 0.0533 * screenWidth,
                  horizontal: 0.03 * screenWidth),
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
    ]);
  }
}
