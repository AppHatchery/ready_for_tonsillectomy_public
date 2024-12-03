import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:rive/rive.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:bordered_text/bordered_text.dart';
import '../main.dart';

/// Create "Saving the Tonsil Firefighter" comic horizontal carousel.
Widget comic1Spanish() {
  return Stack(alignment: Alignment.topCenter, children: [
    SizedBox(
        height: 0.8 * screenWidth,
        width: 0.8 * screenWidth,
        child: SvgPicture.asset('assets/what_are_tonsils/comic_1_spanish.svg')),
    Padding(
      padding: EdgeInsets.only(top: 0.064 * screenWidth),
      child: Column(children: [
        BorderedText(
          strokeWidth: 4,
          strokeColor: HexColor("#ffce01"),
          child: Text("EL RESCATE DEL \nBOMBERO AMÍGDALA",
              textAlign: TextAlign.center,
              style: TextStyle(
                  letterSpacing: 0,
                  fontFamily: "badaboom",
                  fontSize: 0.0907 * screenWidth,
                  color: Colors.black,
                  height: 0.9)),
        ),
        Padding(
          padding: EdgeInsets.only(top: 0.0133 * screenWidth),
          child: Text("UN CUENTO DE ACCIÓN «AMIGDALESCO»",
              textAlign: TextAlign.center,
              style: TextStyle(
                  letterSpacing: 0,
                  fontFamily: "ccmeanwhile",
                  fontSize: 0.04 * screenWidth,
                  color: Colors.black)),
        ),
      ]),
    ),
  ]);
}

Widget comic2Spanish() {
  return Center(
    child: Stack(alignment: Alignment.bottomLeft, children: [
      SizedBox(
          height: 0.8 * screenWidth,
          width: 0.8 * screenWidth,
          child: const RiveAnimation.asset(
              'assets/what_are_tonsils/comic_2_spanish.riv')),
      Padding(
        padding: EdgeInsets.all(0.0267 * screenWidth),
        child: RichText(
          text: TextSpan(
              text: "Las amígdalas son parte de \ntu ",
              style: TextStyle(
                  letterSpacing: 0,
                  fontFamily: "ccmeanwhile",
                  fontSize: 0.031 * screenWidth,
                  color: Colors.black,
                  height: 1.7),
              children: const <TextSpan>[
                TextSpan(
                    text: "sistema inmunológico",
                    style: TextStyle(
                        letterSpacing: 0, fontWeight: FontWeight.bold)),
                TextSpan(text: ": \ntus bomberos.")
              ]),
        ),
      ),
    ]),
  );
}

Widget comic3Spanish() {
  return Center(
    child: Stack(alignment: Alignment.bottomLeft, children: [
      SizedBox(
          height: 0.8 * screenWidth,
          width: 0.8 * screenWidth,
          child: const RiveAnimation.asset(
              'assets/what_are_tonsils/comic_3_spanish.riv')),
      Padding(
        padding: EdgeInsets.all(0.0267 * screenWidth),
        child: Text(
            "Tu cuerpo tiene un equipo grande \nde bomberos. Las amígdalas \nson dos de ellos.",
            style: TextStyle(
                letterSpacing: 0,
                fontFamily: "ccmeanwhile",
                fontSize: 0.031 * screenWidth,
                color: Colors.black,
                height: 1.7)),
      ),
    ]),
  );
}

Widget comic4Spanish() {
  return Center(
    child: Stack(alignment: Alignment.bottomLeft, children: [
      SizedBox(
          height: 0.8 * screenWidth,
          width: 0.8 * screenWidth,
          child:
              SvgPicture.asset('assets/what_are_tonsils/comic_4_spanish.svg')),
      Padding(
        padding: EdgeInsets.all(0.0267 * screenWidth),
        child: Text(
            "Los bomberos del sistema \ninmunológico arrasan los \ngérmenes malos que te enferman.",
            style: TextStyle(
                letterSpacing: 0,
                fontFamily: "ccmeanwhile",
                fontSize: 0.031 * screenWidth,
                color: Colors.black,
                height: 1.7)),
      ),
    ]),
  );
}

Widget comic5Spanish() {
  return Center(
    child: Stack(alignment: Alignment.bottomLeft, children: [
      SizedBox(
          height: 0.8 * screenWidth,
          width: 0.8 * screenWidth,
          child:
              SvgPicture.asset('assets/what_are_tonsils/comic_5_spanish.svg')),
      Padding(
        padding: EdgeInsets.all(0.0267 * screenWidth),
        child: RichText(
          text: TextSpan(
              text: "Las amígdalas usan ",
              style: TextStyle(
                  letterSpacing: 0,
                  fontFamily: "ccmeanwhile",
                  fontSize: 0.031 * screenWidth,
                  color: Colors.black,
                  height: 1.7),
              children: const <TextSpan>[
                TextSpan(
                    text: "glóbulos \nblancos",
                    style: TextStyle(
                        letterSpacing: 0, fontWeight: FontWeight.bold)),
                TextSpan(text: " y "),
                TextSpan(
                    text: "anticuerpos",
                    style: TextStyle(
                        letterSpacing: 0, fontWeight: FontWeight.bold)),
                TextSpan(
                    text:
                        " para \nacabar con los gérmenes malos \nque se meten por tu nariz y boca.")
              ]),
        ),
      ),
    ]),
  );
}

Widget comic6Spanish() {
  return Center(
    child: Stack(alignment: Alignment.topLeft, children: [
      SizedBox(
          height: 0.8 * screenWidth,
          width: 0.8 * screenWidth,
          child: const RiveAnimation.asset(
              'assets/what_are_tonsils/comic_6_spanish.riv')),
      Padding(
        padding: EdgeInsets.all(0.0267 * screenWidth),
        child: Text(
            "Cuando las amígdalas tienen \nproblemas no pueden evitar que te \nenfermes. Como cuando un bombero respira mucho humo y no puede \nseguir ayudando. ¡Hay que salvarlo \ny sacarlo del incendio!",
            style: TextStyle(
                letterSpacing: 0,
                fontFamily: "ccmeanwhile",
                fontSize: 0.031 * screenWidth,
                color: Colors.black,
                height: 1.7)),
      ),
    ]),
  );
}

Widget comic7Spanish() {
  return Center(
    child: Stack(alignment: Alignment.bottomLeft, children: [
      SizedBox(
          height: 0.8 * screenWidth,
          width: 0.8 * screenWidth,
          child: const RiveAnimation.asset(
              'assets/what_are_tonsils/comic_7_spanish.riv')),
      Padding(
        padding: EdgeInsets.all(0.0267 * screenWidth),
        child: RichText(
          text: TextSpan(
              text: "La ",
              style: TextStyle(
                  letterSpacing: 0,
                  fontFamily: "ccmeanwhile",
                  fontSize: 0.031 * screenWidth,
                  color: Colors.black,
                  height: 1.7),
              children: const <TextSpan>[
                TextSpan(
                    text: "amigdalectomía",
                    style: TextStyle(
                        letterSpacing: 0, fontWeight: FontWeight.bold)),
                TextSpan(
                    text:
                        " es la cirugía para \nextraer las amígdalas. ¡No te apures! \nTu cuerpo tiene otras formas de \npelear contra los gérmenes. Hay \notros héroes del sistema \ninmunológico que se hacen cargo."),
              ]),
        ),
      ),
    ]),
  );
}

final List<Widget> comicSliderSpanish = [
  comic1Spanish(),
  comic2Spanish(),
  comic3Spanish(),
  comic4Spanish(),
  comic5Spanish(),
  comic6Spanish(),
  comic7Spanish()
];

class ManuallyControlledSliderComicSpanish extends StatefulWidget {
  const ManuallyControlledSliderComicSpanish({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _ManuallyControlledSliderComicSpanishState();
  }
}

class _ManuallyControlledSliderComicSpanishState
    extends State<ManuallyControlledSliderComicSpanish> {
  int _current = 0;
  final CarouselSliderController _controller = CarouselSliderController();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Padding(
        padding: EdgeInsets.only(
            top: 0.0333 * screenWidth, bottom: 0.04 * screenWidth),
        child: CarouselSlider(
          items: comicSliderSpanish,
          options: CarouselOptions(
              height: 0.8 * screenWidth,
              enableInfiniteScroll: false,
              viewportFraction: 0.8333,
              onPageChanged: (index, reason) {
                setState(() {
                  _current = index;
                });
              }),
          carouselController: _controller,
        ),
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: comicSliderSpanish.asMap().entries.map((entry) {
          return GestureDetector(
            onTap: () => _controller.animateToPage(entry.key),
            child: Container(
              width: 0.04 * screenWidth,
              height: 0.04 * screenWidth,
              margin: EdgeInsets.symmetric(
                  vertical: 0.06 * screenWidth, horizontal: 0.04 * screenWidth),
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: (Theme.of(context).brightness == Brightness.dark
                          ? Colors.black
                          : Colors.white)
                      .withOpacity(_current == entry.key ? 1.0 : 0.25)),
            ),
          );
        }).toList(),
      ),
    ]);
  }
}
