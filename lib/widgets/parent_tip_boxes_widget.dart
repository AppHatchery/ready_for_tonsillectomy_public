import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import '../main.dart';

/// Create text boxes.
Widget box1() {
  return Padding(
    padding: EdgeInsets.only(top: 0.0587 * screenWidth),
    child: Container(
      width: 0.8827 * screenWidth,
      decoration: BoxDecoration(
        color: HexColor("#bdd7ea"),
        borderRadius: BorderRadius.all(Radius.circular(0.0333 * screenWidth)),
      ),
      child: Padding(
        padding: EdgeInsets.only(
            left: 0.0587 * screenWidth,
            top: 0.0587 * screenWidth,
            bottom: 0.0587 * screenWidth),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("before surgery, your child should",
                  style: TextStyle(
                      letterSpacing: 0,
                      height: 1.2,
                      fontFamily: "atrament",
                      fontSize: 0.0667 * screenWidth,
                      color: HexColor("#3474a2"))),
              SizedBox(height: 0.04 * screenWidth),
              Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Text("•  ",
                    style: TextStyle(
                        letterSpacing: 0,
                        height: 1.2,
                        fontFamily: "proxima",
                        fontSize: 0.0533 * screenWidth,
                        color: HexColor("#214b68"))),
                Text("Use this app and talk to you about \nsurgery.",
                    style: TextStyle(
                        letterSpacing: 0,
                        height: 1.2,
                        fontFamily: "proxima",
                        fontSize: 0.0533 * screenWidth,
                        color: HexColor("#214b68"))),
              ]),
              SizedBox(height: 0.04 * screenWidth),
              Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Text("•  ",
                    style: TextStyle(
                        letterSpacing: 0,
                        height: 1.2,
                        fontFamily: "proxima",
                        fontSize: 0.0533 * screenWidth,
                        color: HexColor("#214b68"))),
                RichText(
                  text: TextSpan(
                      text: "Eat a healthy dinner the night before. \n",
                      style: TextStyle(
                          letterSpacing: 0,
                          height: 1.2,
                          fontFamily: "proxima",
                          fontSize: 0.0533 * screenWidth,
                          color: HexColor("#214b68")),
                      children: const <TextSpan>[
                        TextSpan(
                            text: "No eating after midnight.",
                            style: TextStyle(
                                letterSpacing: 0,
                                height: 1.2,
                                fontWeight: FontWeight.bold)),
                      ]),
                ),
              ]),
              SizedBox(height: 0.04 * screenWidth),
              Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Text("•  ",
                    style: TextStyle(
                        letterSpacing: 0,
                        height: 1.2,
                        fontFamily: "proxima",
                        fontSize: 0.0533 * screenWidth,
                        color: HexColor("#214b68"))),
                RichText(
                  text: TextSpan(
                      text: "Have a ",
                      style: TextStyle(
                          letterSpacing: 0,
                          height: 1.2,
                          fontFamily: "proxima",
                          fontSize: 0.0533 * screenWidth,
                          color: HexColor("#214b68")),
                      children: const <TextSpan>[
                        TextSpan(
                            text: "clear, sugary drink",
                            style: TextStyle(
                                letterSpacing: 0,
                                height: 1.2,
                                fontWeight: FontWeight.bold)),
                        TextSpan(
                            text:
                                " in the \nmorning. Apple juice or sports drinks \nare good choices."),
                      ]),
                ),
              ]),
              SizedBox(height: 0.04 * screenWidth),
              Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Text("•  ",
                    style: TextStyle(
                        letterSpacing: 0,
                        height: 1.2,
                        fontFamily: "proxima",
                        fontSize: 0.0533 * screenWidth,
                        color: HexColor("#214b68"))),
                RichText(
                  text: TextSpan(
                      text: "",
                      style: TextStyle(
                          letterSpacing: 0,
                          height: 1.2,
                          fontFamily: "proxima",
                          fontSize: 0.0533 * screenWidth,
                          color: HexColor("#214b68")),
                      children: const <TextSpan>[
                        TextSpan(
                            text: "Stop drinking",
                            style: TextStyle(
                                letterSpacing: 0,
                                height: 1.2,
                                fontWeight: FontWeight.bold)),
                        TextSpan(
                            text:
                                " 2 hours before. That \nkeeps surgery safe and on time."),
                      ]),
                ),
              ]),
            ]),
      ),
    ),
  );
}

Widget box2() {
  return Padding(
    padding: EdgeInsets.only(top: 0.0587 * screenWidth),
    child: Container(
      width: 0.8827 * screenWidth,
      decoration: BoxDecoration(
        color: HexColor("#bdd7ea"),
        borderRadius: BorderRadius.all(Radius.circular(0.0333 * screenWidth)),
      ),
      child: Padding(
        padding: EdgeInsets.only(
            left: 0.0587 * screenWidth,
            top: 0.0587 * screenWidth,
            bottom: 0.0587 * screenWidth),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("after surgery, your child should",
                  style: TextStyle(
                      letterSpacing: 0,
                      height: 1.2,
                      fontFamily: "atrament",
                      fontSize: 0.0667 * screenWidth,
                      color: HexColor("#3474a2"))),
              SizedBox(height: 0.04 * screenWidth),
              Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Text("•  ",
                    style: TextStyle(
                        letterSpacing: 0,
                        height: 1.2,
                        fontFamily: "proxima",
                        fontSize: 0.0533 * screenWidth,
                        color: HexColor("#214b68"))),
                Text(
                    "Take their medicine. To help your \nchild heal faster, follow the directions.",
                    style: TextStyle(
                        letterSpacing: 0,
                        height: 1.2,
                        fontFamily: "proxima",
                        fontSize: 0.0533 * screenWidth,
                        color: HexColor("#214b68"))),
              ]),
              SizedBox(height: 0.04 * screenWidth),
              Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Text("•  ",
                    style: TextStyle(
                        letterSpacing: 0,
                        height: 1.2,
                        fontFamily: "proxima",
                        fontSize: 0.0533 * screenWidth,
                        color: HexColor("#214b68"))),
                Text("Drink lots.",
                    style: TextStyle(
                        letterSpacing: 0,
                        height: 1.2,
                        fontFamily: "proxima",
                        fontSize: 0.0533 * screenWidth,
                        color: HexColor("#214b68"))),
              ]),
              SizedBox(height: 0.04 * screenWidth),
              Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Text("•  ",
                    style: TextStyle(
                        letterSpacing: 0,
                        height: 1.2,
                        fontFamily: "proxima",
                        fontSize: 0.0533 * screenWidth,
                        color: HexColor("#214b68"))),
                Text("Avoid running or sports for 2 weeks.",
                    style: TextStyle(
                        letterSpacing: 0,
                        height: 1.2,
                        fontFamily: "proxima",
                        fontSize: 0.0533 * screenWidth,
                        color: HexColor("#214b68"))),
              ]),
              SizedBox(height: 0.04 * screenWidth),
              Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Text("•  ",
                    style: TextStyle(
                        letterSpacing: 0,
                        height: 1.2,
                        fontFamily: "proxima",
                        fontSize: 0.0533 * screenWidth,
                        color: HexColor("#214b68"))),
                Text("Stay away from sick people.",
                    style: TextStyle(
                        letterSpacing: 0,
                        height: 1.2,
                        fontFamily: "proxima",
                        fontSize: 0.0533 * screenWidth,
                        color: HexColor("#214b68"))),
              ]),
              SizedBox(height: 0.04 * screenWidth),
              Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Text("•  ",
                    style: TextStyle(
                        letterSpacing: 0,
                        height: 1.2,
                        fontFamily: "proxima",
                        fontSize: 0.0533 * screenWidth,
                        color: HexColor("#214b68"))),
                Text("Go back to school in 7-10 days.",
                    style: TextStyle(
                        letterSpacing: 0,
                        height: 1.2,
                        fontFamily: "proxima",
                        fontSize: 0.0533 * screenWidth,
                        color: HexColor("#214b68"))),
              ]),
            ]),
      ),
    ),
  );
}

Widget box3() {
  return Padding(
    padding: EdgeInsets.only(top: 0.0587 * screenWidth),
    child: Container(
      width: 0.8827 * screenWidth,
      decoration: BoxDecoration(
        color: HexColor("#bdd7ea"),
        borderRadius: BorderRadius.all(Radius.circular(0.0333 * screenWidth)),
      ),
      child: Padding(
        padding: EdgeInsets.only(
            left: 0.0587 * screenWidth,
            top: 0.0587 * screenWidth,
            bottom: 0.0587 * screenWidth),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("feeding your child after surgery",
                  style: TextStyle(
                      letterSpacing: 0,
                      height: 1.2,
                      fontFamily: "atrament",
                      fontSize: 0.0667 * screenWidth,
                      color: HexColor("#3474a2"))),
              SizedBox(height: 0.04 * screenWidth),
              Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Text("•  ",
                    style: TextStyle(
                        letterSpacing: 0,
                        height: 1.2,
                        fontFamily: "proxima",
                        fontSize: 0.0533 * screenWidth,
                        color: HexColor("#214b68"))),
                RichText(
                  text: TextSpan(
                      text: "",
                      style: TextStyle(
                          letterSpacing: 0,
                          height: 1.2,
                          fontFamily: "proxima",
                          fontSize: 0.0533 * screenWidth,
                          color: HexColor("#214b68")),
                      children: const <TextSpan>[
                        TextSpan(
                            text: "Drinking is most important.",
                            style: TextStyle(
                                letterSpacing: 0,
                                height: 1.2,
                                fontWeight: FontWeight.bold)),
                        TextSpan(
                            text:
                                "\nWater, milk, juice, and sports drinks \nare good choices."),
                      ]),
                ),
              ]),
              SizedBox(height: 0.04 * screenWidth),
              Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Text("•  ",
                    style: TextStyle(
                        letterSpacing: 0,
                        height: 1.2,
                        fontFamily: "proxima",
                        fontSize: 0.0533 * screenWidth,
                        color: HexColor("#214b68"))),
                RichText(
                  text: TextSpan(
                      text: "",
                      style: TextStyle(
                          letterSpacing: 0,
                          height: 1.2,
                          fontFamily: "proxima",
                          fontSize: 0.0533 * screenWidth,
                          color: HexColor("#214b68")),
                      children: const <TextSpan>[
                        TextSpan(
                            text: "Cold",
                            style: TextStyle(
                                letterSpacing: 0,
                                height: 1.2,
                                fontWeight: FontWeight.bold)),
                        TextSpan(
                            text:
                                " drinks and foods like \npopsicles help most."),
                      ]),
                ),
              ]),
              SizedBox(height: 0.04 * screenWidth),
              Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Text("•  ",
                    style: TextStyle(
                        letterSpacing: 0,
                        height: 1.2,
                        fontFamily: "proxima",
                        fontSize: 0.0533 * screenWidth,
                        color: HexColor("#214b68"))),
                RichText(
                  text: TextSpan(
                      text: "Give ",
                      style: TextStyle(
                          letterSpacing: 0,
                          height: 1.2,
                          fontFamily: "proxima",
                          fontSize: 0.0533 * screenWidth,
                          color: HexColor("#214b68")),
                      children: const <TextSpan>[
                        TextSpan(
                            text: "soft foods.",
                            style: TextStyle(
                                letterSpacing: 0,
                                height: 1.2,
                                fontWeight: FontWeight.bold)),
                        TextSpan(
                            text:
                                " Crunchy, spicy, \nsalty, or sour foods can hurt your \nchild’s throat."),
                      ]),
                ),
              ]),
              SizedBox(height: 0.04 * screenWidth),
              Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Text("•  ",
                    style: TextStyle(
                        letterSpacing: 0,
                        height: 1.2,
                        fontFamily: "proxima",
                        fontSize: 0.0533 * screenWidth,
                        color: HexColor("#214b68"))),
                Text("Follow any special instructions \nfrom the doctor.",
                    style: TextStyle(
                        letterSpacing: 0,
                        height: 1.2,
                        fontFamily: "proxima",
                        fontSize: 0.0533 * screenWidth,
                        color: HexColor("#214b68"))),
              ]),
            ]),
      ),
    ),
  );
}

Widget box4() {
  return Padding(
    padding: EdgeInsets.only(top: 0.0587 * screenWidth),
    child: Container(
      width: 0.8827 * screenWidth,
      decoration: BoxDecoration(
        color: HexColor("#bdd7ea"),
        borderRadius: BorderRadius.all(Radius.circular(0.0333 * screenWidth)),
      ),
      child: Padding(
        padding: EdgeInsets.only(
            left: 0.0587 * screenWidth,
            top: 0.0587 * screenWidth,
            bottom: 0.0587 * screenWidth),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("what's normal after tonsil surgery",
                  style: TextStyle(
                      letterSpacing: 0,
                      height: 1.2,
                      fontFamily: "atrament",
                      fontSize: 0.0667 * screenWidth,
                      color: HexColor("#3474a2"))),
              SizedBox(height: 0.04 * screenWidth),
              Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Text("•  ",
                    style: TextStyle(
                        letterSpacing: 0,
                        height: 1.2,
                        fontFamily: "proxima",
                        fontSize: 0.0533 * screenWidth,
                        color: HexColor("#214b68"))),
                RichText(
                  text: TextSpan(
                      text: "",
                      style: TextStyle(
                          letterSpacing: 0,
                          height: 1.2,
                          fontFamily: "proxima",
                          fontSize: 0.0533 * screenWidth,
                          color: HexColor("#214b68")),
                      children: const <TextSpan>[
                        TextSpan(
                            text: "Specks",
                            style: TextStyle(
                                letterSpacing: 0,
                                height: 1.2,
                                fontWeight: FontWeight.bold)),
                        TextSpan(
                            text:
                                " of dark blood when your \nchild spits or blows their nose."),
                      ]),
                ),
              ]),
              SizedBox(height: 0.04 * screenWidth),
              Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Text("•  ",
                    style: TextStyle(
                        letterSpacing: 0,
                        height: 1.2,
                        fontFamily: "proxima",
                        fontSize: 0.0533 * screenWidth,
                        color: HexColor("#214b68"))),
                RichText(
                  text: TextSpan(
                      text: "A ",
                      style: TextStyle(
                          letterSpacing: 0,
                          height: 1.2,
                          fontFamily: "proxima",
                          fontSize: 0.0533 * screenWidth,
                          color: HexColor("#214b68")),
                      children: const <TextSpan>[
                        TextSpan(
                            text: "low",
                            style: TextStyle(
                                letterSpacing: 0,
                                height: 1.2,
                                fontWeight: FontWeight.bold)),
                        TextSpan(text: " fever (< 101.5 °F)."),
                      ]),
                ),
              ]),
              SizedBox(height: 0.04 * screenWidth),
              Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Text("•  ",
                    style: TextStyle(
                        letterSpacing: 0,
                        height: 1.2,
                        fontFamily: "proxima",
                        fontSize: 0.0533 * screenWidth,
                        color: HexColor("#214b68"))),
                Text("An upset stomach.",
                    style: TextStyle(
                        letterSpacing: 0,
                        height: 1.2,
                        fontFamily: "proxima",
                        fontSize: 0.0533 * screenWidth,
                        color: HexColor("#214b68"))),
              ]),
              SizedBox(height: 0.04 * screenWidth),
              Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Text("•  ",
                    style: TextStyle(
                        letterSpacing: 0,
                        height: 1.2,
                        fontFamily: "proxima",
                        fontSize: 0.0533 * screenWidth,
                        color: HexColor("#214b68"))),
                Text("Smelly or noisy breathing.",
                    style: TextStyle(
                        letterSpacing: 0,
                        height: 1.2,
                        fontFamily: "proxima",
                        fontSize: 0.0533 * screenWidth,
                        color: HexColor("#214b68"))),
              ]),
              SizedBox(height: 0.04 * screenWidth),
              Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Text("•  ",
                    style: TextStyle(
                        letterSpacing: 0,
                        height: 1.2,
                        fontFamily: "proxima",
                        fontSize: 0.0533 * screenWidth,
                        color: HexColor("#214b68"))),
                Text("Ear pain.",
                    style: TextStyle(
                        letterSpacing: 0,
                        height: 1.2,
                        fontFamily: "proxima",
                        fontSize: 0.0533 * screenWidth,
                        color: HexColor("#214b68"))),
              ]),
              SizedBox(height: 0.04 * screenWidth),
              Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Text("•  ",
                    style: TextStyle(
                        letterSpacing: 0,
                        height: 1.2,
                        fontFamily: "proxima",
                        fontSize: 0.0533 * screenWidth,
                        color: HexColor("#214b68"))),
                Text("White patches in the throat.",
                    style: TextStyle(
                        letterSpacing: 0,
                        height: 1.2,
                        fontFamily: "proxima",
                        fontSize: 0.0533 * screenWidth,
                        color: HexColor("#214b68"))),
              ]),
              SizedBox(height: 0.04 * screenWidth),
              Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Text("•  ",
                    style: TextStyle(
                        letterSpacing: 0,
                        height: 1.2,
                        fontFamily: "proxima",
                        fontSize: 0.0533 * screenWidth,
                        color: HexColor("#214b68"))),
                Text("Feeling worse after a few days.",
                    style: TextStyle(
                        letterSpacing: 0,
                        height: 1.2,
                        fontFamily: "proxima",
                        fontSize: 0.0533 * screenWidth,
                        color: HexColor("#214b68"))),
              ]),
            ]),
      ),
    ),
  );
}

Widget box5() {
  return Padding(
    padding: EdgeInsets.only(top: 0.0587 * screenWidth),
    child: Container(
      width: 0.8827 * screenWidth,
      decoration: BoxDecoration(
        color: HexColor("#bdd7ea"),
        borderRadius: BorderRadius.all(Radius.circular(0.0333 * screenWidth)),
      ),
      child: Padding(
        padding: EdgeInsets.only(
            left: 0.0587 * screenWidth,
            top: 0.0587 * screenWidth,
            bottom: 0.0587 * screenWidth),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("go to the doctor if your child",
                  style: TextStyle(
                      letterSpacing: 0,
                      height: 1.2,
                      fontFamily: "atrament",
                      fontSize: 0.0667 * screenWidth,
                      color: HexColor("#3474a2"))),
              SizedBox(height: 0.04 * screenWidth),
              Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Text("•  ",
                    style: TextStyle(
                        letterSpacing: 0,
                        height: 1.2,
                        fontFamily: "proxima",
                        fontSize: 0.0533 * screenWidth,
                        color: HexColor("#214b68"))),
                RichText(
                  text: TextSpan(
                      text: "",
                      style: TextStyle(
                          letterSpacing: 0,
                          height: 1.2,
                          fontFamily: "proxima",
                          fontSize: 0.0533 * screenWidth,
                          color: HexColor("#214b68")),
                      children: const <TextSpan>[
                        TextSpan(
                            text: "Starts bleeding",
                            style: TextStyle(
                                letterSpacing: 0,
                                height: 1.2,
                                fontWeight: FontWeight.bold)),
                        TextSpan(text: " from their mouth \nor nose."),
                      ]),
                ),
              ]),
              SizedBox(height: 0.04 * screenWidth),
              Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Text("•  ",
                    style: TextStyle(
                        letterSpacing: 0,
                        height: 1.2,
                        fontFamily: "proxima",
                        fontSize: 0.0533 * screenWidth,
                        color: HexColor("#214b68"))),
                RichText(
                  text: TextSpan(
                      text: "Has a ",
                      style: TextStyle(
                          letterSpacing: 0,
                          height: 1.2,
                          fontFamily: "proxima",
                          fontSize: 0.0533 * screenWidth,
                          color: HexColor("#214b68")),
                      children: const <TextSpan>[
                        TextSpan(
                            text: "high",
                            style: TextStyle(
                                letterSpacing: 0,
                                height: 1.2,
                                fontWeight: FontWeight.bold)),
                        TextSpan(text: " fever."),
                      ]),
                ),
              ]),
              SizedBox(height: 0.04 * screenWidth),
              Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Text("•  ",
                    style: TextStyle(
                        letterSpacing: 0,
                        height: 1.2,
                        fontFamily: "proxima",
                        fontSize: 0.0533 * screenWidth,
                        color: HexColor("#214b68"))),
                Text("Keeps throwing up.",
                    style: TextStyle(
                        letterSpacing: 0,
                        height: 1.2,
                        fontFamily: "proxima",
                        fontSize: 0.0533 * screenWidth,
                        color: HexColor("#214b68"))),
              ]),
              SizedBox(height: 0.04 * screenWidth),
              Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Text("•  ",
                    style: TextStyle(
                        letterSpacing: 0,
                        height: 1.2,
                        fontFamily: "proxima",
                        fontSize: 0.0533 * screenWidth,
                        color: HexColor("#214b68"))),
                RichText(
                  text: TextSpan(
                      text: "Is ",
                      style: TextStyle(
                          letterSpacing: 0,
                          height: 1.2,
                          fontFamily: "proxima",
                          fontSize: 0.0533 * screenWidth,
                          color: HexColor("#214b68")),
                      children: const <TextSpan>[
                        TextSpan(
                            text: "dehydrated",
                            style: TextStyle(
                                letterSpacing: 0,
                                height: 1.2,
                                fontWeight: FontWeight.bold)),
                        TextSpan(
                            text:
                                " (dizzy, weak, \nurinates only 1-2 times a day)."),
                      ]),
                ),
              ]),
              SizedBox(height: 0.04 * screenWidth),
              Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Text("•  ",
                    style: TextStyle(
                        letterSpacing: 0,
                        height: 1.2,
                        fontFamily: "proxima",
                        fontSize: 0.0533 * screenWidth,
                        color: HexColor("#214b68"))),
                Text("Has a lot of trouble breathing.",
                    style: TextStyle(
                        letterSpacing: 0,
                        height: 1.2,
                        fontFamily: "proxima",
                        fontSize: 0.0533 * screenWidth,
                        color: HexColor("#214b68"))),
              ]),
            ]),
      ),
    ),
  );
}
