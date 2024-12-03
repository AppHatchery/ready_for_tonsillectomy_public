import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HubPageYoungerSpanish extends StatefulWidget {
  const HubPageYoungerSpanish({Key? key}) : super(key: key);

  @override
  State<HubPageYoungerSpanish> createState() => _HubPageYoungerSpanishState();
}

class _HubPageYoungerSpanishState extends State<HubPageYoungerSpanish> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hub Page Younger Spanish'),
      ),
      body: const Center(
        child: Text('Hub Page Younger Spanish'),
      ),
    );
  }
}
