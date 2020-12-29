import 'package:flutter/material.dart';


class Reservationscreen extends StatelessWidget {
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
          SafeArea(
            child: Column(children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: IconButton(
                      icon: Icon(Icons.arrow_back_ios_outlined),
                      onPressed: () {Navigator.pop(context);},
                      color: Colors.white, iconSize: 19
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(40, 20, 40, 0),
                child: ButtonTheme(shape: RoundedRectangleBorder(
                  borderRadius: BorderRadiusDirectional.circular(20)
                ),
                  child: RaisedButton(onPressed: () {Navigator.pushNamed(context, '/survey');}, color: Color.fromRGBO(46,168,172, 1),
                    child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                      Text("طلب جديد", style: TextStyle(color: Colors.white, fontFamily: "ElMessiri", fontSize: 25),),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(20, 20, 0, 20),
                        child: Icon(Icons.add_circle_outline_outlined, color: Colors.white,),
                      )
                    ],)
                    ,),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(40, 50, 40, 0),
                child: ButtonTheme(shape: RoundedRectangleBorder(
                    borderRadius: BorderRadiusDirectional.circular(20)
                ),
                  child: RaisedButton(onPressed: () {Navigator.pushNamed(context, '/review');}, color: Colors.white,
                    child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                      Text("تابع طلبك", style: TextStyle(color: Color.fromRGBO(46,168,172, 1), fontFamily: "ElMessiri", fontSize: 25),),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(10, 20, 0, 20),
                        child: Icon(Icons.check_circle, color: Color.fromRGBO(46,168,172, 1),),
                      )
                    ],)
                    ,),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                child: Divider(height: 100, color: Colors.white, thickness: 1, ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(40, 0, 40, 10),
                child: Container(
                  child: Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                    Text("1.  إملأ الطلب", style: TextStyle(color: Colors.white, fontFamily: "ElMessiri", fontSize: 25),textDirection: TextDirection.rtl,),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(35, 0, 40, 0),
                      child: Icon(Icons.description, color: Colors.white, size: 50,),
                    )
                  ],),
                  width: double.infinity,
                  height: 90,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(begin: Alignment.centerRight, end: Alignment.centerLeft, colors: [Color.fromRGBO(4,204,255, 0.4), Color.fromRGBO(4,204,255, 0)],),
                    borderRadius: BorderRadius.only(topRight: Radius.circular(30),)
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(40, 0, 40, 10),
                child: Container(
                  child: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(35, 0, 10, 0),
                      child: Icon(Icons.send, color: Colors.white, size: 50,),
                    ),
                    Text("2.  أرسل الطلب", style: TextStyle(color: Colors.white, fontFamily: "ElMessiri", fontSize: 25),),

                  ],),
                  width: double.infinity,
                  height: 90,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(begin: Alignment.centerLeft, end: Alignment.centerRight, colors: [Color.fromRGBO(4,204,255, 0.4), Color.fromRGBO(4,204,255, 0)],),
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(30),)
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(40, 0, 40, 0),
                child: Container(
                  child: Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                    Text("3.  إنتظر القبول", style: TextStyle(color: Colors.white, fontFamily: "ElMessiri", fontSize: 25),textDirection: TextDirection.rtl,),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(35, 0, 40, 0),
                      child: Icon(Icons.watch_later, color: Colors.white, size: 50,),
                    )
                  ],),
                  width: double.infinity,
                  height: 90,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(begin: Alignment.centerRight, end: Alignment.centerLeft, colors: [Color.fromRGBO(4,204,255, 0.4), Color.fromRGBO(4,204,255, 0)],),
                      borderRadius: BorderRadius.only(topRight: Radius.circular(30),)
                  ),
                ),
              )
            ],),
          )
        ]
      ),
     );
  }
}