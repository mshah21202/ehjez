import 'package:ehjez/ReservationScreen.dart';
import 'package:flutter/material.dart';


class aboutApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.teal[300],
        body: SingleChildScrollView(child: SafeArea(
          child: Container(
              height:920 ,
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
                      padding: const EdgeInsets.fromLTRB(5, 40, 10, 10),
                      child: Column( crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container( padding: EdgeInsets.only(
                              bottom: 2,
                            ),

                                child: Text(
                                  'عن برنامج إحجز',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    wordSpacing: 0,
                                    fontSize: 25.0,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    fontFamily: "ElMessiri",
                                  ),
                                )),



                            Container( padding: const EdgeInsets.fromLTRB(15, 20, 8, 10),

                              child: Text(" ابتكر تطبيق احجز في سبيل تسهيل الحصول على لقاح كورونا عبر الهواتف الذكية, من خلال إمكانية حجز مواعيد لك ولعائلتك في المراكز الصحية والمستشفيات المعتمدة من وزارة الصحة لإعطاء اللقاح، وذلك في إطار دعم الجهود الحكومية لاحتواء جائحة كورونا، ويتميز هذا التطبيق بسهولة وسرعة الاستخدام وحفظ خصوصية المستخدم، بالإضافة لتوفير الوقت والجهد، كما يمكن أن يساهم أيضاً في تقليل نسبة الإصابة بالعدوى من المستشفيات، علاوةً على ذلك سيكون التسجيل فيه متاحًا للأفراد من مواطنين ووافدين، كما سيعمل على توفير أحدث التنبيهات والأخبار الطبيّة الصادرة من وزارة الصحة عن الفيروس وانتشاره وسبل الوقاية منه، وتجدر الإشارة إلى أن العمل على تطوير وتحديث هذا التطبيق يجري بشكل مستمر وذلك بإضافة المزيد من الخصائص والمزايا في التحديثات القادمة."
                                  ,textAlign: TextAlign.center,style: TextStyle(
                                    wordSpacing: 1,
                                    fontSize: 17.0,

                                    color: Colors.white,
                                    fontFamily: "ElMessiri",)  ),),


                            Container (
                              padding: EdgeInsets.only(
                                top: 2,
                              ),
                              decoration: BoxDecoration(
                                  border: Border(bottom: BorderSide(
                                    color: Colors.white,
                                    width: 3.0,
                                  )
                                  )
                              ),

                              child: Text(  "التعليمات  ",
                                textAlign: TextAlign.right,
                                style: TextStyle(
                                  wordSpacing: 0,
                                  fontStyle: FontStyle.italic,
                                  fontSize: 22.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  fontFamily: "ElMessiri",
                                ),
                              ),
                            ),


                            Container( padding: const EdgeInsets.fromLTRB(15, 26, 8, 10),

                              child: Text("ينبغي الحرص على تعبئة البيانات الخاصة بالمستخدم بشكل كامل و صحيح، حيث تعتبر هذه المعلومات مهمة للغاية للكوادر الصحية، فقد تمكنهم من معرفة بعض المعلومات الأولية و المهمة جداً، وسيتطلب التطبيق إجراء تسجيل دخول، قبل البدء في عملية حجز موعد لأخذ اللقاح."
                                  ,textAlign: TextAlign.right,style: TextStyle(
                                    wordSpacing: 1,
                                    fontSize: 17.0,
                                    color: Colors.white,
                                    fontFamily: "ElMessiri",)  ),),




                          ]
                      )
                  ),
























                ),
              )















          ),
        )
        )
    );


  }}