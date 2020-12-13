import 'package:flutter/material.dart';



class mainscreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Container(
            child: Stack(
              children: <Widget>[ Scaffold(
                backgroundColor: Colors.transparent,
                extendBodyBehindAppBar: true,
                appBar: AppBar(
                  title: Center(child: Image.asset(
                    "assets/Ehjez-Logo.png", width: 65, height: 65,)),
                  elevation: 0.0,
                  backgroundColor: Colors.grey[900].withOpacity(0.33),
                ),
                body: Center(
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
                          Padding(
                            padding: const EdgeInsets.fromLTRB(0, 90, 40, 0) ,
                            child: Text(
                              '                                                              احجز \nلحماية أسرتك',
                              textAlign: TextAlign.right,
                              style: TextStyle(
                                  fontSize: 40.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  fontFamily: "ElMessiri"
                              ),
                            ),
                          ),
                        ],
                      )
                  ),
                ),
              )
              ],
            )
        )
    );
  }




}