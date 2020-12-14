import 'package:flutter/material.dart';


class Reservationscreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
     return MaterialApp(
      home: Container(
        child: Center(
          child: new Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.bottomLeft,
                end: Alignment.topRight,
                colors: [
                  Color.fromRGBO(31, 112, 138, 1),
                  Color.fromRGBO(64, 162, 117, 1)
                ],
              ),),
          ), ),),);


  }}