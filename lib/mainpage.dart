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
              title: Center(child: Image.asset("assets/Ehjez-Logo.png", width:65 ,height: 65,)),
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
                child: Container( alignment: Alignment(0.9,-0.8),
                  child: Text('                                                              احجز                لحماية أسرتك',
                    textAlign: TextAlign.right,
                    style: TextStyle(
                        fontSize:50.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white
                    ),
                  ),



                )
            ),
          )],
        ),
      ),

    );
  }}



