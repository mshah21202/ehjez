import 'package:flutter/material.dart';



class mainscreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     home: Container(
       child: Stack(
         children: <Widget>[ Scaffold(
        backgroundColor: Colors.transparent,
        extendBodyBehindAppBar:true,
        appBar: AppBar(
          title: Center(child: Image.network("")),
          elevation: 0.0,
          backgroundColor: Colors.grey[900].withOpacity(0.33),
        ),
           body: new Container(

             decoration: BoxDecoration(
                 gradient: LinearGradient(
                     begin: Alignment.bottomLeft,
                     end: Alignment.topRight,
                     colors: [Color.fromRGBO(31, 112, 138, 1), Color.fromRGBO(64,162,117, 1)],
                 ),),
             child:Center(
             child: Text(' احجز \n لحماية أسرتك', style: TextStyle(fontSize:54.0, color: Colors.white, fontFamily: "Roboto"), textDirection: TextDirection.rtl,
             )  ),
               alignment: Alignment.topRight,

           )
      ),
    ],
       ),
    ),

     );
  }}



