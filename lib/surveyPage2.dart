import 'package:ehjez/databaseHelper.dart';
import 'package:flutter/material.dart';
import "dart:ui";

class surveyPageSec extends StatefulWidget {
  final int requestID;
  surveyPageSec(this.requestID,{Key key}) : super(key: key);
  @override
  _surveyPageSecState createState() => _surveyPageSecState();
}



class _surveyPageSecState extends State<surveyPageSec> {
List<Map> questionList = [];
Map<String,String> answer={};
List<String> answers=['لا','نعم'];

  @override
  void initState(){
    super.initState();
    getData();
  }

  getData(){
    questionList.add({
      'id': 'ID1',
      'question': 'هل لديك أمراض مزمنة؟'
    });
    questionList.add({
      'id': 'ID2',
      'question': 'هل خضعت لعملية كبرى مؤخراً؟'
    });
    questionList.add({
      'id': 'ID3',
      'question': 'هل كان لديك فحص إيجابي لفيروس كورونا؟'
    });
    questionList.add({
      'id': 'ID4',
      'question': 'الحالة الإجتماعية؟'
    });
    questionList.add({
      'id': 'ID4',
      'question': 'هل لديك حساسية من أي شيء؟'
    });
  }

  Widget build(BuildContext context) {
    int requestID = widget.requestID;
    return Scaffold(
        resizeToAvoidBottomPadding: false,
        resizeToAvoidBottomInset: true,
        backgroundColor: Colors.teal[300],
        body: Stack(
            children: [
              SafeArea(
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
                    ),
                  ),
                ),
              ),
              SingleChildScrollView(
                child: Column(
                  children: [SafeArea(
                    child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: IconButton(
                            icon: Icon(Icons.arrow_back_ios_outlined),
                            onPressed: () {Navigator.pop(context);},
                            color: Colors.white, iconSize: 19
                        ),
                      ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 12, 25, 0),
                          child: Text("تقديم طلب جديد", style: TextStyle(
                            color: Colors.white,
                            fontFamily: "ElMessiri",
                            fontSize: 25
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                    Column(
                      children: [ListView.builder(
                        shrinkWrap: true,
                        scrollDirection: Axis.vertical,
                        itemCount: questionList.length,
                        itemBuilder: (context, index) {return Column(crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Center(
                              child: ListTile(
                                title: Text( questionList[index]['question'], textAlign: TextAlign.end, style: TextStyle(
                                  color: Colors.white, fontFamily: "ElMessiri"
                                )
                                  ,),
                                subtitle: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Theme(data: ThemeData.dark(),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: answers.map((s){
                                        return Row(mainAxisAlignment: MainAxisAlignment.center,
                                          children: <Widget>[
                                            Padding(
                                              padding: const EdgeInsets.fromLTRB(50, 30, 0, 30),
                                              child: Text(s,style:TextStyle(color:Colors.white, fontFamily: "ElMessiri")),
                                            ),
                                            Radio(
                                              activeColor: Colors.white,
                                              groupValue: answer[questionList[index]['id']],
                                              value: s,
                                              onChanged: (newValue) {
                                                setState((){
                                                  answer[questionList[index]['id']]=newValue;
                                                });
                                              },
                                            ),
                                          ],
                                        );
                                      }).toList(),
                                    ),
                                  ),
                                )
                              ),
                            ),
                          ],
                        );}
                      ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(40, 40, 40, 40),
                          child: ButtonTheme(shape: RoundedRectangleBorder(
                              borderRadius: BorderRadiusDirectional.circular(20)
                          ),
                            child: RaisedButton(onPressed: () async {
                              String question1 = answer['ID1'].toString();
                              String question2 = answer['ID2'].toString();
                              String question3 = answer['ID3'].toString();

                              int answer1, answer2, answer3;

                              if (question1 == "نعم") {
                                answer1 = 1;
                              } else {
                                answer1 = 2;
                              }
                              if (question2 == "نعم") {
                                answer2 = 1;
                              } else {
                                answer2 = 2;
                              }
                              if (question3 == "نعم") {
                                answer3 = 1;
                              } else {
                                answer3 = 2;
                              }

                              await databaseHelper.instance.update({
                                databaseHelper.columnID: requestID,
                                databaseHelper.columnQ1: answer1,
                                databaseHelper.columnQ2: answer2,
                                databaseHelper.columnQ3: answer3,
                              });
                              Navigator.pushReplacementNamed(context, '/review');
                              List<Map<String,dynamic>> queryRows = await databaseHelper.instance.queryAll();
                              print(queryRows);
                            }, color: Color.fromRGBO(46,168,172, 1),
                              child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                                Text("أرسل الطلب", style: TextStyle(color: Colors.white, fontFamily: "ElMessiri", fontSize: 25),),
                                Padding(
                                  padding: const EdgeInsets.fromLTRB(40, 20, 0, 20),
                                  child: Icon(Icons.send, color: Colors.white,),
                                )
                              ],)
                              ,),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              )
            ]
        )
    );
  }
}