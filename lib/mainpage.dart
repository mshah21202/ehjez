import 'package:ehjez/ReservationScreen.dart';
import 'package:ehjez/infoscreen.dart';
import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:flutter/services.dart';


class mainscreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return MaterialApp(
        home: Container(
            child: Stack(
              children: <Widget>[
                Scaffold(
                extendBodyBehindAppBar: true,
                backgroundColor: Colors.teal[300],
                appBar: AppBar(
                  title: Center(child: Image.asset(
                    "assets/Ehjez-Logo.png", width: 80, height: 80,)),
                  elevation: 0.0,
                  backgroundColor: Colors.grey[900].withOpacity(0.5),
                ),
                body: Stack(children: [Padding(
                padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
                  child: Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage(
                          'assets/bgimg.jpg',
                        ),
                      ),
                    ),
                    height: 500,
                  ),
                ),
                  Center(
                  child: Padding(
                    padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
                    child: new Container(
                      width: double.infinity,
                      height: double.infinity,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.bottomLeft,
                          end: Alignment.topRight,
                          stops: [0.45,0.7,0.9,1.0],
                          colors: [
                            Color.fromRGBO(31, 112, 138, 1),
                            Color.fromRGBO(31, 112, 138, 0.5),
                            Color.fromRGBO(64, 162, 117, 0.5),
                            Color.fromRGBO(64, 162, 117, 1),
                          ],
                        ),
                      ),
                      child: Column(
                          children: [
                            Row(mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.fromLTRB(0, 120, 30, 0),
                                  child: Text(
                                    'احجز \nلحماية أسرتك',
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
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(30, 120, 30, 0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Expanded(
                                    child: ButtonTheme(
                                        height: 70,
                                        child: RaisedButton(
                                          child: Text("إحجز الأن",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  fontFamily: "ElMessiri")
                                          ),
                                          onPressed: () {Navigator.pushNamed(context, '/reserve');},
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
                                        child: Text("إعرف المزيد",
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                fontSize: 20.0,
                                                fontWeight: FontWeight.bold,
                                                color: Color.fromRGBO(46,168,172, 1),
                                                fontFamily: "ElMessiri")
                                        ),
                                        onPressed: () {Navigator.pushNamed(context, '/info');},
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
                ),]
              )
                )],
            )
        )
    );
  }
}



//           Container(
//                 child: GestureDetector(
//                     onTap: () {
//                       Navigator.push(
//                         context,
//                         MaterialPageRoute(
//                           builder: (context){
//                             return Reservationscreen();
//                           },),);}
//
//
//
//
//                 ,child: Padding(
//               padding: const EdgeInsets.only(top: 80),
//                   child: Container(
//                     padding: EdgeInsets.symmetric(
//                         horizontal: 26, vertical: 16),
//                     decoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(30),
//                         color: Colors.cyan[600]
//                     ),
//                     child: Row(
//                       children: [SizedBox(width: 109),
//                         Text("أحجز الأن"
//                             , style: TextStyle(
//                                 fontWeight: FontWeight.bold,
//                                 color: Colors.white,
//                                 fontSize: 24,fontFamily: "ElMessiri"),textAlign: TextAlign.center, ),
//                       ]
//                   ),
//                   )
//                   ),
//             ),
// ),
//
//       Container(
//         child: GestureDetector(
//             onTap: () {
//               Navigator.push(
//                 context,
//                 MaterialPageRoute(
//                   builder: (context){
//                     return infoscreen();
//                   },),);}
//
//
//
//           ,child: Padding(
//   padding: const EdgeInsets.only(bottom: 200),
//     child: Container(
//       padding: EdgeInsets.symmetric(
//           horizontal: 26, vertical: 16),
//       decoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(30),
//           color: Colors.white
//       ),
//       child:
//       Row(
//           children: [SizedBox(width: 100),
//             Text("اعرف المزيد"
//               , style: TextStyle(
//                   fontWeight: FontWeight.bold,
//                   color: Colors.cyan[600],
//                   fontSize: 24,fontFamily: "ElMessiri"),textAlign: TextAlign.center, ),
//
//           ]
//       ),
//     ),
// ),
//
//       ))