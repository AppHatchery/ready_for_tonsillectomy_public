import 'package:flutter/cupertino.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:rive/rive.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_portal/flutter_portal.dart';
import '../main.dart';

/// Create playable surgical tray state machine.
class TraySMSpanish extends StatefulWidget {
  const TraySMSpanish({Key? key}) : super(key: key);

  @override
  _TraySMSpanishState createState() => _TraySMSpanishState();
}

class _TraySMSpanishState extends State<TraySMSpanish> {
  SMITrigger? _openRetractor;
  SMITrigger? _closeRetractor;
  SMITrigger? _openCoblator;
  SMITrigger? _closeCoblator;
  SMITrigger? _openForceps;
  SMITrigger? _closeForceps;

  void _onRiveInit(Artboard artboard) {
    final controller =
        StateMachineController.fromArtboard(artboard, 'State Machine 1');
    artboard.addController(controller!);
    _openRetractor = controller.findInput<bool>('open_retractor') as SMITrigger;
    _closeRetractor =
        controller.findInput<bool>('close_retractor') as SMITrigger;
    _openCoblator = controller.findInput<bool>('open_coblator') as SMITrigger;
    _closeCoblator = controller.findInput<bool>('close_coblator') as SMITrigger;
    _openForceps = controller.findInput<bool>('open_forceps') as SMITrigger;
    _closeForceps = controller.findInput<bool>('close_forceps') as SMITrigger;
  }

  void _openRetractorFire() => _openRetractor?.fire();

  void _closeRetractorFire() => _closeRetractor?.fire();

  void _openCoblatorFire() => _openCoblator?.fire();

  void _closeCoblatorFire() => _closeCoblator?.fire();

  void _openForcepsFire() => _openForceps?.fire();

  void _closeForcepsFire() => _closeForceps?.fire();

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      SizedBox(
        height: 1.3333 * screenWidth,
        width: screenWidth,
        child: RiveAnimation.asset('assets/operating_room/tray_sm_spanish.riv',
            stateMachines: const ['State Machine 1'], onInit: _onRiveInit),
      ),
      Padding(
        padding: EdgeInsets.only(
            left: 0.128 * screenWidth, top: 0.1836 * screenWidth),
        child: SizedBox(
          height: 0.3716 * screenWidth,
          width: 0.6692 * screenWidth,
          child: GestureDetector(
            onTap: _openRetractorFire,
            onDoubleTap: _closeRetractorFire,
            child: SvgPicture.asset(
              'assets/operating_room/retractor_overlay.svg',
              color: const Color.fromRGBO(255, 255, 255, 0),
            ),
          ),
        ),
      ),
      Padding(
        padding: EdgeInsets.only(
            left: 0.096 * screenWidth, top: 0.5303 * screenWidth),
        child: SizedBox(
          height: 0.3174 * screenWidth,
          width: 0.8085 * screenWidth,
          child: GestureDetector(
            onTap: _openCoblatorFire,
            onDoubleTap: _closeCoblatorFire,
            child: SvgPicture.asset(
              'assets/operating_room/coblator_overlay.svg',
              color: const Color.fromRGBO(255, 255, 255, 0),
            ),
          ),
        ),
      ),
      Padding(
        padding:
            EdgeInsets.only(left: 0.1387 * screenWidth, top: 0.9 * screenWidth),
        child: SizedBox(
          height: 0.3513 * screenWidth,
          width: 0.7134 * screenWidth,
          child: GestureDetector(
            onTap: _openForcepsFire,
            onDoubleTap: _closeForcepsFire,
            child: SvgPicture.asset(
              'assets/operating_room/forceps_overlay.svg',
              color: const Color.fromRGBO(255, 255, 255, 0),
            ),
          ),
        ),
      ),
    ]);
  }
}

/// Create tray overlay.
Widget trayOverlaySpanish() {
  return Stack(alignment: Alignment.topCenter, children: [
    Padding(
      padding: EdgeInsets.only(top: 0.07 * screenWidth),
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
                  text: "Toca",
                  style: TextStyle(
                      letterSpacing: 0,
                      height: 1.2,
                      fontWeight: FontWeight.bold)),
              TextSpan(text: " los instrumentos para saber su función.\n"),
              TextSpan(
                  text: "Toca dos veces",
                  style: TextStyle(
                      letterSpacing: 0,
                      height: 1.2,
                      fontWeight: FontWeight.bold)),
              TextSpan(text: " para cerrar las pestañas."),
            ]),
      ),
    ),
    Padding(
      padding: EdgeInsets.only(top: 0.1687 * screenWidth),
      child: const TraySMSpanish(),
    ),
  ]);
}

Widget closeTrayOverlaySpanish() {
  return Padding(
    padding: EdgeInsets.only(
        top: 0.0533 * screenWidth, bottom: 0.0533 * screenWidth),
    child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      Icon(CupertinoIcons.clear,
          size: 0.0853 * screenWidth, color: HexColor("#3474a2")),
      Padding(
        padding: EdgeInsets.only(left: 0.0533 * screenWidth),
        child: RichText(
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
                    text: "Toca",
                    style: TextStyle(
                        letterSpacing: 0,
                        height: 1.2,
                        fontWeight: FontWeight.bold)),
                TextSpan(text: " para cerrar."),
              ]),
        ),
      ),
    ]),
  );
}

Widget trayButton() {
  return Padding(
    padding: EdgeInsets.only(left: 0.2 * screenWidth, top: 0.79 * screenWidth),
    child: SizedBox(
      height: 0.3513 * screenWidth,
      width: 0.2211 * screenWidth,
      child: SvgPicture.asset(
        'assets/operating_room/tray_overlay.svg',
        color: const Color.fromRGBO(255, 255, 255, 0),
      ),
    ),
  );
}

class TrayOverlaySpanish extends StatefulWidget {
  const TrayOverlaySpanish({Key? key}) : super(key: key);

  @override
  _TrayOverlaySpanishState createState() => _TrayOverlaySpanishState();
}

bool isTrayOverlaySpanishOpen = false;

class _TrayOverlaySpanishState extends State<TrayOverlaySpanish> {
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      PortalTarget(
        visible: isTrayOverlaySpanishOpen,
        portalFollower: Align(
          alignment: Alignment.topCenter,
          child: SingleChildScrollView(
            child: Container(
              width: screenWidth,
              color: HexColor("#b4ded2"),
              child: Stack(alignment: Alignment.topCenter, children: [
                Container(
                    height: 0.925 * screenHeight,
                    width: screenWidth,
                    color: HexColor("#b4ded2")),
                Column(children: [
                  trayOverlaySpanish(),
                  GestureDetector(
                      child: closeTrayOverlaySpanish(),
                      onTap: () {
                        setState(() {
                          isTrayOverlaySpanishOpen = false;
                        });
                      }),
                ]),
              ]),
            ),
          ),
        ),
        child: GestureDetector(
            child: trayButton(),
            onDoubleTap: () {
              setState(() {
                isTrayOverlaySpanishOpen = true;
              });
            }),
      ),
    ]);
  }
}
