import 'package:flutter/material.dart';
import "dart:ui";

class surveyPageSec extends StatefulWidget {
  @override
  _surveyPageSecState createState() => _surveyPageSecState();
}



class _surveyPageSecState extends State<surveyPageSec> {

  int groupValue = 0;
  void group (int e){
    print(e);
    setState(() {
      groupValue = e;
    });

  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        resizeToAvoidBottomPadding: false,
        resizeToAvoidBottomInset: true,
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
              SingleChildScrollView(
                child: Column(
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
                    Center(
                      child: SingleChildScrollView(
                        child: Column(
                          children: [Padding(
                            padding: const EdgeInsets.fromLTRB(0, 0, 45, 0),
                            child: Row(mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text("هل لديك أمراض مزمنة؟", textAlign: TextAlign.end, style: TextStyle(
                                  color: Colors.white,
                                )
                                  ,)],
                            ),
                          ),
                            Row(
                              children: [Radio(value: 1, groupValue: null, onChanged: null)],
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(40, 40, 40, 40),
                              child: ButtonTheme(shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadiusDirectional.circular(20)
                              ),
                                child: RaisedButton(onPressed: () {Navigator.pushNamed(context, '/survey2');}, color: Color.fromRGBO(46,168,172, 1),
                                  child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                                    Text("التالي", style: TextStyle(color: Colors.white, fontFamily: "ElMessiri", fontSize: 25),),
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(20, 20, 0, 20),
                                      child: Icon(Icons.arrow_forward_outlined, color: Colors.white,),
                                    )
                                  ],)
                                  ,),
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              )
            ]
        )
    );
  }
}

