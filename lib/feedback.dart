import 'package:flutter/material.dart';
import 'package:ehjez/feedback.dart';

class feedback extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.teal[300],
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
                         children:[
                           Row(mainAxisAlignment: MainAxisAlignment.start,
                           children: [Padding(
                             padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
                             child: IconButton(
                                 icon: Icon(Icons.arrow_back_ios_outlined),
                                 onPressed: () {
                                   Navigator.pop(context);
                                 },
                                 color: Colors.white, iconSize: 19
                             ),
                           ),

                           ],),
                           Padding(
                               padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                               child: Text("ارسل ملاحظة",style: TextStyle(
                                   fontSize: 20,
                                   fontWeight: FontWeight.bold
                               ),
                               ),
                           ),






    ]),
    ))

    ))));
  }
}
