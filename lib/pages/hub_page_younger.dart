import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HubPageYounger extends StatefulWidget {
  const HubPageYounger({Key? key}) : super(key: key);

  @override
  State<HubPageYounger> createState() => _HubPageYoungerState();
}

class _HubPageYoungerState extends State<HubPageYounger> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hub Page Younger'),
      ),
      body: const Center(
        child: Text('Hub Page Younger'),
      ),
    );
  }
}
