import 'package:ehjez/ReservationScreen.dart';
import 'package:flutter/material.dart';


class helpScreen  extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal[300],
      body: SingleChildScrollView(child: SafeArea(
        child: Container(
          height:1500 ,
          width: MediaQuery.of(context).size.width,
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

            child: Column(


            )
            ),),),),),
    );











  }}