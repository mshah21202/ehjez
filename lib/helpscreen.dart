import 'package:ehjez/ReservationScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
void main() {
  runApp(helpscreen());
}
void customLaunch(command)async
{
  if (await canLaunch(command)){await launch(command);}else {print('could not launch $command');}

}
class helpscreen extends StatefulWidget {


  @override
  _helpscreenState createState() => _helpscreenState();
}

class _helpscreenState extends State<helpscreen> {
  bool avisible = false;
  bool bVisible = false;
  bool cVisible = false;
  bool dVisible = false;
  bool eVisible = false;
  bool fVisible = false;
  bool gVisible = false;
  bool hVisible = false;




  @override
  Widget build(BuildContext context) {
    return MaterialApp(home:Scaffold(
        backgroundColor: Colors.teal[300],
        body: SingleChildScrollView(child: SafeArea(
        child: Container(
        height: 1700,
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
        children: [Row(mainAxisAlignment: MainAxisAlignment.start,
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
          Center(
          child: Padding(padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
            child: Text("اسألة متكررة",
                textDirection: TextDirection.rtl,
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontFamily: "ElMessiri")),
          ),),

            Padding(
        padding: const EdgeInsets.fromLTRB(15, 20, 15, 8),
          child: ButtonTheme(shape: RoundedRectangleBorder(
              borderRadius: BorderRadiusDirectional.circular(10)
          ),
            child: RaisedButton(onPressed: () {setState(() {avisible = !avisible;

            });},
              color: Colors.grey[600].withOpacity(0.4),
              child: Row(mainAxisAlignment: MainAxisAlignment.center,crossAxisAlignment: CrossAxisAlignment.center,
                children: [Expanded(child:
                Text("هل لقاح كورونا إجباري لجميع الأفراد؟",
                  textDirection: TextDirection.rtl,
                  style: TextStyle(
                      color: Colors.white,
                      fontFamily: "ElMessiri",
                      fontSize: 15),),),

                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 20, 0, 20),
                    child: Icon(Icons.add_circle_outline_outlined, color: Colors.white,),
                  )
                ],)
              ,),
          ),
        ),
            Padding(padding: EdgeInsets.fromLTRB(10, 3,10, 0),
                child: Row(children: [Expanded(child: Visibility(visible: avisible,
                    child: Text("لقاح كورونا حالياً هو اختياري، ولكن ننصح المواطنين والمقيمين بالمملكة بأخذ اللقاح حفاظاً على أنفسهم وعائلاتهم والمجتمع ككل."
                      ,
                      textDirection: TextDirection.rtl,
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: "ElMessiri",
                          fontSize: 15),)),)])),






          Padding(
            padding: const EdgeInsets.fromLTRB(15, 20, 15, 8),
            child: ButtonTheme(shape: RoundedRectangleBorder(
                borderRadius: BorderRadiusDirectional.circular(10)
            ),
              child: RaisedButton(onPressed: () {setState(() {bVisible = !bVisible;

              });},
                color: Colors.grey[600].withOpacity(0.4),
                child: Row(mainAxisAlignment: MainAxisAlignment.center,crossAxisAlignment: CrossAxisAlignment.center,
                  children: [Expanded(child:
                  Text("ما هي فعالية لقاح كورونا وكم عدد جرعات التي ينبغي أن يأخذها الشخص؟",
                    textDirection: TextDirection.rtl,
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: "ElMessiri",
                        fontSize: 15),),),

                    Padding(
                      padding: const EdgeInsets.fromLTRB(20, 20, 0, 20),
                      child: Icon(Icons.add_circle_outline_outlined, color: Colors.white,),
                    )
                  ],)
                ,),
            ),
          ),
          Padding(padding: EdgeInsets.fromLTRB(10, 3,10, 0),
              child: Row(children: [Expanded(child: Visibility(visible: bVisible,
                  child: Text("المؤسسة العامة للغذاء والدواء في الأردن منحت ترخيصاً طارئاً لاستعمال لقاح فايزر/بايونتيك لمكافحة انتشار الوباء، وأظهرت البيانات أن نسبة فعالية اللقاح تقدر ب 95٪، ويعني هذا أن أكثر من 95٪ من الأشخاص الذين يأخذون اللقاح يتمتعون بالحماية من الإصابة بمرض شديد ناتج عن الفيروس. وهذا اللقاح للأشخاص بعمر 16 سنة فأكثر، ويتطلب أخذ حقنتين يفصل بينهما 21 يومًا.",
                    textDirection: TextDirection.rtl,
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: "ElMessiri",
                        fontSize: 15),)),)])),





          Padding(
            padding: const EdgeInsets.fromLTRB(15, 20, 15, 8),
            child: ButtonTheme(shape: RoundedRectangleBorder(
                borderRadius: BorderRadiusDirectional.circular(10)
            ),
              child: RaisedButton(onPressed: () {setState(() {cVisible = !cVisible;

              });},
                color: Colors.grey[600].withOpacity(0.4),
                child: Row(mainAxisAlignment: MainAxisAlignment.center,crossAxisAlignment: CrossAxisAlignment.center,
                  children: [Expanded(child:
                  Text("هل يمكنني تعديل الطلب بعد التسجيل؟",
                    textDirection: TextDirection.rtl,
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: "ElMessiri",
                        fontSize: 15),),),

                    Padding(
                      padding: const EdgeInsets.fromLTRB(20, 20, 0, 20),
                      child: Icon(Icons.add_circle_outline_outlined, color: Colors.white,),
                    )
                  ],)
                ,),
            ),
          ),
          Padding(padding: EdgeInsets.fromLTRB(10, 3,10, 0),
              child: Row(children: [Expanded(child: Visibility(visible: cVisible,
                  child: Text("نعم، يمكن تعديل الطلب بعد التسجيل.",
                    textDirection: TextDirection.rtl,
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: "ElMessiri",
                        fontSize: 15),)),)])),









          Padding(
            padding: const EdgeInsets.fromLTRB(15, 20, 15, 8),
            child: ButtonTheme(shape: RoundedRectangleBorder(
                borderRadius: BorderRadiusDirectional.circular(10)
            ),
              child: RaisedButton(onPressed: () {setState(() {dVisible = !dVisible;

              });},
                color: Colors.grey[600].withOpacity(0.4),
                child: Row(mainAxisAlignment: MainAxisAlignment.center,crossAxisAlignment: CrossAxisAlignment.center,
                  children: [Expanded(child:
                  Text("هل هناك أي آثار جانبية للقاح؟",
                    textDirection: TextDirection.rtl,
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: "ElMessiri",
                        fontSize: 15),),),

                    Padding(
                      padding: const EdgeInsets.fromLTRB(20, 20, 0, 20),
                      child: Icon(Icons.add_circle_outline_outlined, color: Colors.white,),
                    )
                  ],)
                ,),
            ),
          ),
          Padding(padding: EdgeInsets.fromLTRB(10, 3,10, 0),
              child: Row(children: [Expanded(child: Visibility(visible: dVisible,
                  child: Text("يمكن أن يسبب لقاح كوفيد 19 آثارًا جانبية طفيفة بعد الجرعة الأولى أو الثانية، وتشمل: الألم أو الاحمرار أو التورم في مكان حقن اللقاح، الحُمّى، الإرهاق، الصداع، القشعريرة، ألم العضلات والمفاصب",
                    textDirection: TextDirection.rtl,
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: "ElMessiri",
                        fontSize: 15),)),)])),










          Padding(
            padding: const EdgeInsets.fromLTRB(15, 20, 15, 8),
            child: ButtonTheme(shape: RoundedRectangleBorder(
                borderRadius: BorderRadiusDirectional.circular(10)
            ),
              child: RaisedButton(onPressed: () {setState(() {eVisible = !eVisible;

              });},
                color: Colors.grey[600].withOpacity(0.4),
                child: Row(mainAxisAlignment: MainAxisAlignment.center,crossAxisAlignment: CrossAxisAlignment.center,
                  children: [Expanded(child:
                  Text("هل يعمل التطبيق على جميع الهواتف الذكية؟",
                    textDirection: TextDirection.rtl,
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: "ElMessiri",
                        fontSize: 15),),),

                    Padding(
                      padding: const EdgeInsets.fromLTRB(20, 20, 0, 20),
                      child: Icon(Icons.add_circle_outline_outlined, color: Colors.white,),
                    )
                  ],)
                ,),
            ),
          ),
          Padding(padding: EdgeInsets.fromLTRB(10, 3,10, 0),
              child: Row(children: [Expanded(child: Visibility(visible: eVisible,
                  child: Text("نعم، يعمل التطبيق على الهواتف الذكية التي تعمل بنظامي التشغيل (iOS) وأندرويد (Android)",
                    textDirection: TextDirection.rtl,
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: "ElMessiri",
                        fontSize: 15),)),)])),








          Padding(
            padding: const EdgeInsets.fromLTRB(15, 20, 15, 8),
            child: ButtonTheme(shape: RoundedRectangleBorder(
                borderRadius: BorderRadiusDirectional.circular(10)
            ),
              child: RaisedButton(onPressed: () {setState(() {fVisible = !fVisible;

              });},
                color: Colors.grey[600].withOpacity(0.4),
                child: Row(mainAxisAlignment: MainAxisAlignment.center,crossAxisAlignment: CrossAxisAlignment.center,
                  children: [Expanded(child:
                  Text("هل أستطيع أخذ اللقاح وأنا مصاب بفيروس كورونا؟",
                    textDirection: TextDirection.rtl,
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: "ElMessiri",
                        fontSize: 15),),),

                    Padding(
                      padding: const EdgeInsets.fromLTRB(20, 20, 0, 20),
                      child: Icon(Icons.add_circle_outline_outlined, color: Colors.white,),
                    )
                  ],)
                ,),
            ),
          ),
          Padding(padding: EdgeInsets.fromLTRB(10, 3,10, 0),
              child: Row(children: [Expanded(child: Visibility(visible: fVisible,
                  child: Text("لا يفضل أخذ اللقاح لمن شخصوا بالإصابة بالفيروس، ولم يتحدد بعد الحد الأدنى للفترة الزمنية الموصى بها للتطعيم بعد التعافي.",
                    textDirection: TextDirection.rtl,
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: "ElMessiri",
                        fontSize: 15),)),)])),










          Padding(
            padding: const EdgeInsets.fromLTRB(15, 20, 15, 8),
            child: ButtonTheme(shape: RoundedRectangleBorder(
                borderRadius: BorderRadiusDirectional.circular(10)
            ),
              child: RaisedButton(onPressed: () {setState(() {gVisible = !gVisible;

              });},
                color: Colors.grey[600].withOpacity(0.4),
                child: Row(mainAxisAlignment: MainAxisAlignment.center,crossAxisAlignment: CrossAxisAlignment.center,
                  children: [Expanded(child:
                  Text("هل يجب الالتزام بارتداء كمامة والتباعد الجسماني بعد تلقي اللقاح؟",
                    textDirection: TextDirection.rtl,
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: "ElMessiri",
                        fontSize: 15),),),

                    Padding(
                      padding: const EdgeInsets.fromLTRB(20, 20, 0, 20),
                      child: Icon(Icons.add_circle_outline_outlined, color: Colors.white,),
                    )
                  ],)
                ,),
            ),
          ),
          Padding(padding: EdgeInsets.fromLTRB(10, 3,10, 0),
              child: Row(children: [Expanded(child: Visibility(visible: gVisible,
                  child: Text("نعم، يمكن تعديل الطلب بعد التسجيل.",
                    textDirection: TextDirection.rtl,
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: "ElMessiri",
                        fontSize: 15),)),)])),







          Padding(
            padding: const EdgeInsets.fromLTRB(15, 20, 15, 8),
            child: ButtonTheme(shape: RoundedRectangleBorder(
                borderRadius: BorderRadiusDirectional.circular(10)
            ),
              child: RaisedButton(onPressed: () {setState(() {hVisible = !hVisible;

              });},
                color: Colors.grey[600].withOpacity(0.4),
                child: Row(mainAxisAlignment: MainAxisAlignment.center,crossAxisAlignment: CrossAxisAlignment.center,
                  children: [Expanded(child:
                  Text("ما هي فعالية لقاح كورونا وكم عدد جرعات التي ينبغي أن يأخذها الشخص؟",
                    textDirection: TextDirection.rtl,
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: "ElMessiri",
                        fontSize: 15),),),

                    Padding(
                      padding: const EdgeInsets.fromLTRB(20, 20, 0, 20),
                      child: Icon(Icons.add_circle_outline_outlined, color: Colors.white,),
                    )
                  ],)
                ,),
            ),
          ),
          Padding(padding: EdgeInsets.fromLTRB(10, 3,10, 0),
              child: Row(children: [Expanded(child: Visibility(visible: hVisible,
                  child: Text("نعم، حتى بعد الموافقة على بدء حملات التطعيم باللقاح، يقول الخبراء ستبقى هناك ضرورة للاستمرار في ارتداء الكمامات والالتزام بمسافات التباعد الجسماني.",
                    textDirection: TextDirection.rtl,
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: "ElMessiri",
                        fontSize: 15),)),)])),


          Padding(
            padding: const EdgeInsets.fromLTRB(40, 20, 40, 0),

                child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Text("تريد التواصل معنا؟", style: TextStyle(color: Colors.white, fontFamily: "ElMessiri", fontSize: 18),),

                ],)
                ,),





          Padding(
            padding: const EdgeInsets.fromLTRB(40, 20, 40, 0),
            child: ButtonTheme(shape: RoundedRectangleBorder(
                borderRadius: BorderRadiusDirectional.circular(20)
            ),
              child: RaisedButton(onPressed: () {
                customLaunch('tel: 123456');

              }, color: Color.fromRGBO(46,168,172, 1),
                child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Text("تواصل معنا(الهاتف)", style: TextStyle(color: Colors.white, fontFamily: "ElMessiri", fontSize: 25),),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 20, 0, 20),
                    child: Icon(Icons.local_phone_rounded, color: Colors.white,),
                  )
                ],)
                ,),
            ),
          ),



          Padding(
            padding: const EdgeInsets.fromLTRB(40, 20, 40, 0),

            child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Text("او", style: TextStyle(color: Colors.white, fontFamily: "ElMessiri", fontSize: 18),),

            ],)
            ,),



          Padding(
            padding: const EdgeInsets.fromLTRB(40, 20, 40, 0),
            child: ButtonTheme(shape: RoundedRectangleBorder(
                borderRadius: BorderRadiusDirectional.circular(20)
            ),
              child: RaisedButton(onPressed: () {
                customLaunch('mailto:test123@gmail.com');

              }, color: Color.fromRGBO(46,168,172, 1),
                child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Text("تواصل معنا", style: TextStyle(color: Colors.white, fontFamily: "ElMessiri", fontSize: 25),),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 20, 0, 20),
                    child: Icon(Icons.email_outlined, color: Colors.white,),
                  )
                ],)
                ,),
            ),
          ),












        ]))))))));
  }
}
