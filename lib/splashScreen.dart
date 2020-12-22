import 'dart:async';
import 'package:ehjez/mainpage.dart';
import 'package:flutter/material.dart';
import 'package:ehjez/loginPage.dart';

class splashPage extends StatefulWidget {
  @override
  _splashPageState createState() => _splashPageState();
}

     class _splashPageState extends State<splashPage> {
         void completed(){
             Navigator.pushReplacementNamed(context, '/');
         }


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 5), completed);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Container(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 100, 0, 45),
            child: Image.asset("assets/Ehjez-Logo.png", width: 270,),
          ),
          Divider(
            height: 1,
            color: Colors.white,
            thickness: 2,
            indent: 50,
            endIndent: 50,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 45, 0, 0),
            child: Image.asset("assets/mohlogo.png", height: 160,),
          ),
        ],
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
      ),
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.bottomLeft,
              end: Alignment.topRight,
              colors: [Color.fromRGBO(31, 112, 138, 1), Color.fromRGBO(64,162,117, 1)])
      ),
    ));
  }
}
