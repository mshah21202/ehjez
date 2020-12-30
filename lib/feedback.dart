import 'package:flutter/material.dart';
import 'package:ehjez/feedback.dart';

class feedback extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(resizeToAvoidBottomPadding: false,
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.teal[300],
    body:Builder(builder:(context) {
     return SafeArea(
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
                            children: [
                              Padding(
                                padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
                                child: IconButton(
                                    icon: Icon(Icons.arrow_back_ios_outlined),
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    color: Colors.white, iconSize: 19
                                ),
                              ),

                              Padding(
                                padding: const EdgeInsets.fromLTRB(32, 25, 0, 0),
                                child: Text("ارسل ملاحظة",style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: "ElMessiri"
                                ),
                                ),
                              ),
                            ],),Container( padding: const EdgeInsets.fromLTRB(20, 27, 20, 20),
                              child: TextField(maxLines: 1,
                                decoration: InputDecoration(
                                  enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.teal[500]),
                                      borderRadius: BorderRadius.all(Radius.circular(8.0))),
                                  focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.white),
                                      borderRadius: BorderRadius.all(Radius.circular(8.0))),
                                  errorBorder:OutlineInputBorder(borderSide: BorderSide(color: Colors.white),
                                      borderRadius: BorderRadius.all(Radius.circular(8.0))) ,
                                  disabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.white),
                                      borderRadius: BorderRadius.all(Radius.circular(8.0))),

                                  hintText: "العنوان",
                                  filled: true,
                                  fillColor: Colors.teal[400],


                                ),)

                          ),
                          Container( padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
                            child: TextField(maxLines: 10,
                              decoration: InputDecoration(
                                enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.teal[500]),
                                    borderRadius: BorderRadius.all(Radius.circular(8.0))),
                                focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.white),
                                    borderRadius: BorderRadius.all(Radius.circular(8.0))),
                                errorBorder:OutlineInputBorder(borderSide: BorderSide(color: Colors.white),
                                    borderRadius: BorderRadius.all(Radius.circular(8.0))) ,
                                disabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.white),
                                    borderRadius: BorderRadius.all(Radius.circular(8.0))),

                                hintText: "أكتب ملاحظتك هنا",
                                filled: true,
                                fillColor: Colors.teal[400],


                              ),),),

                          Padding(
                            padding: const EdgeInsets.fromLTRB(40, 40, 40, 40),
                            child: ButtonTheme(height:50,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadiusDirectional.circular(20)
                              ),
                              child: RaisedButton(onPressed: () {
                                SnackBar mysnackbar =
                                SnackBar(content: Text("It's just a demo app"));
                                Scaffold.of(context).showSnackBar(mysnackbar);

                              }

                                , color: Color.fromRGBO(46,168,172, 1),
                                child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                                  Text("ارسل", style: TextStyle(color: Colors.white, fontFamily: "ElMessiri", fontSize: 25),),



                                ],)
                                ,),
                            ),
                          ),






                        ],
                      ))

              )));
    }



    ));}
}
