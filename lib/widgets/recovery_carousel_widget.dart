import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:rive/rive.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:float_column/float_column.dart';
import '../main.dart';

/// Create recovery slider.
final List<Widget> recoverySlider = [
  recovery1(),
  recovery2(),
  recovery3(),
  recovery4(),
  recovery5(),
  recovery6()
];

Widget recovery1() {
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

Widget recovery2() {
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
                text: "Take the ",
                style: TextStyle(
                    letterSpacing: 0,
                    height: 1.2,
                    fontFamily: "proxima",
                    fontSize: 0.0533 * screenWidth,
                    color: HexColor("ecf4f9")),
                children: const <TextSpan>[
                  TextSpan(
                      text: "medicines",
                      style: TextStyle(
                          letterSpacing: 0,
                          height: 1.2,
                          fontWeight: FontWeight.bold)),
                  TextSpan(
                      text:
                          " your doctor says to take. They help you hurt less and rest better.")
                ]),
          ),
        ]),
      ),
    ),
  );
}

Widget recovery3() {
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
              text: "Have ",
              style: TextStyle(
                  letterSpacing: 0,
                  height: 1.2,
                  fontFamily: "proxima",
                  fontSize: 0.0533 * screenWidth,
                  color: HexColor("ecf4f9")),
              children: const <TextSpan>[
                TextSpan(
                    text: "lots to drink",
                    style: TextStyle(
                        letterSpacing: 0,
                        height: 1.2,
                        fontWeight: FontWeight.bold)),
                TextSpan(text: ". Try juice and sports \ndrinks. "),
                TextSpan(
                    text: "Cold drinks",
                    style: TextStyle(
                        letterSpacing: 0,
                        height: 1.2,
                        fontWeight: FontWeight.bold)),
                TextSpan(text: " \nhelp your throat \nfeel better.")
              ]),
        ),
        Padding(
          padding: EdgeInsets.only(
              left: 0.02 * screenWidth, top: 0.15 * screenWidth),
          child: Row(crossAxisAlignment: CrossAxisAlignment.end, children: [
            SizedBox(
                width: 0.4761 * screenWidth,
                height: 0.346 * screenWidth,
                child: SvgPicture.asset('assets/recovery_home/milk_juice.svg')),
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

Widget recovery4() {
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
                    'assets/recovery_home/yogurt.riv')),
          ),
          RichText(
            text: TextSpan(
                text: "Gummy bears \nand popsicles \ncan help too. \nEat ",
                style: TextStyle(
                    letterSpacing: 0,
                    height: 1.2,
                    fontFamily: "proxima",
                    fontSize: 0.0533 * screenWidth,
                    color: HexColor("ecf4f9")),
                children: const <TextSpan>[
                  TextSpan(
                      text: "soft foods",
                      style: TextStyle(
                          letterSpacing: 0,
                          height: 1.2,
                          fontWeight: FontWeight.bold)),
                  TextSpan(
                      text:
                          ". Crunchy, spicy, salty, or sour foods can hurt your throat.")
                ]),
          ),
        ]),
      ),
    ),
  );
}

Widget recovery5() {
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
              text: "",
              style: TextStyle(
                  letterSpacing: 0,
                  height: 1.2,
                  fontFamily: "proxima",
                  fontSize: 0.0533 * screenWidth,
                  color: HexColor("ecf4f9")),
              children: const <TextSpan>[
                TextSpan(
                    text: "Fun activities",
                    style: TextStyle(
                        letterSpacing: 0,
                        height: 1.2,
                        fontWeight: FontWeight.bold)),
                TextSpan(text: " can take your mind off feeling yucky. "),
                TextSpan(
                    text: "\n \nDon’t run or do sports",
                    style: TextStyle(
                        letterSpacing: 0,
                        height: 1.2,
                        fontWeight: FontWeight.bold)),
                TextSpan(
                    text:
                        " for 2 weeks. \nThat can make the scabs come off. Then it takes longer before you feel good.")
              ]),
        ),
      ),
    ),
  );
}

Widget recovery6() {
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
                    text: "Upset stomach? Take sips of water or juice. ",
                    style: TextStyle(
                        letterSpacing: 0,
                        height: 1.2,
                        fontFamily: "proxima",
                        fontSize: 0.0533 * screenWidth,
                        color: HexColor("ecf4f9")),
                    children: const <TextSpan>[
                      TextSpan(
                          text: "Walk around",
                          style: TextStyle(
                              letterSpacing: 0,
                              height: 1.2,
                              fontWeight: FontWeight.bold)),
                      TextSpan(
                          text:
                              " once you’re ready to help your stomach feel better.")
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

class SliderRecovery extends StatefulWidget {
  const SliderRecovery({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _SliderRecoveryState();
  }
}

class _SliderRecoveryState extends State<SliderRecovery> {
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
            items: recoverySlider,
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
        children: recoverySlider.asMap().entries.map((entry) {
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
