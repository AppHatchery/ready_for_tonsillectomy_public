import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rive/rive.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../main.dart';

/// Create playable stretcher state machine.
class StretcherSMSpanish extends StatefulWidget {
  const StretcherSMSpanish({Key? key}) : super(key: key);

  @override
  _StretcherSMSpanishState createState() => _StretcherSMSpanishState();
}

class _StretcherSMSpanishState extends State<StretcherSMSpanish> {
  SMITrigger? _blue;
  SMITrigger? _green;
  SMITrigger? _orange;
  SMITrigger? _red;
  SMITrigger? _purple;

  void _onRiveInit(Artboard artboard) {
    final controller =
    StateMachineController.fromArtboard(artboard, 'State Machine 1');
    artboard.addController(controller!);
    _blue = controller.findInput<bool>('tap_blue') as SMITrigger;
    _green = controller.findInput<bool>('tap_green') as SMITrigger;
    _orange = controller.findInput<bool>('tap_orange') as SMITrigger;
    _red = controller.findInput<bool>('tap_red') as SMITrigger;
    _purple = controller.findInput<bool>('tap_purple') as SMITrigger;
  }

  void _tapBlue() => _blue?.fire();

  void _tapGreen() => _green?.fire();

  void _tapOrange() => _orange?.fire();

  void _tapRed() => _red?.fire();

  void _tapPurple() => _purple?.fire();

  @override
  Widget build(BuildContext context) {
    return Column(mainAxisSize: MainAxisSize.min, children: [
      Stack(alignment: Alignment.bottomCenter, children: [
        SizedBox(
              height: 0.3173 * screenWidth,
              width: screenWidth,
              child: const RiveAnimation.asset('assets/pacu/popsicles.riv')),
        Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              SizedBox(
                height: 0.2014 * screenWidth,
                width: 0.1309 * screenWidth,
                child: GestureDetector(
                  onTap: _tapBlue,
                  child: SvgPicture.asset('assets/pacu/blue_overlay.svg',
                        color: const Color.fromRGBO(255, 255, 255, 0),
                  ),
                ),
              ),
              SizedBox(
                height: 0.2548 * screenWidth,
                width: 0.1153 * screenWidth,
                child: GestureDetector(
                  onTap: _tapGreen,
                  child: SvgPicture.asset('assets/pacu/green_overlay.svg',
                        color: const Color.fromRGBO(255, 255, 255, 0),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    left: 0.0248 * screenWidth, right: 0.0248 * screenWidth),
                child: SizedBox(
                  height: 0.2761 * screenWidth,
                  width: 0.0542 * screenWidth,
                  child: GestureDetector(
                    onTap: _tapOrange,
                    child: SvgPicture.asset('assets/pacu/orange_overlay.svg',
                          color: const Color.fromRGBO(255, 255, 255, 0),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 0.2548 * screenWidth,
                width: 0.1153 * screenWidth,
                child: GestureDetector(
                  onTap: _tapRed,
                  child: SvgPicture.asset('assets/pacu/red_overlay.svg',
                        color: const Color.fromRGBO(255, 255, 255, 0),
                  ),
                ),
              ),
              SizedBox(
                height: 0.2014 * screenWidth,
                width: 0.1309 * screenWidth,
                child: GestureDetector(
                  onTap: _tapPurple,
                  child: SvgPicture.asset('assets/pacu/purple_overlay.svg',
                        color: const Color.fromRGBO(255, 255, 255, 0),
                  ),
                ),
              ),
            ]),
      ]),
      SizedBox(
          height: 1.2933 * screenWidth,
          width: screenWidth,
          child: RiveAnimation.asset('assets/pacu/stretcher_sm_spanish.riv',
              stateMachines: const ['State Machine 1'], onInit: _onRiveInit),
        ),
    ]);
  }
}