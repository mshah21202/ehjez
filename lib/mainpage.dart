import 'package:ehjez/Reservation%20Screen.dart';
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
                    child: Column(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(0, 90, 40, 0),
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


                         Container(
                              child: GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context){
                                          return Reservationscreen();
                                        },),);} ),


                            child:  Padding(
                            padding: const EdgeInsets.only(top: 80),
                                child: Container(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 26, vertical: 16),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(30),
                                      color: Colors.cyan[600]
                                  ),
                                  child: Row(
                                    children: [SizedBox(width: 109),
                                      Text("أحجز الأن"
                                          , style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white,
                                              fontSize: 24,fontFamily: "ElMessiri"),textAlign: TextAlign.center, ),
                                    ]
                                ),
                                )
                                ),
                          ),


                    Container(child: Padding(
                padding: const EdgeInsets.only(bottom: 200),
                  child: Container(
                    padding: EdgeInsets.symmetric(
                        horizontal: 26, vertical: 16),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.white
                    ),
                    child:
                    Row(
                        children: [SizedBox(width: 100),
                          Text("اعرف المزيد"
                            , style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.cyan[600],
                                fontSize: 24,fontFamily: "ElMessiri"),textAlign: TextAlign.center, ),

                        ]
                    ),

              ),













                    ))]
                    ),
                  ),
                ),
              )
              ],
            )
        )
    );
  }




}