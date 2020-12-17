import 'package:ehjez/ReservationScreen.dart';
import 'package:flutter/material.dart';


class infoscreen  extends StatelessWidget {
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
          children: [
            Row(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 40, 0, 0),
                  child: Image.asset(
                    "assets/Ehjez-Logo.png", width: 200, height: 200,)
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(30, 20, 30, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: ButtonTheme(
                      height: 70,
                      child: RaisedButton(
                        child: Text("عن احجز",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontFamily: "ElMessiri")
                        ),
                        onPressed: () {Navigator.pushNamed(context, '/about');},
                        color: Color.fromRGBO(46,168,172, 1),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),

                      ),

                    ),
                  ),

                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(30, 50, 30, 0),
              child: Row(
                children: [
                  Expanded(
                    child: ButtonTheme(
                      height: 70,
                      child: RaisedButton(
                        child: Text("المساعدة",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold,
                                color: Color.fromRGBO(46,168,172, 1),
                                fontFamily: "ElMessiri")
                        ),
                        onPressed: () {Navigator.pushNamed(context, '/help');},
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),

                      ),

                    ),
                  ),
                ],
              ),
            ),
          ]
      ),




    ),
    ),
          ),
        ),
        ),
    );











  }}