import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rive/rive.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../main.dart';

/// Create playable operating room state machine.
class OperatingRoomSM extends StatefulWidget {
  const OperatingRoomSM({Key? key}) : super(key: key);

  @override
  _OperatingRoomSMState createState() => _OperatingRoomSMState();
}

class _OperatingRoomSMState extends State<OperatingRoomSM> {
  SMITrigger? _bed;
  SMITrigger? _nurse;
  SMITrigger? _anesthesiologist;
  SMITrigger? _lights;
  SMITrigger? _reset;

  void _onRiveInit(Artboard artboard) {
    final controller =
    StateMachineController.fromArtboard(artboard, 'State Machine 1');
    artboard.addController(controller!);
    _bed = controller.findInput<bool>('tap_bed') as SMITrigger;
    _nurse = controller.findInput<bool>('tap_nurse') as SMITrigger;
    _anesthesiologist =
    controller.findInput<bool>('tap_anesthesiologist') as SMITrigger;
    _lights = controller.findInput<bool>('tap_lights') as SMITrigger;
    _reset = controller.findInput<bool>('tap_reset') as SMITrigger;
  }

  void _tapBed() => _bed?.fire();

  void _tapNurse() => _nurse?.fire();

  void _tapAnesthesiologist() => _anesthesiologist?.fire();

  void _tapLights() => _lights?.fire();

  void _tapReset() => _reset?.fire();

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      SizedBox(
          height: 1.552 * screenWidth,
          width: screenWidth,
          child: RiveAnimation.asset(
              'assets/operating_room/operating_room_sm.riv',
              stateMachines: const ['State Machine 1'],
              onInit: _onRiveInit),
      ),
      Padding(
        padding: EdgeInsets.only(
            left: 0.063 * screenWidth, top: 0.6213 * screenWidth),
        child: SizedBox(
          height: 0.9172 * screenWidth,
          width: 0.6405 * screenWidth,
          child: GestureDetector(
            onTap: _tapBed,
            child: SvgPicture.asset('assets/operating_room/bed_overlay.svg',
                  color: const Color.fromRGBO(255, 255, 255, 0),
            ),
          ),
        ),
      ),
      Padding(
        padding: EdgeInsets.only(
            left: 0.0642 * screenWidth, top: 0.6822 * screenWidth),
        child: SizedBox(
          height: 0.835 * screenWidth,
          width: 0.2648 * screenWidth,
          child: GestureDetector(
            onTap: _tapNurse,
            child: SvgPicture.asset('assets/operating_room/nurse_overlay.svg',
                  color: const Color.fromRGBO(255, 255, 255, 0),
            ),
          ),
        ),
      ),
      Padding(
        padding: EdgeInsets.only(left: 0.65 * screenWidth),
        child: SizedBox(
          height: 1.4847 * screenWidth,
          width: 0.32 * screenWidth,
          child: GestureDetector(
            onTap: _tapAnesthesiologist,
            child: SvgPicture.asset(
                  'assets/operating_room/anesthesiologist_overlay.svg',
                  color: const Color.fromRGBO(255, 255, 255, 0),
            ),
          ),
        ),
      ),
      Padding(
        padding: EdgeInsets.only(left: 0.347 * screenWidth),
        child: SizedBox(
          height: 0.6084 * screenWidth,
          width: 0.6237 * screenWidth,
          child: GestureDetector(
            onTap: _tapLights,
            child: SvgPicture.asset(
                  'assets/operating_room/lights_overlay.svg',
                  color: const Color.fromRGBO(255, 255, 255, 0),
            ),
          ),
        ),
      ),
      GestureDetector(
        onTap: _tapReset,
        child: Container(
            height: 0.3 * screenWidth,
            width: screenWidth,
            color: const Color.fromRGBO(255, 255, 255, 0)),
      ),
      GestureDetector(
        onTap: _tapReset,
        child: Container(
            height: 0.65 * screenWidth,
            width: 0.33 * screenWidth,
            color: const Color.fromRGBO(255, 255, 255, 0)),
      ),
    ]);
  }
}