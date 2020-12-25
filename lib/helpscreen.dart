import 'package:ehjez/ReservationScreen.dart';
import 'package:flutter/material.dart';


class helpScreen  extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal[300],
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


                child: Padding( padding:  const EdgeInsets.fromLTRB(0,30,0,0),
                  child: Center(
                      child: Column(children: [
                        Container(
                      child: Text("أسئلة مكررة"
                          ,textAlign: TextAlign.center,style: TextStyle(
                            wordSpacing: 1,
                            fontSize: 25.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontFamily: "ElMessiri",)
                      ),
                        ),




                  Container(padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
                      child: SizedBox(width: 325, height:60,
                          child: Container(decoration: BoxDecoration(
                          color: Colors.grey[600].withOpacity(0.5),
                          borderRadius: BorderRadius.circular(13)),


                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.end,


                                children: <Widget>[
                                  Row(children: [

                            Container(
                            padding: const EdgeInsets.fromLTRB(
                                17, 15, 0, 2),
                            child: ButtonTheme(
                              height: 2,
                              child: Text(
                                    "هل لقاح كورونا إجباري لجميع الأفراد؟",
                                  textDirection: TextDirection.rtl,
                                    textAlign: TextAlign.right,
                                    style: TextStyle(
                                        fontFamily: 'ElMessiri',
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18,
                                        color: Colors.white)),
                              ),
                            ),
                                    Padding(padding:EdgeInsets.fromLTRB(3, 15, 0, 0),
                                      child:Align(
                                        alignment: Alignment.centerRight,
                                        child: Icon(Icons.add_circle_outline_outlined, color: Colors.white,),
                                    )),






                      ])]))))])



            ),),),),),
    )));











  }}