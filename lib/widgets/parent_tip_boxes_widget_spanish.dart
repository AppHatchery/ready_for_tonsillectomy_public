import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import '../main.dart';

/// Create text boxes.
Widget box1_spanish() {
  return Padding(
    padding: EdgeInsets.only(top: 0.0533 * screenWidth),
    child: Container(
      width: 0.8827 * screenWidth,
      decoration: BoxDecoration(
        color: HexColor("#bdd7ea"),
        borderRadius: BorderRadius.all(Radius.circular(0.0333 * screenWidth)),
      ),
      child: Padding(
        padding: EdgeInsets.only(
            left: 0.0533 * screenWidth,
            top: 0.0533 * screenWidth,
            bottom: 0.0533 * screenWidth),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text("antes de la cirugía, su hijo debe",
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
                        fontSize: 0.05 * screenWidth,
                        color: HexColor("#214b68"))),
                Text(
                    "Usar esta aplicación y hablar con \nustedes acerca de la cirugía.",
                    style: TextStyle(
                        letterSpacing: 0,
                        height: 1.2,
                        fontFamily: "proxima",
                        fontSize: 0.05 * screenWidth,
                        color: HexColor("#214b68"))),
              ]),
              SizedBox(height: 0.04 * screenWidth),
              Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Text("•  ",
                    style: TextStyle(
                        letterSpacing: 0,
                        height: 1.2,
                        fontFamily: "proxima",
                        fontSize: 0.05 * screenWidth,
                        color: HexColor("#214b68"))),
                RichText(
                  text: TextSpan(
                      text: "Comer una cena saludable la noche \nanterior. ",
                      style: TextStyle(
                          letterSpacing: 0,
                          height: 1.2,
                          fontFamily: "proxima",
                          fontSize: 0.05 * screenWidth,
                          color: HexColor("#214b68")),
                      children: const <TextSpan>[
                        TextSpan(
                            text:
                                "No puede comer nada \ndespués de la medianoche.",
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
                        fontSize: 0.05 * screenWidth,
                        color: HexColor("#214b68"))),
                RichText(
                  text: TextSpan(
                      text: "Tomar una ",
                      style: TextStyle(
                          letterSpacing: 0,
                          height: 1.2,
                          fontFamily: "proxima",
                          fontSize: 0.05 * screenWidth,
                          color: HexColor("#214b68")),
                      children: const <TextSpan>[
                        TextSpan(
                            text: "bebida transparente y \ndulce",
                            style: TextStyle(
                                letterSpacing: 0,
                                height: 1.2,
                                fontWeight: FontWeight.bold)),
                        TextSpan(
                            text:
                                " en la mañana. Jugo de manzana \ny refresco para deportistas son \nbuenas opciones."),
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
                        fontSize: 0.05 * screenWidth,
                        color: HexColor("#214b68"))),
                RichText(
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
                            text: "Dejar de beber líquidos",
                            style: TextStyle(
                                letterSpacing: 0,
                                height: 1.2,
                                fontWeight: FontWeight.bold)),
                        TextSpan(
                            text:
                                " 2 horas antes. \nEsto es por su seguridad y para que no \nhaya retrasos."),
                      ]),
                ),
              ]),
            ]),
      ),
    ),
  );
}

Widget box2_spanish() {
  return Padding(
    padding: EdgeInsets.only(top: 0.0533 * screenWidth),
    child: Container(
      width: 0.8827 * screenWidth,
      decoration: BoxDecoration(
        color: HexColor("#bdd7ea"),
        borderRadius: BorderRadius.all(Radius.circular(0.0333 * screenWidth)),
      ),
      child: Padding(
        padding: EdgeInsets.only(
            left: 0.0533 * screenWidth,
            top: 0.0533 * screenWidth,
            bottom: 0.0533 * screenWidth),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text("después de la cirugía, su hijo debe",
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
                        fontSize: 0.05 * screenWidth,
                        color: HexColor("#214b68"))),
                Text(
                    "Tomar las medicinas de acuerdo con las \ninstrucciones. Esto permitirá que su hijo \nsane más rápido.",
                    style: TextStyle(
                        letterSpacing: 0,
                        height: 1.2,
                        fontFamily: "proxima",
                        fontSize: 0.05 * screenWidth,
                        color: HexColor("#214b68"))),
              ]),
              SizedBox(height: 0.04 * screenWidth),
              Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Text("•  ",
                    style: TextStyle(
                        letterSpacing: 0,
                        height: 1.2,
                        fontFamily: "proxima",
                        fontSize: 0.05 * screenWidth,
                        color: HexColor("#214b68"))),
                Text("Beber muchos líquidos.",
                    style: TextStyle(
                        letterSpacing: 0,
                        height: 1.2,
                        fontFamily: "proxima",
                        fontSize: 0.05 * screenWidth,
                        color: HexColor("#214b68"))),
              ]),
              SizedBox(height: 0.04 * screenWidth),
              Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Text("•  ",
                    style: TextStyle(
                        letterSpacing: 0,
                        height: 1.2,
                        fontFamily: "proxima",
                        fontSize: 0.05 * screenWidth,
                        color: HexColor("#214b68"))),
                Text("Evitar correr o practicar deportes por 2 \nsemanas.",
                    style: TextStyle(
                        letterSpacing: 0,
                        height: 1.2,
                        fontFamily: "proxima",
                        fontSize: 0.05 * screenWidth,
                        color: HexColor("#214b68"))),
              ]),
              SizedBox(height: 0.04 * screenWidth),
              Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Text("•  ",
                    style: TextStyle(
                        letterSpacing: 0,
                        height: 1.2,
                        fontFamily: "proxima",
                        fontSize: 0.05 * screenWidth,
                        color: HexColor("#214b68"))),
                Text("Estar alejado de personas enfermas.",
                    style: TextStyle(
                        letterSpacing: 0,
                        height: 1.2,
                        fontFamily: "proxima",
                        fontSize: 0.05 * screenWidth,
                        color: HexColor("#214b68"))),
              ]),
              SizedBox(height: 0.04 * screenWidth),
              Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Text("•  ",
                    style: TextStyle(
                        letterSpacing: 0,
                        height: 1.2,
                        fontFamily: "proxima",
                        fontSize: 0.05 * screenWidth,
                        color: HexColor("#214b68"))),
                Text("Regresar a la escuela entre los 7 a 10 \ndías.",
                    style: TextStyle(
                        letterSpacing: 0,
                        height: 1.2,
                        fontFamily: "proxima",
                        fontSize: 0.05 * screenWidth,
                        color: HexColor("#214b68"))),
              ]),
            ]),
      ),
    ),
  );
}

Widget box3_spanish() {
  return Padding(
    padding: EdgeInsets.only(top: 0.0533 * screenWidth),
    child: Container(
      width: 0.8827 * screenWidth,
      decoration: BoxDecoration(
        color: HexColor("#bdd7ea"),
        borderRadius: BorderRadius.all(Radius.circular(0.0333 * screenWidth)),
      ),
      child: Padding(
        padding: EdgeInsets.only(
            left: 0.0533 * screenWidth,
            top: 0.0533 * screenWidth,
            bottom: 0.0533 * screenWidth),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text("alimentación después de la cirugía",
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
                        fontSize: 0.05 * screenWidth,
                        color: HexColor("#214b68"))),
                RichText(
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
                            text: "Lo más importante es que beba \nlíquidos.",
                            style: TextStyle(
                                letterSpacing: 0,
                                height: 1.2,
                                fontWeight: FontWeight.bold)),
                        TextSpan(
                            text:
                                " Agua, leche, jugo y refrescos \npara deportistas son buenas opciones."),
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
                        fontSize: 0.05 * screenWidth,
                        color: HexColor("#214b68"))),
                RichText(
                  text: TextSpan(
                      text: "Lo que más ayuda son las bebidas ",
                      style: TextStyle(
                          letterSpacing: 0,
                          height: 1.2,
                          fontFamily: "proxima",
                          fontSize: 0.05 * screenWidth,
                          color: HexColor("#214b68")),
                      children: const <TextSpan>[
                        TextSpan(
                            text: "frías",
                            style: TextStyle(
                                letterSpacing: 0,
                                height: 1.2,
                                fontWeight: FontWeight.bold)),
                        TextSpan(text: "\ny comidas como las paletas."),
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
                        fontSize: 0.05 * screenWidth,
                        color: HexColor("#214b68"))),
                RichText(
                  text: TextSpan(
                      text: "Dele ",
                      style: TextStyle(
                          letterSpacing: 0,
                          height: 1.2,
                          fontFamily: "proxima",
                          fontSize: 0.05 * screenWidth,
                          color: HexColor("#214b68")),
                      children: const <TextSpan>[
                        TextSpan(
                            text: "alimentos blandos.",
                            style: TextStyle(
                                letterSpacing: 0,
                                height: 1.2,
                                fontWeight: FontWeight.bold)),
                        TextSpan(
                            text:
                                " Comidas \ncrujientes, picantes, saladas o ácidas \npueden afectar la garganta de su hijo."),
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
                        fontSize: 0.05 * screenWidth,
                        color: HexColor("#214b68"))),
                Text(
                    "Siga cualquier instrucción especial que \nsu doctor le haya dado.",
                    style: TextStyle(
                        letterSpacing: 0,
                        height: 1.2,
                        fontFamily: "proxima",
                        fontSize: 0.05 * screenWidth,
                        color: HexColor("#214b68"))),
              ]),
            ]),
      ),
    ),
  );
}

Widget box4_spanish() {
  return Padding(
    padding: EdgeInsets.only(top: 0.0533 * screenWidth),
    child: Container(
      width: 0.8827 * screenWidth,
      decoration: BoxDecoration(
        color: HexColor("#bdd7ea"),
        borderRadius: BorderRadius.all(Radius.circular(0.0333 * screenWidth)),
      ),
      child: Padding(
        padding: EdgeInsets.only(
            left: 0.0533 * screenWidth,
            top: 0.0533 * screenWidth,
            bottom: 0.0533 * screenWidth),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text("qué es normal después de la cirugía",
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
                        fontSize: 0.05 * screenWidth,
                        color: HexColor("#214b68"))),
                RichText(
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
                            text: "Manchas",
                            style: TextStyle(
                                letterSpacing: 0,
                                height: 1.2,
                                fontWeight: FontWeight.bold)),
                        TextSpan(
                            text:
                                " de sangre oscura cuando su \nhijo escupe o se suena."),
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
                        fontSize: 0.05 * screenWidth,
                        color: HexColor("#214b68"))),
                RichText(
                  text: TextSpan(
                      text: "Fiebre ",
                      style: TextStyle(
                          letterSpacing: 0,
                          height: 1.2,
                          fontFamily: "proxima",
                          fontSize: 0.05 * screenWidth,
                          color: HexColor("#214b68")),
                      children: const <TextSpan>[
                        TextSpan(
                            text: "baja",
                            style: TextStyle(
                                letterSpacing: 0,
                                height: 1.2,
                                fontWeight: FontWeight.bold)),
                        TextSpan(text: " (menos de 101.5 °F)."),
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
                        fontSize: 0.05 * screenWidth,
                        color: HexColor("#214b68"))),
                Text("Malestar en el estómago.",
                    style: TextStyle(
                        letterSpacing: 0,
                        height: 1.2,
                        fontFamily: "proxima",
                        fontSize: 0.05 * screenWidth,
                        color: HexColor("#214b68"))),
              ]),
              SizedBox(height: 0.04 * screenWidth),
              Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Text("•  ",
                    style: TextStyle(
                        letterSpacing: 0,
                        height: 1.2,
                        fontFamily: "proxima",
                        fontSize: 0.05 * screenWidth,
                        color: HexColor("#214b68"))),
                Text("Respiración ruidosa y mal aliento.",
                    style: TextStyle(
                        letterSpacing: 0,
                        height: 1.2,
                        fontFamily: "proxima",
                        fontSize: 0.05 * screenWidth,
                        color: HexColor("#214b68"))),
              ]),
              SizedBox(height: 0.04 * screenWidth),
              Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Text("•  ",
                    style: TextStyle(
                        letterSpacing: 0,
                        height: 1.2,
                        fontFamily: "proxima",
                        fontSize: 0.05 * screenWidth,
                        color: HexColor("#214b68"))),
                Text("Dolor de oídos.",
                    style: TextStyle(
                        letterSpacing: 0,
                        height: 1.2,
                        fontFamily: "proxima",
                        fontSize: 0.05 * screenWidth,
                        color: HexColor("#214b68"))),
              ]),
              SizedBox(height: 0.04 * screenWidth),
              Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Text("•  ",
                    style: TextStyle(
                        letterSpacing: 0,
                        height: 1.2,
                        fontFamily: "proxima",
                        fontSize: 0.05 * screenWidth,
                        color: HexColor("#214b68"))),
                Text("Manchas blancas en la garganta.",
                    style: TextStyle(
                        letterSpacing: 0,
                        height: 1.2,
                        fontFamily: "proxima",
                        fontSize: 0.05 * screenWidth,
                        color: HexColor("#214b68"))),
              ]),
              SizedBox(height: 0.04 * screenWidth),
              Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Text("•  ",
                    style: TextStyle(
                        letterSpacing: 0,
                        height: 1.2,
                        fontFamily: "proxima",
                        fontSize: 0.05 * screenWidth,
                        color: HexColor("#214b68"))),
                Text("Que después de pasados unos días se \nsienta peor.",
                    style: TextStyle(
                        letterSpacing: 0,
                        height: 1.2,
                        fontFamily: "proxima",
                        fontSize: 0.05 * screenWidth,
                        color: HexColor("#214b68"))),
              ]),
            ]),
      ),
    ),
  );
}

Widget box5_spanish() {
  return Padding(
    padding: EdgeInsets.only(top: 0.0533 * screenWidth),
    child: Container(
      width: 0.8827 * screenWidth,
      decoration: BoxDecoration(
        color: HexColor("#bdd7ea"),
        borderRadius: BorderRadius.all(Radius.circular(0.0333 * screenWidth)),
      ),
      child: Padding(
        padding: EdgeInsets.only(
            left: 0.0533 * screenWidth,
            top: 0.0533 * screenWidth,
            bottom: 0.0533 * screenWidth),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text("vaya al doctor si su hijo ",
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
                        fontSize: 0.05 * screenWidth,
                        color: HexColor("#214b68"))),
                RichText(
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
                            text: "Empieza a sangrar",
                            style: TextStyle(
                                letterSpacing: 0,
                                height: 1.2,
                                fontWeight: FontWeight.bold)),
                        TextSpan(text: " por nariz o boca."),
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
                        fontSize: 0.05 * screenWidth,
                        color: HexColor("#214b68"))),
                RichText(
                  text: TextSpan(
                      text: "Tiene fiebre ",
                      style: TextStyle(
                          letterSpacing: 0,
                          height: 1.2,
                          fontFamily: "proxima",
                          fontSize: 0.05 * screenWidth,
                          color: HexColor("#214b68")),
                      children: const <TextSpan>[
                        TextSpan(
                            text: "alta",
                            style: TextStyle(
                                letterSpacing: 0,
                                height: 1.2,
                                fontWeight: FontWeight.bold)),
                        TextSpan(text: "."),
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
                        fontSize: 0.05 * screenWidth,
                        color: HexColor("#214b68"))),
                Text("No para de vomitar.",
                    style: TextStyle(
                        letterSpacing: 0,
                        height: 1.2,
                        fontFamily: "proxima",
                        fontSize: 0.05 * screenWidth,
                        color: HexColor("#214b68"))),
              ]),
              SizedBox(height: 0.04 * screenWidth),
              Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Text("•  ",
                    style: TextStyle(
                        letterSpacing: 0,
                        height: 1.2,
                        fontFamily: "proxima",
                        fontSize: 0.05 * screenWidth,
                        color: HexColor("#214b68"))),
                RichText(
                  text: TextSpan(
                      text: "Está ",
                      style: TextStyle(
                          letterSpacing: 0,
                          height: 1.2,
                          fontFamily: "proxima",
                          fontSize: 0.05 * screenWidth,
                          color: HexColor("#214b68")),
                      children: const <TextSpan>[
                        TextSpan(
                            text: "deshidratado",
                            style: TextStyle(
                                letterSpacing: 0,
                                height: 1.2,
                                fontWeight: FontWeight.bold)),
                        TextSpan(
                            text:
                                " (mareado, débil, solo \norina 1 a 2 veces al día)."),
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
                        fontSize: 0.05 * screenWidth,
                        color: HexColor("#214b68"))),
                Text("Tiene mucha dificultad para respirar.",
                    style: TextStyle(
                        letterSpacing: 0,
                        height: 1.2,
                        fontFamily: "proxima",
                        fontSize: 0.05 * screenWidth,
                        color: HexColor("#214b68"))),
              ]),
            ]),
      ),
    ),
  );
}
