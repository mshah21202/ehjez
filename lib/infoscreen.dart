import 'package:ehjez/ReservationScreen.dart';
import 'package:flutter/material.dart';


class infoscreen  extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(child: Container(
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
    child: Padding(
        padding: const EdgeInsets.fromLTRB(5, 40, 5, 10),
       child: Column( children: [
         Container( padding: EdgeInsets.only(
         bottom: 2, // space between underline and text
       ),
      decoration: BoxDecoration(
          border: Border(bottom: BorderSide(
            color: Colors.white,  // Text colour here
            width: 3.0, // Underline width
          ))
      ),
    child: Text(
    ' عن برنامج إحجز',
    textAlign: TextAlign.left,
    style: TextStyle(
      wordSpacing: 3,
      fontStyle: FontStyle.italic,
      fontSize: 22.0,
      fontWeight: FontWeight.bold,
      color: Colors.white,
      fontFamily: "ElMessiri",
                  ),
                )),



   Container( padding: const EdgeInsets.fromLTRB(15, 26, 8, 10),

     child: Text(" ابتكر تطبيق احجز في سبيل تسهيل الحصول على لقاح كورونا عبر الهواتف الذكية, وذلك من خلال حجز مواعيد في المراكز الصحية والمستشفيات المعتمدة لإعطاء اللقاح، ويتميز هذا التطبيق بسهولة وسرعة الاستخدام وحفظ خصوصية المستخدم، والأهم من ذلك، فإن التطبيق لا يتطلب من المستخدم إنشاء حساب لتسجيل الدخول،"
       ,textAlign: TextAlign.right,style: TextStyle(
           wordSpacing: 1,
           fontSize: 17.0,

           color: Colors.white,
           fontFamily: "ElMessiri",)  ),),
    ])),
























    ),
    )















    )
        )
    );


  }}