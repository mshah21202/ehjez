import 'package:flutter/material.dart';
import "dart:ui";

class surveyPageSec extends StatefulWidget {
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
  }

  Widget build(BuildContext context) {

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
                    child: Row(
                      children: [Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: IconButton(
                            icon: Icon(Icons.arrow_back_ios_outlined),
                            onPressed: () {Navigator.pop(context);},
                            color: Colors.white, iconSize: 19
                        ),
                      ),
                      ],
                    ),
                  ),
                    Center(
                      child: Column(
                        children: [Container(
                          child: ListView.builder(
                            shrinkWrap: true,
                            scrollDirection: Axis.vertical,
                            itemCount: questionList.length,
                            itemBuilder: (context, index) {return Column(
                              children: [
                                Center(
                                  child: ListTile(
                                    title: Text( questionList[index]['question'], textAlign: TextAlign.end, style: TextStyle(
                                      color: Colors.white,
                                    )
                                      ,),
                                    subtitle: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Theme(data: ThemeData.dark(),
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                                          children: answers.map((s){
                                            return Row(
                                              children: <Widget>[
                                                Text(s,style:TextStyle(color:Colors.white)),
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
                        ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(40, 40, 40, 40),
                            child: ButtonTheme(shape: RoundedRectangleBorder(
                                borderRadius: BorderRadiusDirectional.circular(20)
                            ),
                              child: RaisedButton(onPressed: () {Navigator.pushNamed(context, '/survey2');}, color: Color.fromRGBO(46,168,172, 1),
                                child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                                  Text("التالي", style: TextStyle(color: Colors.white, fontFamily: "ElMessiri", fontSize: 25),),
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(20, 20, 0, 20),
                                    child: Icon(Icons.arrow_forward_outlined, color: Colors.white,),
                                  )
                                ],)
                                ,),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              )
            ]
        )
    );
  }
}