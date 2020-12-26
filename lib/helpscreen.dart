import 'package:ehjez/ReservationScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main() {
  runApp(helpscreen());
}


class helpscreen extends StatefulWidget {


  @override
  _helpscreenState createState() => _helpscreenState();
}

class _helpscreenState extends State<helpscreen> {
  bool avisible = false;
  bool bVisible = false;
  bool cVisible = false;
  bool dVisible =false;
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
        height: 1500,
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
          Center(
          child: Padding(padding: EdgeInsets.fromLTRB(0, 30, 0, 0),
            child: Text("اسألة متكررة",
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
                child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Text("هل لقاح كورونا إجباري لجميع الأفراد؟", style: TextStyle(
                      color: Colors.white,
                      fontFamily: "ElMessiri",
                      fontSize: 17),),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 20, 0, 20),
                    child: Icon(Icons.add_circle_outline_outlined, color: Colors.white,),
                  )
                ],)
                ,),
            ),
          ),
          Visibility(visible: avisible,
              child: Text("لقاح كورونا حالياً هو اختياري، ولكن ننصح المواطنين والمقيمين بالمملكة بأخذ اللقاح حفاظاً على أنفسهم وعائلاتهم والمجتمع ككل.",
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: "ElMessiri",
                  fontSize: 15),)),



          Padding(
            padding: const EdgeInsets.fromLTRB(15, 20, 15, 8),
            child: ButtonTheme(shape: RoundedRectangleBorder(
                borderRadius: BorderRadiusDirectional.circular(10)
            ),
              child: RaisedButton(onPressed: () {setState(() {bVisible = !bVisible;

              });},
                color: Colors.grey[600].withOpacity(0.4),
                child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Text("ما هي فعالية لقاح كورونا وكم عدد جرعات التي ينبغي أن يأخذها الشخص؟", style: TextStyle(
                      color: Colors.white,
                      fontFamily: "ElMessiri",
                      fontSize: 7),),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 20, 0, 20),
                    child: Icon(Icons.add_circle_outline_outlined, color: Colors.white,),
                  )
                ],)
                ,),
            ),
          ),
          Visibility(visible: bVisible,
              child: Text("المؤسسة العامة للغذاء والدواء في الأردن منحت ترخيصاً طارئاً لاستعمال لقاح فايزر/بايونتيك لمكافحة انتشار وباء كوفيد-19، وأظهرت البيانات أن مفعول اللقاح يبدأ بعد الجرعة الأولى بفترة وجيزة، وأن نسبة فعاليته 95٪ بعد سبعة أيام من الجرعة الثانية. ويعني هذا أن أكثر من 95٪ من الأشخاص الذين يأخذون اللقاح يتمتعون بالحماية من الإصابة بمرض شديد ناتج عن الفيروس. وهذا اللقاح للأشخاص بعمر 16 سنة فأكثر. ويتطلب أخذ حقنتين يفصل بينهما 21 يومًا.",
                style: TextStyle(
                    color: Colors.white,
                    fontFamily: "ElMessiri",
                    fontSize: 15),)),








          Padding(
            padding: const EdgeInsets.fromLTRB(15, 20, 15, 8),
            child: ButtonTheme(shape: RoundedRectangleBorder(
                borderRadius: BorderRadiusDirectional.circular(10)
            ),
              child: RaisedButton(onPressed: () {setState(() {cVisible = !cVisible;

              });},
                color: Colors.grey[600].withOpacity(0.4),
                child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Text("هل يمكنني تعديل الطلب بعد التسجيل؟", style: TextStyle(
                      color: Colors.white,
                      fontFamily: "ElMessiri",
                      fontSize: 7),),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 20, 0, 20),
                    child: Icon(Icons.add_circle_outline_outlined, color: Colors.white,),
                  )
                ],)
                ,),
            ),
          ),
          Visibility(visible: cVisible,
              child: Text("نعم، يمكن تعديل الطلب بعد التسجيل.",
                style: TextStyle(
                    color: Colors.white,
                    fontFamily: "ElMessiri",
                    fontSize: 15),)),



          Padding(
            padding: const EdgeInsets.fromLTRB(15, 20, 15, 8),
            child: ButtonTheme(shape: RoundedRectangleBorder(
                borderRadius: BorderRadiusDirectional.circular(10)
            ),
              child: RaisedButton(onPressed: () {setState(() {eVisible = !eVisible;

              });},
                color: Colors.grey[600].withOpacity(0.4),
                child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Text("هل يمكنني تعديل الطلب بعد التسجيل؟", style: TextStyle(
                      color: Colors.white,
                      fontFamily: "ElMessiri",
                      fontSize: 7),),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 20, 0, 20),
                    child: Icon(Icons.add_circle_outline_outlined, color: Colors.white,),
                  )
                ],)
                ,),
            ),
          ),
          Visibility(visible: eVisible,
              child: Text("نعم، يمكن تعديل الطلب بعد التسجيل.",
                style: TextStyle(
                    color: Colors.white,
                    fontFamily: "ElMessiri",
                    fontSize: 15),)),






          Padding(
            padding: const EdgeInsets.fromLTRB(15, 20, 15, 8),
            child: ButtonTheme(shape: RoundedRectangleBorder(
                borderRadius: BorderRadiusDirectional.circular(10)
            ),
              child: RaisedButton(onPressed: () {setState(() {dVisible = !dVisible;

              });},
                color: Colors.grey[600].withOpacity(0.4),
                child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Text("هل هناك أي آثار جانبية للقاح؟", style: TextStyle(
                      color: Colors.white,
                      fontFamily: "ElMessiri",
                      fontSize: 7),),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 20, 0, 20),
                    child: Icon(Icons.add_circle_outline_outlined, color: Colors.white,),
                  )
                ],)
                ,),
            ),
          ),
          Visibility(visible: dVisible,
              child: Text("يمكن أن يسبب لقاح كوفيد 19 آثارًا جانبية طفيفة بعد الجرعة الأولى أو الثانية، وتشمل: الألم أو التورم أو الاحمرار في مكان حقن اللقاح، الحمّى، الإرهاق، الصداع، القشعريرة، ألم في العضلات، والمفاصل",
                style: TextStyle(
                    color: Colors.white,
                    fontFamily: "ElMessiri",
                    fontSize: 15),)),







          Padding(
            padding: const EdgeInsets.fromLTRB(15, 20, 15, 8),
            child: ButtonTheme(shape: RoundedRectangleBorder(
                borderRadius: BorderRadiusDirectional.circular(10)
            ),
              child: RaisedButton(onPressed: () {setState(() {fVisible = !fVisible;

              });},
                color: Colors.grey[600].withOpacity(0.4),
                child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Text("هل يعمل التطبيق على جميع الهواتف الذكية؟", style: TextStyle(
                      color: Colors.white,
                      fontFamily: "ElMessiri",
                      fontSize: 7),),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 20, 0, 20),
                    child: Icon(Icons.add_circle_outline_outlined, color: Colors.white,),
                  )
                ],)
                ,),
            ),
          ),
          Visibility(visible: fVisible,
              child: Text("نعم، يعمل التطبيق على الهواتف الذكية التي تعمل بنظامي التشغيل (iOS) وأندرويد (Android)",
                style: TextStyle(
                    color: Colors.white,
                    fontFamily: "ElMessiri",
                    fontSize: 15),)),





          Padding(
            padding: const EdgeInsets.fromLTRB(15, 20, 15, 8),
            child: ButtonTheme(shape: RoundedRectangleBorder(
                borderRadius: BorderRadiusDirectional.circular(10)
            ),
              child: RaisedButton(onPressed: () {setState(() {gVisible = !gVisible;

              });},
                color: Colors.grey[600].withOpacity(0.4),
                child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Text("هل أستطيع أخذ اللقاح وأنا مصاب بفيروس كورونا؟", style: TextStyle(
                      color: Colors.white,
                      fontFamily: "ElMessiri",
                      fontSize: 7),),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 20, 0, 20),
                    child: Icon(Icons.add_circle_outline_outlined, color: Colors.white,),
                  )
                ],)
                ,),
            ),
          ),
          Visibility(visible: gVisible,
              child: Text("لا يفضل أخذ اللقاح لمن شخصوا بالإصابة بالفيروس، ولم يتحدد بعد الحد الأدنى للفترة الزمنية الموصى بها للتطعيم بعد التعافي.",
                style: TextStyle(
                    color: Colors.white,
                    fontFamily: "ElMessiri",
                    fontSize: 15),)),





          Padding(
            padding: const EdgeInsets.fromLTRB(15, 20, 15, 8),
            child: ButtonTheme(shape: RoundedRectangleBorder(
                borderRadius: BorderRadiusDirectional.circular(10)
            ),
              child: RaisedButton(onPressed: () {setState(() {hVisible = !hVisible;

              });},
                color: Colors.grey[600].withOpacity(0.4),
                child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Text("هل يجب الالتزام بارتداء كمامة والتباعد الجسماني بعد تلقي اللقاح؟", style: TextStyle(
                      color: Colors.white,
                      fontFamily: "ElMessiri",
                      fontSize: 7),),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 20, 0, 20),
                    child: Icon(Icons.add_circle_outline_outlined, color: Colors.white,),
                  )
                ],)
                ,),
            ),
          ),
          Visibility(visible: hVisible,
              child: Text("نعم، حتى بعد الموافقة على بدء حملات التطعيم باللقاح، يقول الخبراء ستبقى هناك ضرورة للاستمرار في ارتداء الكمامات والأقنعة الواقية والالتزام بمسافات التباعد الجسماني، ويرجع ذلك جزئيا إلى أن جرعات اللقاح ستكون محدودة، وسيستغرق الأمر وقتًا لتحصين عدد كافٍ من سكان كل بلد لإبطاء والقضاء على دورة انتشار فيروس كورونا تدريجيًا. ويتوقع الخبراء أن العودة إلى الحياة الطبيعية ربما يستغرق عدة أشهر أو أكثر..",
                style: TextStyle(
                    color: Colors.white,
                    fontFamily: "ElMessiri",
                    fontSize: 15),)),









    ]))))))));
  }
}
