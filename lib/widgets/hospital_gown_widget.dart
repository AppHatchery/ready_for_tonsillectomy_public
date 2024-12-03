import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rive/rive.dart';
import '../main.dart';

/// Create playable hospital gown state machine.
class HospitalGownSM extends StatefulWidget {
  const HospitalGownSM({Key? key}) : super(key: key);

  @override
  _HospitalGownSMState createState() => _HospitalGownSMState();
}

class _HospitalGownSMState extends State<HospitalGownSM> {
  SMITrigger? _curtain;

  void _onRiveInit(Artboard artboard) {
    final controller =
    StateMachineController.fromArtboard(artboard, 'State Machine 1');
    artboard.addController(controller!);
    _curtain = controller.findInput<bool>('tap_curtain') as SMITrigger;
  }

  void _tapCurtain() => _curtain?.fire();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _tapCurtain,
      child: SizedBox(
          height: 1.2453 * screenWidth,
          width: screenWidth,
          child: RiveAnimation.asset(
              'assets/getting_ready/hospital_gown_sm.riv',
              stateMachines: const ['State Machine 1'],
              onInit: _onRiveInit),
      ),
    );
  }
}