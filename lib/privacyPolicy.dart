import 'package:flutter/material.dart';

class privacyPolicy extends StatelessWidget {
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
        child: Column( crossAxisAlignment: CrossAxisAlignment.end,
          children: [Container( padding: const EdgeInsets.fromLTRB(0, 50, 0, 0),

            child: Text(" سياسة الخصوصية "
                ,textAlign: TextAlign.center,style: TextStyle(
                  wordSpacing: 1,
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontFamily: "ElMessiri",)  ),),
          Container( padding: const EdgeInsets.fromLTRB(0, 35, 10, 10),

      child: Text(" أ – مقدمة\nإننا نهتم بشكل كبير بخصوصية بيانات المستخدم، ونتعهد بحمايتها. تشرح هذه السياسة كيفية التصرف في معلوماتك الشخصية "
          ,textAlign: TextAlign.right,style: TextStyle(
            wordSpacing: 1,
            fontSize: 16.0,
            color: Colors.white,
            fontFamily: "ElMessiri",)  ),),


            Container( padding: const EdgeInsets.fromLTRB(0, 10, 10, 10),

              child: Text(" ب. جمع المعلومات الشخصية \nقد يتم تخزين وجمع نوعين من المعلومات عنك  واستخدام بعض المعلومات الشخصية من خلال الموقع، مثل: "
                  ,textAlign: TextAlign.right,style: TextStyle(
                    wordSpacing: 1,
                    fontSize: 17.0,
                    color: Colors.white,
                    fontFamily: "ElMessiri",)  ),),



      Container( padding: const EdgeInsets.fromLTRB(0, 10, 10, 10),

        child: Text("  "
            ,textAlign: TextAlign.right,style: TextStyle(
              wordSpacing: 1,
              fontSize: 17.0,
              color: Colors.white,
              fontFamily: "ElMessiri",)  ),),






















































          ])
    ))))));
  }
}
