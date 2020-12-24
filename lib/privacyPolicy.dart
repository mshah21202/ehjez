import 'package:flutter/material.dart';

class privacyPolicy extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.teal[300],
        body: SingleChildScrollView(child: SafeArea(
        child: Container(
        height:4000 ,
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
          children: [

            Container( padding: const EdgeInsets.fromLTRB(0, 50, 70, 20),

            child: Text(" سياسة الخصوصية "
                ,textAlign: TextAlign.center,style: TextStyle(
                  wordSpacing: 1,
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontFamily: "ElMessiri",)  ),),



            Container( padding: const EdgeInsets.fromLTRB(0, 0, 5, 10),

              child: Text("أ – مقدمة"
                  ,textAlign: TextAlign.right,style: TextStyle(
                    wordSpacing: 1,
                    fontSize: 17.0,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontFamily: "ElMessiri",)  ),),




            Container( padding: const EdgeInsets.fromLTRB(2, 0, 5, 5),

              child: Text(" إننا نهتم بشكل كبير بخصوصية بيانات المستخدم، ونتعهد بحمايتها. تشرح هذه السياسة كيفية التصرف في معلوماتك الشخصية "
                  ,textAlign: TextAlign.right,style: TextStyle(
                    wordSpacing: 1,
                    fontSize: 15.0,
                    color: Colors.white,
                    fontFamily: "ElMessiri",)  ),),






            Container( padding: const EdgeInsets.fromLTRB(2, 0, 10, 0),

              child: Text(" * بموافقتك على استخدامنا لملفات تعريف الارتباط وفقًا لبنود هذه السياسة عند زيارتك لتطبيقنا الإلكتروني لأول مرة فإنك تسمح لنا باستخدام ملفات تعريف الارتباط في كل مرة تستخدم التطبيق."
                  ,textAlign: TextAlign.right,style: TextStyle(
                    wordSpacing: 1,
                    fontSize: 15.0,
                    color: Colors.white,
                    fontFamily: "ElMessiri",)  ),),






            Container( padding: const EdgeInsets.fromLTRB(2, 30, 10, 10),

              child: Text("ب. جمع المعلومات الشخصية "
                  ,textAlign: TextAlign.right,style: TextStyle(
                    wordSpacing: 1,
                    fontSize: 17.0,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontFamily: "ElMessiri",)  ),),





            Container( padding: const EdgeInsets.fromLTRB(2, 0, 10, 0),

              child: Text(" قد يتم تخزين وجمع نوعين من المعلومات عنك  واستخدام بعض المعلومات الشخصية من خلال الموقع، مثل:"
                  ,textAlign: TextAlign.right,
                  textDirection: TextDirection.rtl,
                  style: TextStyle(
                    wordSpacing: 1,
                    fontSize: 15.0,
                    color: Colors.white,
                    fontFamily: "ElMessiri",
                  )  ),),





      Container( padding: const EdgeInsets.fromLTRB(3, 10, 10, 0),

        child: Text(" ١) المعلومات الشخصية المقدمة لنا من قبلك في وقت التسجيل الطوعي (أو بعده) للخدمات المقدمة من قبلنا مثل (ولكن ليس على سبيل الحصر)، اسمك، صور ملفك الشخصي، الجنس، تاريخ الميلاد، الحالة الاجتماعية، الحالة الصحية. (“معلومات شخصية”)؛ "
            ,textAlign: TextAlign.right,style: TextStyle(
              wordSpacing: 1,
              fontSize: 15.0,
              color: Colors.white,
              fontFamily: "ElMessiri",)  ),),




            Container( padding: const EdgeInsets.fromLTRB(3, 10, 10, 10),

              child: Text(" ٢) المعلومات المجمعة من خلال أنظمتنا، مثل نوع المتصفح، والإصدار، ونظام التشغيل، واسم نطاق ووقت الدخول إلى التطبيق. وتستخدم هذه المعلومات لأغراض البحث الخاصة بنا وهي منفصلة عن أية معلومات شخصية. "
                  ,textAlign: TextAlign.right,style: TextStyle(
                    wordSpacing: 1,
                    fontSize: 15.0,
                    color: Colors.white,
                    fontFamily: "ElMessiri",)  ),),





            Container( padding: const EdgeInsets.fromLTRB(3, 0, 10, 10),

              child: Text(" ٢.١) وننوه إلى أن فشلك في تقديم المعلومات الشخصية الضرورية عند الطلب قد يؤدي إلى عدم توفير بعض الخدمات لك."
                  ,textAlign: TextAlign.right,style: TextStyle(
                    wordSpacing: 1,
                    fontSize: 15.0,
                    color: Colors.white,
                    fontFamily: "ElMessiri",)  ),),




            Container( padding: const EdgeInsets.fromLTRB(3, 10, 10, 10),

              child: Text(" * معلومات حول زياراتك لهذا الموقع واستخدامه بما في ذلك مصدر الإحالة، ومدة الزيارة، وما تشاهده على الصفحة، ومسارات التصفح في الموقع."
                  ,textAlign: TextAlign.right,style: TextStyle(
                    wordSpacing: 1,
                    fontSize: 15.0,
                    color: Colors.white,
                    fontFamily: "ElMessiri",)  ),),





            Container( padding: const EdgeInsets.fromLTRB(3, 10, 10, 10),

              child: Text(" * ) لن نشارك معلوماتك الشخصية مع أي طرف ثالث (غير الجهات التابعة لتطبيق احجز) إلا إذا كنت قد قدمت موافقتك الصريحة على ذلك. نحن ملتزمون بالحفاظ على معايير أمنية وإجراءات صارمة بهدف منع الدخول غير المصرح به إلى البيانات الخاصة بك من قبل طرف ثالث. قمنا بتنفيذ إجراءات إدارية لحماية وتأمين المعلومات الشخصية التي نجمعها. "
                  ,textAlign: TextAlign.right,style: TextStyle(
                    wordSpacing: 1,
                    fontSize: 15.0,
                    color: Colors.white,
                    fontFamily: "ElMessiri",)  ),),




            Container( padding: const EdgeInsets.fromLTRB(3, 10, 10, 10),

              child: Text("قبل أن تفصح لنا عن المعلومات الشخصية الخاصة بشخص آخر، ينبغي عليك الحصول على موافقة هذا الشخص على كل من الكشف عن هذه المعلومات الشخصية ومعالجتها وفقًا لهذه السياسة. على الرغم من أننا نتخذ جميع التدابير المعقولة لمنع الدخول غير القانوني إلى المعلومات الشخصية، فإننا لا نستطيع التأكيد بأن أي طرف ثالث سيقوم بالدخول غير قانوني إلى المعلومات الشخصية التي تقدمها لنا ونحن نقترح عليك أن تأخذ جميع الاحتياطات اللازمة. لا توجد طريقة للانتقال عبر الإنترنت، أو طريقة تخزين إلكترونية، بما في ذلك البريد الإلكتروني، وغير آمنة 100٪. لا يمكننا تحمل مسؤولية أو تبعة الدخول غير القانوني أو غير المصرح به من قبل أي طرف ثالث على المعلومات الشخصية الخاصة بك. "
                  ,textAlign: TextAlign.right,style: TextStyle(
                    wordSpacing: 1,
                    fontSize: 15.0,
                    color: Colors.white,
                    fontFamily: "ElMessiri",)  ),),






            Container( padding: const EdgeInsets.fromLTRB(3, 10, 10, 10),

              child: Text("ج. استخدام معلوماتك الشخصية\n تستخدم المعلومات الشخصية المقدمة إلينا عبر تطبيقنا الإلكتروني في الأغراض الموضحة في هذه السياسة أو على الصفحات ذات الصلة من الموقع. قد نستخدم معلوماتك الشخصية في الأغراض التالية: "
                  ,textAlign: TextAlign.right,style: TextStyle(
                    wordSpacing: 1,
                    fontSize: 15.0,
                    color: Colors.white,
                    fontFamily: "ElMessiri",)  ),),






            Container( padding: const EdgeInsets.fromLTRB(0, 10, 10, 10),

              child: Text("*  إدارة موقعنا وأعمالنا على شبكة الإنترنت. "
                  ,textAlign: TextAlign.right,style: TextStyle(
                    wordSpacing: 1,
                    fontSize: 15.0,
                    color: Colors.white,
                    fontFamily: "ElMessiri",)  ),),




            Container( padding: const EdgeInsets.fromLTRB(0, 10, 10, 10),

              child: Text("*  * تخصيص موقعنا على شبكة الإنترنت ليكون أكثر ملاءمة بالنسبة لك. "
                  ,textAlign: TextAlign.right,style: TextStyle(
                    wordSpacing: 1,
                    fontSize: 15.0,
                    color: Colors.white,
                    fontFamily: "ElMessiri",)  ),),



            Container( padding: const EdgeInsets.fromLTRB(0, 10, 10, 10),

              child: Text("* تمكينك من استخدام الخدمات المتاحة على موقعنا "
                  ,textAlign: TextAlign.right,style: TextStyle(
                    wordSpacing: 1,
                    fontSize: 15.0,
                    color: Colors.white,
                    fontFamily: "ElMessiri",)  ),),





            Container( padding: const EdgeInsets.fromLTRB(0, 10, 10, 10),

              child: Text("* تزويد الأطراف الثالثة بمعلومات إحصائية عن مستخدمينا (غير أن هذه الأطراف الثالثة لن تتمكن من تحديد المستخدمين لتلك المعلومات بحد ذاتهم)."
                  ,textAlign: TextAlign.right,style: TextStyle(
                    wordSpacing: 1,
                    fontSize: 15.0,
                    color: Colors.white,
                    fontFamily: "ElMessiri",)  ),),




            Container( padding: const EdgeInsets.fromLTRB(0, 10, 10, 10),

              child: Text("* التعامل مع الاستفسارات والشكاوى التي تقدمها أنت أو تقدم لنا بشأنك على موقعنا."
                  ,textAlign: TextAlign.right,style: TextStyle(
                    wordSpacing: 1,
                    fontSize: 15.0,
                    color: Colors.white,
                    fontFamily: "ElMessiri",)  ),),




            Container( padding: const EdgeInsets.fromLTRB(0, 10, 10, 10),

              child: Text("*  حماية موقعنا من الاحتيال والحفاظ على أمنه."
                  ,textAlign: TextAlign.right,style: TextStyle(
                    wordSpacing: 1,
                    fontSize: 15.0,
                    color: Colors.white,
                    fontFamily: "ElMessiri",)  ),),



            Container( padding: const EdgeInsets.fromLTRB(0, 10, 10, 10),

              child: Text("* التحقق من الامتثال للشروط والأحكام التي تحكم استخدام تطبيقنا الإلكتروني "
                  ,textAlign: TextAlign.right,style: TextStyle(
                    wordSpacing: 1,
                    fontSize: 15.0,
                    color: Colors.white,
                    fontFamily: "ElMessiri",)  ),),




            Container( padding: const EdgeInsets.fromLTRB(0, 10, 10, 10),

              child: Text("* استخدامات أخرى."
                  ,textAlign: TextAlign.right,style: TextStyle(
                    wordSpacing: 1,
                    fontSize: 15.0,
                    color: Colors.white,
                    fontFamily: "ElMessiri",)  ),),





            Container( padding: const EdgeInsets.fromLTRB(0, 10, 10, 10),

              child: Text("د. الاحتفاظ بالمعلومات الشخصية"
                  ,textAlign: TextAlign.right,style: TextStyle(
                    wordSpacing: 1,
                    fontSize: 17.0,
                    color: Colors.white,
                    fontFamily: "ElMessiri",)  ),),





            Container( padding: const EdgeInsets.fromLTRB(0, 10, 10, 10),

              child: Text("*  يحدد هذا القسم “د” السياسات والإجراءات التي نتبعها للاحتفاظ بالبيانات، والتي صممت للمساعدة في ضمان امتثالنا لالتزاماتنا القانونية المتعلقة بالاحتفاظ بالمعلومات الشخصية وحذفها."
                  ,textAlign: TextAlign.right,style: TextStyle(
                    wordSpacing: 1,
                    fontSize: 17.0,
                    color: Colors.white,
                    fontFamily: "ElMessiri",)  ),),




            Container( padding: const EdgeInsets.fromLTRB(0, 10, 10, 10),

              child: Text("* لا يجوز الاحتفاظ بالمعلومات الشخصية التي نقوم بمعالجتها لأي غرض أو أغراض لفترة أطول مما هو ضروري لهذا الغرض أو لتلك الأغراض."
                  ,textAlign: TextAlign.right,style: TextStyle(
                    wordSpacing: 1,
                    fontSize: 17.0,
                    color: Colors.white,
                    fontFamily: "ElMessiri",)  ),),





            Container( padding: const EdgeInsets.fromLTRB(0, 10, 10, 10),

              child: Text("* . دون الإخلال بالبند د، فإننا عادة ما نقوم بحذف البيانات الشخصية التي تندرج ضمن الفئات المبينة أدناه في التاريخ / الوقت المبين أدناه:"
                  ,textAlign: TextAlign.right,style: TextStyle(
                    wordSpacing: 1,
                    fontSize: 17.0,
                    color: Colors.white,
                    fontFamily: "ElMessiri",)  ),),





            Container( padding: const EdgeInsets.fromLTRB(0, 10, 10, 10),

              child: Text("* نوع البيانات الشخصية تحذف في {أدخل الوقت/ التاريخ}؛ و \n* . { أدخل تواريخ وأوقات إضافية}."
                  ,textAlign: TextAlign.right,style: TextStyle(
                    wordSpacing: 1,
                    fontSize: 17.0,
                    color: Colors.white,
                    fontFamily: "ElMessiri",)  ),),






            Container( padding: const EdgeInsets.fromLTRB(0, 10, 10, 10),

              child: Text(" * بصرف النظر عن الأحكام الأخرى الواردة في هذا القسم د، فإننا نحتفظ بالوثائق (بما في ذلك المستندات الإلكترونية) التي تحتوي على بيانات شخصية:"
                  ,textAlign: TextAlign.right,style: TextStyle(
                    wordSpacing: 1,
                    fontSize: 17.0,
                    color: Colors.white,
                    fontFamily: "ElMessiri",)  ),),





            Container( padding: const EdgeInsets.fromLTRB(0, 10, 10, 10),

              child: Text("* بالقدر المطلوب بموجب القانون."
                  ,textAlign: TextAlign.right,style: TextStyle(
                    wordSpacing: 1,
                    fontSize: 17.0,
                    color: Colors.white,
                    fontFamily: "ElMessiri",)  ),),





            Container( padding: const EdgeInsets.fromLTRB(0, 10, 10, 10),

              child: Text(" * إذا كنا نعتقد أن هذه المستندات قد تكون ذات صلة بأي إجراءات قانونية جارية أو محتملة."
                  ,textAlign: TextAlign.right,style: TextStyle(
                    wordSpacing: 1,
                    fontSize: 17.0,
                    color: Colors.white,
                    fontFamily: "ElMessiri",)  ),),




            Container( padding: const EdgeInsets.fromLTRB(0, 10, 10, 10),

              child: Text("  * من أجل بدء أو ممارسة أو الدفاع عن حقوقنا القانونية (بما في ذلك توفير المعلومات للآخرين لأغراض منع الاحتيال والحد من مخاطر الائتمان)"
                  ,textAlign: TextAlign.right,style: TextStyle(
                    wordSpacing: 1,
                    fontSize: 17.0,
                    color: Colors.white,
                    fontFamily: "ElMessiri",)  ),),




            Container( padding: const EdgeInsets.fromLTRB(0, 10, 10, 10),

              child: Text("ذ. أمن معلوماتك الشخصية"
                  ,textAlign: TextAlign.right,style: TextStyle(
                    wordSpacing: 1,
                    fontSize: 17.0,
                    color: Colors.white,
                    fontFamily: "ElMessiri",)  ),),





            Container( padding: const EdgeInsets.fromLTRB(0, 10, 10, 10),

              child: Text("* أمن معلوماتك الشخصية  نتعهد باتخاذ الاحتياطات التقنية والتنظيمية المعقولة لمنع فقدان معلوماتك الشخصية أو إساءة استخدامها أو تغييرها."
                  ,textAlign: TextAlign.right,style: TextStyle(
                    wordSpacing: 1,
                    fontSize: 17.0,
                    color: Colors.white,
                    fontFamily: "ElMessiri",)  ),),





            Container( padding: const EdgeInsets.fromLTRB(0, 10, 10, 10),

              child: Text("* نتعهد بتخزين جميع المعلومات الشخصية التي تقدمها على خوادمنا الآمنة."
                  ,textAlign: TextAlign.right,style: TextStyle(
                    wordSpacing: 1,
                    fontSize: 17.0,
                    color: Colors.white,
                    fontFamily: "ElMessiri",)  ),),






            Container( padding: const EdgeInsets.fromLTRB(0, 10, 10, 10),

              child: Text("*  تقرّ بموافقتك على هذه السياسة بمعرفتك بأن نقل المعلومات عبر الإنترنت غير آمن بطبيعته، ولا يمكننا ضمان أمن البيانات المرسلة عبر الإنترنت."
                  ,textAlign: TextAlign.right,style: TextStyle(
                    wordSpacing: 1,
                    fontSize: 17.0,
                    color: Colors.white,
                    fontFamily: "ElMessiri",)  ),),





            Container( padding: const EdgeInsets.fromLTRB(0, 10, 10, 10),

              child: Text("ذ. أمن معلوماتك الشخصية"
                  ,textAlign: TextAlign.right,style: TextStyle(
                    wordSpacing: 1,
                    fontSize: 17.0,
                    color: Colors.white,
                    fontFamily: "ElMessiri",)  ),),




            Container( padding: const EdgeInsets.fromLTRB(0, 10, 10, 10),

              child: Text("ر. التعديلات"
                  ,textAlign: TextAlign.right,style: TextStyle(
                    wordSpacing: 1,
                    fontSize: 17.0,
                    color: Colors.white,
                    fontFamily: "ElMessiri",)  ),),




            Container( padding: const EdgeInsets.fromLTRB(0, 10, 10, 10),

              child: Text("قد نقوم بتحديث هذه السياسة من وقت لآخر عن طريق نشر نسخة جديدة على التطبيق. يجب عليك مراجعة هذه الصفحة من حين لآخر للتأكد من فهمك لأي تغييرات تطرأ على هذه السياسة."
                  ,textAlign: TextAlign.right,style: TextStyle(
                    wordSpacing: 1,
                    fontSize: 17.0,
                    color: Colors.white,
                    fontFamily: "ElMessiri",)  ),),





            Container( padding: const EdgeInsets.fromLTRB(0, 10, 10, 10),

              child: Text("أي استفسارات أو تعليقات حول مواقع أو سياسة الخصوصية ينبغي أن توجه عبر البريد الإلكتروني باستخدام النموذج الموجود في صفحة “تواصل معنا” على الموقع."
                  ,textAlign: TextAlign.right,style: TextStyle(
                    wordSpacing: 1,
                    fontSize: 17.0,
                    color: Colors.white,
                    fontFamily: "ElMessiri",)  ),),



          ])
    ))))));
  }
}
