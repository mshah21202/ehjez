import 'package:ehjez/ReservationScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';




class infoscreen  extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal[300],
      body: SingleChildScrollView(child: SafeArea(
        child: Container(
          height: 750,
          width: MediaQuery
              .of(context)
              .size
              .width,
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
                  children: [
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

                      ],
                    ),
                    Padding(
                        padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                        child: Image.asset(
                          "assets/Ehjez-Logo.png", width: 200, height: 200,)
                    ),


                    Padding(
                      padding: const EdgeInsets.fromLTRB(30, 20, 30, 0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                            child: ButtonTheme(
                              height: 70,
                              child: RaisedButton(
                                child: Text("عن احجز",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize: 20.0,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                        fontFamily: "ElMessiri")
                                ),
                                onPressed: () {
                                  Navigator.pushNamed(context, '/about');
                                },
                                color: Color.fromRGBO(46, 168, 172, 1),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                ),

                              ),

                            ),
                          ),

                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(30, 30, 30, 0),
                      child: Row(
                        children: [
                          Expanded(
                            child: ButtonTheme(
                              height: 70,
                              child: RaisedButton(
                                child: Text("المساعدة",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize: 20.0,
                                        fontWeight: FontWeight.bold,
                                        color: Color.fromRGBO(46, 168, 172, 1),
                                        fontFamily: "ElMessiri")
                                ),
                                onPressed: () {
                                  Navigator.pushNamed(context, '/help');
                                },
                                color: Colors.white,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                ),

                              ),

                            ),
                          ),
                        ],
                      ),
                    ),

                    Padding(
                        padding: const EdgeInsets.fromLTRB(0, 50, 0, 0),
                        child: Container(

                          child: SizedBox(width: 325, height: 225, child:
                          Container(decoration: BoxDecoration(
                              color: Colors.teal[300].withOpacity(0.4),
                              borderRadius: BorderRadius.circular(13)),

                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.end,

                                  children: <Widget>[


                                    Container(
                                      padding: const EdgeInsets.fromLTRB(
                                          10, 2, 10, 2),
                                      child: ButtonTheme(
                                        height: 2,
                                        child: FlatButton(
                                          color: Colors.transparent,
                                          splashColor: Colors.black26,
                                          onPressed: () {
                                            secondurl();
                                          },
                                          child: Text(
                                              "موقع وزارة الصحة",
                                              textAlign: TextAlign.right,
                                              style: TextStyle(
                                                  fontFamily: 'ElMessiri',
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 18,
                                                  color: Colors.white)),
                                        ),
                                      ),
                                    ),


                                    Container(
                                      padding: const EdgeInsets.fromLTRB(
                                          10, 2, 10, 2),
                                      child: ButtonTheme(
                                        height: 2,
                                        child: FlatButton(
                                          color: Colors.transparent,
                                          splashColor: Colors.black26,
                                          onPressed: () {
                                            Navigator.pushNamed(
                                                context, '/feedback');
                                          },
                                          child: Text(
                                              "إرسال ملاحظات",
                                              textAlign: TextAlign.right,
                                              style: TextStyle(
                                                  fontFamily: 'ElMessiri',
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 18,
                                                  color: Colors.white)),
                                        ),
                                      ),
                                    ),


                                    Container(
                                      padding: const EdgeInsets.fromLTRB(
                                          10, 2, 10, 2),
                                      child: ButtonTheme(
                                        height: 2,
                                        child: FlatButton(
                                          color: Colors.transparent,
                                          splashColor: Colors.black26,
                                          onPressed: () {
                                            Navigator.pushNamed(
                                                context, '/privacy');
                                          },
                                          child: Text(
                                              "سياسة الخصوصية",
                                              textAlign: TextAlign.right,
                                              style: TextStyle(
                                                  fontFamily: 'ElMessiri',
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 18,
                                                  color: Colors.white)),
                                        ),
                                      ),
                                    ),



                                    Container(
                                      padding: const EdgeInsets.fromLTRB(
                                          10, 5, 10, 2),
                                      child: ButtonTheme(
                                        height: 2,
                                        child: FlatButton(
                                          color: Colors.transparent,
                                          splashColor: Colors.black26,
                                          onPressed: () {
                                            firsturl();
                                          },
                                          child: Text(
                                              "تقييم التطبيق",
                                              textAlign: TextAlign.right,
                                              style: TextStyle(
                                                  fontFamily: 'ElMessiri',
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 18,
                                                  color: Colors.white)),
                                        ),

                                      ),
                                    ),
                                  ]
                              )
                          )
                          ),
                        )
                    )
                  ]
              ),


            ),
          ),
        ),
      ),
      ),
    );
  }

  firsturl() {
    String googlestorelink = "https://play.google.com/store/apps/details?id=com.google.android.googlequicksearchbox&hl=en&gl=US";
    launch(googlestorelink);
  }

  secondurl() {
    String googlestorelink = "https://www.google.com/";
    launch(googlestorelink);
  }


}