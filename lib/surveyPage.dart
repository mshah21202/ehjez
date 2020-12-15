import 'package:flutter/material.dart';
import "dart:ui";

class surveyPage extends StatefulWidget {
  @override
  _surveyPageState createState() => _surveyPageState();
}



class _surveyPageState extends State<surveyPage> {

  int groupValue = 2;
  void group (int e){
    print(e);
    setState(() {
      groupValue = e;
      if (groupValue == 3) {
        // Change National ID to Passport No./Residency No.
      } else if(groupValue == 2){
        // Change Passport No./Residency No. to National ID
      }
    });

  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.teal[300],
      body: Stack(
        children: [
      SafeArea(
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
          ),
        ),
      ),
    ),
          Column(
            children: [SafeArea(
              child: Row(
                children: [Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: IconButton(
                      icon: Icon(Icons.arrow_back_ios_outlined),
                      onPressed: () {Navigator.pop(context);},
                      color: Colors.white, iconSize: 19
                  ),
                ),
                ],
              ),
            ),
              Theme( data: ThemeData.dark(),
                child: Row(mainAxisAlignment: MainAxisAlignment.end,
                  children: [Text("أردني", style: TextStyle(color: Colors.white, fontFamily: "ElMessiri", fontSize: 18),),
                    Padding(
                    padding: const EdgeInsets.fromLTRB(15, 0, 30, 0),
                    child: Radio(value: 2,
                      groupValue: groupValue,
                      onChanged: (int e) => group(e),
                      activeColor: Colors.white,
                      focusColor: Colors.white,
                    ),
                  ),
                    ],
                ),
              ),
              Theme(data: ThemeData.dark(),
                child: Row( mainAxisAlignment: MainAxisAlignment.end,
                  children: [Text("جنسية أخره", style: TextStyle(color: Colors.white, fontFamily: "ElMessiri", fontSize: 18)),
                    Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0, 30, 0),
                    child: Radio(value: 3,
                      groupValue: groupValue,
                      onChanged: (int e) => group(e),
                      activeColor: Colors.white,
                      focusColor: Colors.white,
                    ),
                  )],
                ),
              )
            ],
          )
        ]
      )
    );
  }
}

