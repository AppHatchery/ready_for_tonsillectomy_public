import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import '../main.dart';
import '../utils/constants.dart';

class AppBarWidgetSpanish extends StatelessWidget {
  final String title;
  final bool hasBackArrow;
  final Function()? callback;
  const AppBarWidgetSpanish(
      {Key? key,
      required this.title,
      required this.hasBackArrow,
      this.callback})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: HexColor("#ecf4f9"),
      titleSpacing: 0,
      leadingWidth: 0,
      automaticallyImplyLeading: false,
      toolbarHeight: 0.075 * screenHeight,
      title: Align(
        alignment: Alignment.topLeft,
        child: SizedBox(
          height: 0.065 * screenHeight,
          child: Row(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Visibility(
                  visible: hasBackArrow,
                  child: Padding(
                    padding: EdgeInsets.only(left: 0.035 * screenWidth),
                    child: IconButton(
                        onPressed: () {
                          if (callback != null) {
                            callback!();
                          }
                          Navigator.pop(context);
                        },
                        icon: Icon(CupertinoIcons.back,
                            size: 0.045 * screenHeight,
                            color: HexColor("#468fc3"))),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      top: 0.01 * screenHeight, left: 0.015 * screenWidth),
                  child: Text(title,
                      style: TextStyle(
                          letterSpacing: 0,
                          height: 1.2,
                          fontFamily: "atrament",
                          fontSize: 0.034 * screenHeight,
                          color: HexColor("#468fc3"))),
                ),
              ]),
        ),
      ),
      actions: [
        Align(
          alignment: Alignment.topRight,
          child: Builder(builder: (BuildContext context) {
            return Padding(
              padding: EdgeInsets.only(right: 0.0533 * screenWidth),
              child: IconButton(
                  onPressed: () {
                    Scaffold.of(context).openEndDrawer();
                  },
                  icon: Icon(CupertinoIcons.bars,
                      size: 0.055 * screenHeight, color: HexColor("#468fc3"))),
            );
          }),
        )
      ],
    );
  }
}
