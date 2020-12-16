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
        var label = "test";
        // Change National ID to Passport No./Residency No.
      } else if(groupValue == 2){
        // Change Passport No./Residency No. to National ID
      }
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
                ),
                Center(
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 50, 0, 0),
                          child: Stack(
                            children: [Padding(
                              padding: const EdgeInsets.fromLTRB(40, 0, 40, 0),
                              child: TextField(textAlign: TextAlign.end,
                                showCursor: true,
                                style: TextStyle(height: 3, color: Colors.white),
                                decoration: new InputDecoration(
                                    border: new OutlineInputBorder(borderSide: BorderSide(width: 0, style: BorderStyle.none),
                                      borderRadius: BorderRadius.circular(10.0)
                                    ),
                                    focusedBorder: new OutlineInputBorder(borderSide: BorderSide(width: 0, style: BorderStyle.none),
                                        borderRadius: BorderRadius.circular(10.0)
                                    ),
                                    enabledBorder: new OutlineInputBorder(borderSide: BorderSide(width: 0, style: BorderStyle.none),
                                        borderRadius: BorderRadius.circular(10.0)
                                    ),
                                    errorBorder: new OutlineInputBorder(borderSide: BorderSide(width: 0, style: BorderStyle.none),
                                        borderRadius: BorderRadius.circular(10.0)
                                    ),
                                    disabledBorder: new OutlineInputBorder(borderSide: BorderSide(width: 0, style: BorderStyle.none),
                                        borderRadius: BorderRadius.circular(10.0)
                                    ),
                                    contentPadding: EdgeInsets.fromLTRB(0, 10, 15, 10),
                                    fillColor: Colors.grey[600].withOpacity(0.3),
                                    filled: true,
                                )
                                ,),
                            ),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(0, 2, 60, 0),
                                child: Row(mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Text("الإسم", style: TextStyle(color: Colors.white.withOpacity(0.5), fontWeight: FontWeight.w100),),
                                  ],
                                ),
                              ),

                            ]
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 15, 0, 0),
                          child: Stack(
                              children: [Padding(
                                padding: const EdgeInsets.fromLTRB(40, 0, 40, 0),
                                child: TextField(textAlign: TextAlign.end,
                                  showCursor: true,
                                  style: TextStyle(height: 3, color: Colors.white),
                                  decoration: new InputDecoration(
                                    border: new OutlineInputBorder(borderSide: BorderSide(width: 0, style: BorderStyle.none),
                                        borderRadius: BorderRadius.circular(10.0)
                                    ),
                                    focusedBorder: new OutlineInputBorder(borderSide: BorderSide(width: 0, style: BorderStyle.none),
                                        borderRadius: BorderRadius.circular(10.0)
                                    ),
                                    enabledBorder: new OutlineInputBorder(borderSide: BorderSide(width: 0, style: BorderStyle.none),
                                        borderRadius: BorderRadius.circular(10.0)
                                    ),
                                    errorBorder: new OutlineInputBorder(borderSide: BorderSide(width: 0, style: BorderStyle.none),
                                        borderRadius: BorderRadius.circular(10.0)
                                    ),
                                    disabledBorder: new OutlineInputBorder(borderSide: BorderSide(width: 0, style: BorderStyle.none),
                                        borderRadius: BorderRadius.circular(10.0)
                                    ),
                                    contentPadding: EdgeInsets.fromLTRB(0, 10, 15, 10),
                                    fillColor: Colors.grey[600].withOpacity(0.3),
                                    filled: true,
                                  )
                                  ,),
                              ),
                                Padding(
                                  padding: const EdgeInsets.fromLTRB(0, 2, 60, 0),
                                  child: Row(mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      (groupValue == 2)? Text("رقم الهوية", style: TextStyle(color: Colors.white.withOpacity(0.5), fontWeight: FontWeight.w100),) : Text("رقم الإقامة", style: TextStyle(color: Colors.white.withOpacity(0.5), fontWeight: FontWeight.w100),)
                                    ],
                                  ),
                                ),

                              ]
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 15, 0, 0),
                          child: Stack(
                              children: [Padding(
                                padding: const EdgeInsets.fromLTRB(40, 0, 40, 0),
                                child: TextField(textAlign: TextAlign.end,
                                  showCursor: true,
                                  style: TextStyle(height: 3, color: Colors.white),
                                  decoration: new InputDecoration(
                                    border: new OutlineInputBorder(borderSide: BorderSide(width: 0, style: BorderStyle.none),
                                        borderRadius: BorderRadius.circular(10.0)
                                    ),
                                    focusedBorder: new OutlineInputBorder(borderSide: BorderSide(width: 0, style: BorderStyle.none),
                                        borderRadius: BorderRadius.circular(10.0)
                                    ),
                                    enabledBorder: new OutlineInputBorder(borderSide: BorderSide(width: 0, style: BorderStyle.none),
                                        borderRadius: BorderRadius.circular(10.0)
                                    ),
                                    errorBorder: new OutlineInputBorder(borderSide: BorderSide(width: 0, style: BorderStyle.none),
                                        borderRadius: BorderRadius.circular(10.0)
                                    ),
                                    disabledBorder: new OutlineInputBorder(borderSide: BorderSide(width: 0, style: BorderStyle.none),
                                        borderRadius: BorderRadius.circular(10.0)
                                    ),
                                    contentPadding: EdgeInsets.fromLTRB(0, 10, 15, 10),
                                    fillColor: Colors.grey[600].withOpacity(0.3),
                                    filled: true,
                                  )
                                  ,),
                              ),
                                Padding(
                                  padding: const EdgeInsets.fromLTRB(0, 2, 60, 0),
                                  child: Row(mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Text("العمر", style: TextStyle(color: Colors.white.withOpacity(0.5), fontWeight: FontWeight.w100),),
                                    ],
                                  ),
                                ),

                              ]
                          ),
                        ),Padding(
                          padding: const EdgeInsets.fromLTRB(0, 15, 0, 0),
                          child: Stack(
                              children: [Padding(
                                padding: const EdgeInsets.fromLTRB(40, 0, 40, 0),
                                child: TextField(textAlign: TextAlign.end,
                                  showCursor: true,
                                  style: TextStyle(height: 3, color: Colors.white),
                                  decoration: new InputDecoration(
                                    border: new OutlineInputBorder(borderSide: BorderSide(width: 0, style: BorderStyle.none),
                                        borderRadius: BorderRadius.circular(10.0)
                                    ),
                                    focusedBorder: new OutlineInputBorder(borderSide: BorderSide(width: 0, style: BorderStyle.none),
                                        borderRadius: BorderRadius.circular(10.0)
                                    ),
                                    enabledBorder: new OutlineInputBorder(borderSide: BorderSide(width: 0, style: BorderStyle.none),
                                        borderRadius: BorderRadius.circular(10.0)
                                    ),
                                    errorBorder: new OutlineInputBorder(borderSide: BorderSide(width: 0, style: BorderStyle.none),
                                        borderRadius: BorderRadius.circular(10.0)
                                    ),
                                    disabledBorder: new OutlineInputBorder(borderSide: BorderSide(width: 0, style: BorderStyle.none),
                                        borderRadius: BorderRadius.circular(10.0)
                                    ),
                                    contentPadding: EdgeInsets.fromLTRB(0, 10, 15, 10),
                                    fillColor: Colors.grey[600].withOpacity(0.3),
                                    filled: true,
                                  )
                                  ,),
                              ),
                                Padding(
                                  padding: const EdgeInsets.fromLTRB(0, 2, 60, 0),
                                  child: Row(mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Text("الإسم", style: TextStyle(color: Colors.white.withOpacity(0.5), fontWeight: FontWeight.w100),),
                                    ],
                                  ),
                                ),

                              ]
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(40, 40, 40, 40),
                          child: ButtonTheme(shape: RoundedRectangleBorder(
                              borderRadius: BorderRadiusDirectional.circular(20)
                          ),
                            child: RaisedButton(onPressed: () {Navigator.pushNamed(context, '/survey');}, color: Color.fromRGBO(46,168,172, 1),
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

