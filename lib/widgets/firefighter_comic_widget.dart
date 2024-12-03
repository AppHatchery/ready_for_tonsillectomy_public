import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:rive/rive.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:bordered_text/bordered_text.dart';
import '../main.dart';

/// Create "Saving the Tonsil Firefighter" comic horizontal carousel.
Widget comic1() {
  return Stack(alignment: Alignment.topCenter, children: [
    SizedBox(
        height: 0.8 * screenWidth,
        width: 0.8 * screenWidth,
        child: SvgPicture.asset('assets/what_are_tonsils/comic_1.svg')),
    Padding(
      padding: EdgeInsets.only(top: 0.064 * screenWidth),
      child: Column(children: [
        BorderedText(
          strokeWidth: 4,
          strokeColor: HexColor("#ffce01"),
          child: Text("SAVING THE \nTONSIL FIREFIGHTER",
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
          child: Text("A TONSIL ACTION STORY",
              textAlign: TextAlign.center,
              style: TextStyle(
                  letterSpacing: 0,
                  fontFamily: "blambot",
                  fontSize: 0.0427 * screenWidth,
                  color: Colors.black)),
        ),
      ]),
    ),
  ]);
}

Widget comic2() {
  return Center(
    child: Stack(alignment: Alignment.bottomLeft, children: [
      SizedBox(
          height: 0.8 * screenWidth,
          width: 0.8 * screenWidth,
          child:
              const RiveAnimation.asset('assets/what_are_tonsils/comic_2.riv')),
      Padding(
        padding: EdgeInsets.all(0.0267 * screenWidth),
        child: RichText(
          text: TextSpan(
              text: "Tonsils are part of \nyour ",
              style: TextStyle(
                  letterSpacing: 0,
                  fontFamily: "blambot",
                  fontSize: 0.032 * screenWidth,
                  color: Colors.black,
                  height: 1.7),
              children: const <TextSpan>[
                TextSpan(
                    text: "immune system",
                    style: TextStyle(
                        letterSpacing: 0, fontWeight: FontWeight.bold)),
                TextSpan(text: ", \nyour body's fire department.")
              ]),
        ),
      ),
    ]),
  );
}

Widget comic3() {
  return Center(
    child: Stack(alignment: Alignment.bottomLeft, children: [
      SizedBox(
          height: 0.8 * screenWidth,
          width: 0.8 * screenWidth,
          child:
              const RiveAnimation.asset('assets/what_are_tonsils/comic_3.riv')),
      Padding(
        padding: EdgeInsets.all(0.0267 * screenWidth),
        child: Text(
            "Your body has a big crew \nof firefighters. Tonsils \nare two of them.",
            style: TextStyle(
                letterSpacing: 0,
                fontFamily: "blambot",
                fontSize: 0.032 * screenWidth,
                color: Colors.black,
                height: 1.7)),
      ),
    ]),
  );
}

Widget comic4() {
  return Center(
    child: Stack(alignment: Alignment.bottomLeft, children: [
      SizedBox(
          height: 0.8 * screenWidth,
          width: 0.8 * screenWidth,
          child: SvgPicture.asset('assets/what_are_tonsils/comic_4.svg')),
      Padding(
        padding: EdgeInsets.all(0.0267 * screenWidth),
        child: Text(
            "Immune system firefighters \nwipe out bad germs that \nmake you sick.",
            style: TextStyle(
                letterSpacing: 0,
                fontFamily: "blambot",
                fontSize: 0.032 * screenWidth,
                color: Colors.black,
                height: 1.7)),
      ),
    ]),
  );
}

Widget comic5() {
  return Center(
    child: Stack(alignment: Alignment.bottomLeft, children: [
      SizedBox(
          height: 0.8 * screenWidth,
          width: 0.8 * screenWidth,
          child: SvgPicture.asset('assets/what_are_tonsils/comic_5.svg')),
      Padding(
        padding: EdgeInsets.all(0.0267 * screenWidth),
        child: RichText(
          text: TextSpan(
              text: "Your tonsils use ",
              style: TextStyle(
                  letterSpacing: 0,
                  fontFamily: "blambot",
                  fontSize: 0.032 * screenWidth,
                  color: Colors.black,
                  height: 1.7),
              children: const <TextSpan>[
                TextSpan(
                    text: "white blood \ncells",
                    style: TextStyle(
                        letterSpacing: 0, fontWeight: FontWeight.bold)),
                TextSpan(text: " and "),
                TextSpan(
                    text: "antibodies",
                    style: TextStyle(
                        letterSpacing: 0, fontWeight: FontWeight.bold)),
                TextSpan(
                    text:
                        " to get \nrid of bad germs that come in \nthrough your mouth and nose.")
              ]),
        ),
      ),
    ]),
  );
}

Widget comic6() {
  return Center(
    child: Stack(alignment: Alignment.topLeft, children: [
      SizedBox(
          height: 0.8 * screenWidth,
          width: 0.8 * screenWidth,
          child:
              const RiveAnimation.asset('assets/what_are_tonsils/comic_6.riv')),
      Padding(
        padding: EdgeInsets.all(0.0267 * screenWidth),
        child: Text(
            "Tonsils can have problems and \nstop keeping you healthy. That’s \nlike firefighters who breathe in \ntoo much smoke and can’t help \nanymore. We want to get them \nsafe and out of the way!",
            style: TextStyle(
                letterSpacing: 0,
                fontFamily: "blambot",
                fontSize: 0.032 * screenWidth,
                color: Colors.black,
                height: 1.7)),
      ),
    ]),
  );
}

Widget comic7() {
  return Center(
    child: Stack(alignment: Alignment.bottomLeft, children: [
      SizedBox(
          height: 0.8 * screenWidth,
          width: 0.8 * screenWidth,
          child:
              const RiveAnimation.asset('assets/what_are_tonsils/comic_7.riv')),
      Padding(
        padding: EdgeInsets.all(0.0267 * screenWidth),
        child: RichText(
          text: TextSpan(
              text: "",
              style: TextStyle(
                  letterSpacing: 0,
                  fontFamily: "blambot",
                  fontSize: 0.032 * screenWidth,
                  color: Colors.black,
                  height: 1.7),
              children: const <TextSpan>[
                TextSpan(
                    text: "Tonsillectomy",
                    style: TextStyle(
                        letterSpacing: 0, fontWeight: FontWeight.bold)),
                TextSpan(
                    text:
                        " is surgery to \ntake out your tonsils. Don’t \nworry! Your body fights germs \nin lots of ways. Other immune \nsystem heroes take over."),
              ]),
        ),
      ),
    ]),
  );
}

final List<Widget> comicSlider = [
  comic1(),
  comic2(),
  comic3(),
  comic4(),
  comic5(),
  comic6(),
  comic7()
];

class ManuallyControlledSliderComic extends StatefulWidget {
  const ManuallyControlledSliderComic({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _ManuallyControlledSliderComicState();
  }
}

class _ManuallyControlledSliderComicState
    extends State<ManuallyControlledSliderComic> {
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
          items: comicSlider,
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
        children: comicSlider.asMap().entries.map((entry) {
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
