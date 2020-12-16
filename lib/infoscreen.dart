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

       child: Column( children: <Widget>[
         Container(padding: const EdgeInsets.fromLTRB(5,40, 8, 0),
    child: Text(
    ' عن برنامج إحجز',
    textAlign: TextAlign.left,
    style: TextStyle(decoration: TextDecoration.underline, decorationThickness: 2,fontStyle: FontStyle.italic,
    fontSize: 22.0,
    fontWeight: FontWeight.bold,
    color: Colors.white,
    fontFamily: "ElMessiri",
                  ),
                )),



   Container( padding: const EdgeInsets.fromLTRB(5, 0, 8, 10),

     child: Text(" ابتكر تطبيق احجز في سبيل تسهيل الحصول على لقاح كورونا عبر الهواتف الذكية, وذلك من خلال حجز مواعيد في المراكز الصحية والمستشفيات المعتمدة لإعطاء اللقاح، ويتميز هذا التطبيق بسهولة وسرعة الاستخدام وحفظ خصوصية المستخدم، والأهم من ذلك، فإن التطبيق لا يتطلب من المستخدم إنشاء حساب لتسجيل الدخول،"
       ,textAlign: TextAlign.right,style: TextStyle(
           fontSize: 19.0,
           fontWeight: FontWeight.bold,
           color: Colors.white,
           fontFamily: "ElMessiri",)  ),),
    ]) ),)














    )));


  }}