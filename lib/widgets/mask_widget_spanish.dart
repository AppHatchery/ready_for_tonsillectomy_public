import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rive/rive.dart';
import '../main.dart';

/// Create playable animation of boy putting mask on face.
class SittingMaskSMSpanish extends StatefulWidget {
  const SittingMaskSMSpanish({Key? key}) : super(key: key);

  @override
  _SittingMaskSMSpanishState createState() => _SittingMaskSMSpanishState();
}

class _SittingMaskSMSpanishState extends State<SittingMaskSMSpanish> {
  SMITrigger? _tap;

  void _onRiveInit(Artboard artboard) {
    final controller =
    StateMachineController.fromArtboard(artboard, 'State Machine 1');
    artboard.addController(controller!);
    _tap = controller.findInput<bool>('_tap') as SMITrigger;
  }

  void _tapMask() => _tap?.fire();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _tapMask,
      child: SizedBox(
          height: 1.3787 * screenWidth,
          width: screenWidth,
          child: RiveAnimation.asset('assets/sleep/boy_sitting_sm_spanish.riv',
              stateMachines: const ['State Machine 1'], onInit: _onRiveInit),
      ),
    );
  }
}