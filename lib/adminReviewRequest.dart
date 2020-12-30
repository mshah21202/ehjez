import 'dart:async';

import 'package:ehjez/adminMainPage.dart';
import 'package:flutter/material.dart';
import 'databaseHelper.dart';


class adminReviewRequest extends StatefulWidget {
  final int indexID;
  adminReviewRequest(this.indexID, {Key key}): super(key: key);

  @override
  _adminReviewRequestState createState() => _adminReviewRequestState();
}

class _adminReviewRequestState extends State<adminReviewRequest> {
  @override
  Widget build(BuildContext context) {
    int IndexID = widget.indexID;
    var futureBuilder = new FutureBuilder(
      future: _getData(),
      builder: (context, snapshot) {
        return createListView(context: context,snapshot: snapshot, indexID: IndexID,);
      },
    );
    return Scaffold(
      backgroundColor: Colors.teal[300],
      body: SingleChildScrollView(child: Stack(
          children: [
            SafeArea(
              child: new Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height,
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
            SafeArea(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0,20,0,0),
                    child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        ButtonTheme(
                          height: 70,
                          minWidth: 150,
                          child: RaisedButton(
                            onPressed: () async {
                              int result = await databaseHelper.instance.update({
                                databaseHelper.columnID: IndexID+1,
                                databaseHelper.columnStatus: 2
                              });
                              print(result);
                              Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => adminMainPage()), (Route<dynamic> route) => false);
                            },
                            child: Text("مقبول",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 22
                              ),
                            ),
                            color: Colors.teal[500],
                          ),
                        ),
                        ButtonTheme(
                          height: 70,
                          minWidth: 150,
                          child: RaisedButton(
                            onPressed: () async {
                              int result = await databaseHelper.instance.update({
                                databaseHelper.columnID: IndexID+1,
                                databaseHelper.columnStatus: 3
                              });
                              print(result);
                              Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => adminMainPage()), (Route<dynamic> route) => false);
                            },
                            child: Text("مرفوض",
                              style: TextStyle(
                                  color: Colors.white,
                                fontSize: 22
                              ),
                            ),
                            color: Colors.red[900],
                          ),
                        ),
                      ],
                    ),
                  ),
                  futureBuilder
                ],
              ),
            )
          ]
      ),
    ));
  }
}

class createListView extends StatefulWidget {
  final BuildContext context;
  final AsyncSnapshot snapshot;
  final int indexID;
  const createListView ({Key key, this.context, this.snapshot, this.indexID}): super(key: key);

  @override
  _createListViewState createState() => _createListViewState();
}

class _createListViewState extends State<createListView> {
  @override
  void setState(fn) {
    // TODO: implement setState
    super.setState(fn);
  }
  @override
  Widget build(BuildContext context) {
    int indexID = widget.indexID;
    bool isButtonDisabled;
    List values = widget.snapshot.data;
    print(values);
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      scrollDirection: Axis.vertical,
      itemCount: values.length,
      itemBuilder: (BuildContext context, int index){
        return ListTile(
          title: Container(color: Colors.white, width: double.infinity, margin: EdgeInsets.fromLTRB(0, 50, 0, 0),
            child: new Column(mainAxisAlignment: MainAxisAlignment.spaceBetween, crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 20, 20, 25),
                  child: Text("الأسم:  " + values[indexID].row[1], textDirection: TextDirection.rtl,),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 20, 25),
                  child: Text("رقم الوطني:  " + values[indexID].row[2].toString(), textDirection: TextDirection.rtl,),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 20, 25),
                  child: Text("العمر:  " + values[indexID].row[3].toString(), textDirection: TextDirection.rtl,),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 20, 25),
                  child: Text("رقم الهاتف:  " + values[indexID].row[4].toString(), textDirection: TextDirection.rtl,),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 20, 25),
                  child: Text("الجنسية:  " + ((values[indexID].row[5] == 1) ? "أردني":"جنسية أخرى"), textDirection: TextDirection.rtl,),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 20, 25),
                  child: Text("أمراض مزمنة:  " + ((values[indexID].row[6] == 1) ? "لديه أمراض مزمنة": "ليس لديه أمراض مزمنة"), textDirection: TextDirection.rtl,),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 20, 25),
                  child: Text("عملية:  " + ((values[indexID].row[7] == 1) ? "خضع لعملية جراحية مؤخراً": "لم يخضع لعملية جراحية مؤخراً"), textDirection: TextDirection.rtl,),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 20, 25),
                  child: Text("أصيب:  " + ((values[indexID].row[8] == 1) ? "كان مصاب":"لم يصب من قبل"), textDirection: TextDirection.rtl,),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}


Future<List<Map<String,dynamic>>> _getData() async {
  var requestQuery = new List();
  requestQuery = await databaseHelper.instance.queryAll();
  return requestQuery;
}