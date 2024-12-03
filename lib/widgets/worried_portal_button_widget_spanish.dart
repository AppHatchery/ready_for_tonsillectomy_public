import 'package:flutter/cupertino.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_portal/flutter_portal.dart';
import '../main.dart';

Widget worriedButtonSpanish() {
  return Padding(
    padding: EdgeInsets.only(bottom: 0.0533 * screenWidth),
    child: Stack(alignment: Alignment.topLeft, children: [
      Stack(alignment: Alignment.centerRight, children: [
        Container(
          height: 0.4133 * screenWidth,
          width: 0.8827 * screenWidth,
          decoration: BoxDecoration(
              color: HexColor("#d1c2df"),
              borderRadius:
                  BorderRadius.all(Radius.circular(0.0333 * screenWidth))),
        ),
        Padding(
            padding: EdgeInsets.only(right: 0.0587 * screenWidth),
            child: SizedBox(
                height: 0.3453 * screenWidth,
                width: 0.274 * screenWidth,
                child:
                    SvgPicture.asset('assets/getting_ready/worried_icon.svg'))),
      ]),
      Padding(
        padding: EdgeInsets.only(
            left: 0.0587 * screenWidth, top: 0.0533 * screenWidth),
        child: Text("¿qué puedo hacer si \nestoy asustado?",
            style: TextStyle(
                letterSpacing: 0,
                height: 1.2,
                fontFamily: "atrament",
                fontSize: 0.075 * screenWidth,
                color: HexColor("#3474a2"))),
      ),
    ]),
  );
}

/// Animate button entry.
class WorriedButtonSpanish extends StatefulWidget {
  const WorriedButtonSpanish({Key? key}) : super(key: key);

  @override
  State<WorriedButtonSpanish> createState() => _WorriedButtonSpanishState();
}

class _WorriedButtonSpanishState extends State<WorriedButtonSpanish>
    with TickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
      duration: const Duration(milliseconds: 1500), vsync: this);
  late final Animation<double> _animation = CurvedAnimation(
      parent: _controller,
      curve: const Interval(0.67, 0.7, curve: Curves.ease));

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
    return FadeTransition(opacity: _animation, child: worriedButtonSpanish());
  }
}

/// Create "worried" overlay.
Widget worriedOverlaySpanish() {
  return Container(
    height: 1.5064 * screenWidth,
    width: 0.8827 * screenWidth,
    color: HexColor('#ded3e8'),
    child: Padding(
      padding: EdgeInsets.only(
          left: 0.0587 * screenWidth, bottom: 0.0587 * screenWidth),
      child: Stack(children: [
        Stack(alignment: Alignment.topRight, children: [
          Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 0.2053 * screenWidth),
                  child: Text(
                      "Habla con tu familia acerca de la cirugía. \nHas preguntas a los doctores y \nenfermeras ya que ellos \nestán para cuidarte.",
                      style: TextStyle(
                          letterSpacing: 0,
                          height: 1.2,
                          fontFamily: "proxima",
                          fontSize: 0.05 * screenWidth,
                          color: HexColor("#214b68"))),
                ),
                Text(
                    "Trae un juguete o una \ncobija. Te lo puedes \nllevar a la sala de cirugía.",
                    style: TextStyle(
                        letterSpacing: 0,
                        height: 1.2,
                        fontFamily: "proxima",
                        fontSize: 0.05 * screenWidth,
                        color: HexColor("#214b68"))),
                Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
                  Text(
                      "¡Piensa que la cirugía es una aventura! \nVas a ver muchas cosas interesantes. La",
                      style: TextStyle(
                          letterSpacing: 0,
                          height: 1.2,
                          fontFamily: "proxima",
                          fontSize: 0.05 * screenWidth,
                          color: HexColor("#214b68"))),
                  Text(
                      "sala de cirugía \nse parece a un \ncohete por dentro. \nAdemás, ¡tú eres \nla estrella del día!",
                      style: TextStyle(
                          letterSpacing: 0,
                          height: 1.2,
                          fontFamily: "proxima",
                          fontSize: 0.05 * screenWidth,
                          color: HexColor("#214b68"))),
                ]),
                Text(
                    "Piensa en que la cirugía te va a ayudar. \nVas a poder dormir mejor y se te van a \nquitar los dolores de garganta. ¡Qué \nbueno!",
                    style: TextStyle(
                        letterSpacing: 0,
                        height: 1.2,
                        fontFamily: "proxima",
                        fontSize: 0.05 * screenWidth,
                        color: HexColor("#214b68"))),
              ]),
          Padding(
              padding: EdgeInsets.only(
                  top: 0.35 * screenWidth, right: 0.02 * screenWidth),
              child: SizedBox(
                  height: 0.3067 * screenWidth,
                  width: 0.2489 * screenWidth,
                  child: SvgPicture.asset(
                      'assets/getting_ready/teddy_purple.svg'))),
        ]),
        Padding(
            padding: EdgeInsets.only(
                left: 0.01 * screenWidth, top: 0.88 * screenWidth),
            child: SizedBox(
                height: 0.2667 * screenWidth,
                width: 0.3392 * screenWidth,
                child: SvgPicture.asset('assets/getting_ready/rocket.svg'))),
      ]),
    ),
  );
}

Widget closeWorriedOverlaySpanish() {
  return Padding(
    padding:
        EdgeInsets.only(left: 0.0587 * screenWidth, top: 0.0533 * screenWidth),
    child: Row(children: [
      Icon(CupertinoIcons.clear,
          size: 0.0853 * screenWidth, color: HexColor("#3474a2")),
      Padding(
        padding: EdgeInsets.only(
            left: 0.0533 * screenWidth, top: 0.0107 * screenWidth),
        child: Text("si estás asustado",
            style: TextStyle(
                letterSpacing: 0,
                height: 1.2,
                fontFamily: "atrament",
                fontSize: 0.0853 * screenWidth,
                color: HexColor("#3474a2"))),
      ),
    ]),
  );
}

class WorriedOverlaySpanish extends StatefulWidget {
  const WorriedOverlaySpanish({Key? key}) : super(key: key);

  @override
  _WorriedOverlaySpanishState createState() => _WorriedOverlaySpanishState();
}

bool isWorriedOverlaySpanishOpen = false;

class _WorriedOverlaySpanishState extends State<WorriedOverlaySpanish> {
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      PortalTarget(
        visible: isWorriedOverlaySpanishOpen,
        portalFollower: Align(
          alignment: Alignment.center,
          child: Padding(
            padding: EdgeInsets.only(left: 0.0587 * screenWidth),
            child: SingleChildScrollView(
              child: Stack(children: [
                worriedOverlaySpanish(),
                GestureDetector(
                    child: closeWorriedOverlaySpanish(),
                    onTap: () {
                      setState(() {
                        isWorriedOverlaySpanishOpen = false;
                      });
                    }),
              ]),
            ),
          ),
        ),
        child: GestureDetector(
            child: const WorriedButtonSpanish(),
            onTap: () {
              setState(() {
                isWorriedOverlaySpanishOpen = true;
              });
            }),
      ),
    ]);
  }
}
