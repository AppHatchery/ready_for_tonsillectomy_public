import 'package:flutter/cupertino.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_portal/flutter_portal.dart';
import '../main.dart';

Widget breakfastButtonSpanish() {
  return Padding(
    padding: EdgeInsets.only(bottom: 0.0533 * screenWidth),
    child: Stack(alignment: Alignment.topLeft, children: [
      Stack(alignment: Alignment.bottomRight, children: [
        Container(
          height: 0.4133 * screenWidth,
          width: 0.8827 * screenWidth,
          decoration: BoxDecoration(
              color: HexColor("#d1c2df"),
              borderRadius:
                  BorderRadius.all(Radius.circular(0.0333 * screenWidth))),
        ),
        Padding(
            padding: EdgeInsets.only(
                right: 0.0587 * screenWidth, bottom: 0.0293 * screenWidth),
            child: SizedBox(
                height: 0.2933 * screenWidth,
                width: 0.1665 * screenWidth,
                child: SvgPicture.asset(
                    'assets/getting_ready/breakfast_icon_spanish.svg'))),
      ]),
      Padding(
        padding: EdgeInsets.only(
            left: 0.0587 * screenWidth, top: 0.0533 * screenWidth),
        child: Text("¿puedo desayunar el \ndía de la cirugía?",
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
class BreakfastButtonSpanish extends StatefulWidget {
  const BreakfastButtonSpanish({Key? key}) : super(key: key);

  @override
  State<BreakfastButtonSpanish> createState() => _BreakfastButtonSpanishState();
}

class _BreakfastButtonSpanishState extends State<BreakfastButtonSpanish>
    with TickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
      duration: const Duration(milliseconds: 1500), vsync: this);
  late final Animation<double> _animation = CurvedAnimation(
      parent: _controller,
      curve: const Interval(0.37, 0.4, curve: Curves.ease));

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
    return FadeTransition(opacity: _animation, child: breakfastButtonSpanish());
  }
}

/// Create "breakfast" overlay.
Widget breakfastOverlaySpanish() {
  return Container(
    height: 1.5064 * screenWidth,
    width: 0.8827 * screenWidth,
    color: HexColor('#ded3e8'),
    child: Padding(
      padding: EdgeInsets.only(
          left: 0.0587 * screenWidth, bottom: 0.0587 * screenWidth),
      child: Align(
        alignment: Alignment.center,
        child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(top: 0.2053 * screenWidth),
                child: RichText(
                  text: TextSpan(
                      text:
                          "Tu cuerpo necesita energía para sanar. \nLa noche anterior a la cirugía, come \nuna cena saludable. Por tu seguridad, ",
                      style: TextStyle(
                          letterSpacing: 0,
                          height: 1.2,
                          fontFamily: "proxima",
                          fontSize: 0.05 * screenWidth,
                          color: HexColor("#214b68")),
                      children: const <TextSpan>[
                        TextSpan(
                            text: "no \ncomas nada",
                            style: TextStyle(
                                letterSpacing: 0,
                                height: 1.2,
                                fontWeight: FontWeight.bold)),
                        TextSpan(text: " después de la medianoche."),
                      ]),
                ),
              ),
              SizedBox(
                  width: 0.7563 * screenWidth,
                  height: 0.2342 * screenWidth,
                  child:
                      SvgPicture.asset('assets/getting_ready/moon_stars.svg')),
              RichText(
                text: TextSpan(
                    text: "En la mañana de la cirugía toma algo ",
                    style: TextStyle(
                        letterSpacing: 0,
                        height: 1.2,
                        fontFamily: "proxima",
                        fontSize: 0.05 * screenWidth,
                        color: HexColor("#214b68")),
                    children: const <TextSpan>[
                      TextSpan(
                          text: "transparente",
                          style: TextStyle(
                              letterSpacing: 0,
                              height: 1.2,
                              fontWeight: FontWeight.bold)),
                      TextSpan(
                          text:
                              " y dulce (jugo de manzana \no refresco para deportistas) para que \ntengas energía. ¡No puedes comer ni \ntomar jugo de naranja o leche! "),
                      TextSpan(
                          text: "2 horas",
                          style: TextStyle(
                              letterSpacing: 0,
                              height: 1.2,
                              fontWeight: FontWeight.bold)),
                      TextSpan(text: "\nantes de la cirugía, debes "),
                      TextSpan(
                          text: "dejar de tomar \nlíquidos",
                          style: TextStyle(
                              letterSpacing: 0,
                              height: 1.2,
                              fontWeight: FontWeight.bold)),
                      TextSpan(text: " para que tu cuerpo esté listo."),
                    ]),
              ),
              Align(
                alignment: Alignment.center,
                child: Padding(
                    padding: EdgeInsets.only(right: 0.0587 * screenWidth),
                    child: SizedBox(
                        width: 0.256 * screenWidth,
                        height: 0.118 * screenWidth,
                        child:
                            SvgPicture.asset('assets/getting_ready/sun.svg'))),
              ),
              Text(
                  "¿Sabes algo? Después de la cirugía \ndesayunas con ¡paletas!",
                  style: TextStyle(
                      letterSpacing: 0,
                      height: 1.2,
                      fontFamily: "proxima",
                      fontSize: 0.05 * screenWidth,
                      color: HexColor("#214b68"))),
            ]),
      ),
    ),
  );
}

Widget closeBreakfastOverlaySpanish() {
  return Padding(
    padding:
        EdgeInsets.only(top: 0.0533 * screenWidth, left: 0.0587 * screenWidth),
    child: Row(children: [
      Icon(CupertinoIcons.clear,
          size: 0.0853 * screenWidth, color: HexColor("#3474a2")),
      Padding(
        padding: EdgeInsets.only(
            left: 0.0533 * screenWidth, top: 0.0107 * screenWidth),
        child: Text("reglas de la comida",
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

class BreakfastOverlaySpanish extends StatefulWidget {
  const BreakfastOverlaySpanish({Key? key}) : super(key: key);

  @override
  _BreakfastOverlaySpanishState createState() =>
      _BreakfastOverlaySpanishState();
}

bool isBreakfastOverlaySpanishOpen = false;

class _BreakfastOverlaySpanishState extends State<BreakfastOverlaySpanish> {
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      PortalTarget(
        visible: isBreakfastOverlaySpanishOpen,
        portalFollower: Align(
          alignment: Alignment.center,
          child: Padding(
            padding: EdgeInsets.only(left: 0.0587 * screenWidth),
            child: SingleChildScrollView(
              child: Stack(children: [
                breakfastOverlaySpanish(),
                GestureDetector(
                    child: closeBreakfastOverlaySpanish(),
                    onTap: () {
                      setState(() {
                        isBreakfastOverlaySpanishOpen = false;
                      });
                    }),
              ]),
            ),
          ),
        ),
        child: GestureDetector(
            child: const BreakfastButtonSpanish(),
            onTap: () {
              setState(() {
                isBreakfastOverlaySpanishOpen = true;
              });
            }),
      ),
    ]);
  }
}
