import 'dart:async';

import 'package:flutter/material.dart';
import 'databaseHelper.dart';


class adminReviewRequest extends StatefulWidget {
  final int indexID;
  adminReviewRequest({this.indexID, Key key}): super(key: key);

  @override
  _adminReviewRequestState createState() => _adminReviewRequestState();
}

class _adminReviewRequestState extends State<adminReviewRequest> {
  @override
  var futureBuilder = new FutureBuilder(
    future: _getData(),
    builder: (context, snapshot) {
      return createListView(context: context,snapshot: snapshot);
    },
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            SafeArea(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0,20,0,0),
                    child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        ButtonTheme(
                          height: 70,
                          minWidth: 110,
                          child: RaisedButton(
                            onPressed: (){},
                            child: Text("غير مراجع",
                              style: TextStyle(color: Colors.white),),
                            color: Colors.teal[800],
                          ),
                        ),
                        ButtonTheme(
                          height: 70,
                          minWidth: 110,
                          child: RaisedButton(
                            onPressed: (){},
                            child: Text("مقبول",
                              style: TextStyle(color: Colors.white),),
                            color: Colors.teal[800],
                          ),
                        ),
                        ButtonTheme(
                          height: 70,
                          minWidth: 110,
                          child: RaisedButton(
                            onPressed: (){},
                            child: Text("مرفوض",
                              style: TextStyle(color: Colors.white),),
                            color: Colors.teal[800],
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
    );
  }
}

class createListView extends StatefulWidget {
  final BuildContext context;
  const createListView ({Key key, this.context, this.snapshot}): super(key: key);
  final AsyncSnapshot snapshot;
  const createListView.withA ({Key key, this.snapshot, this.context}): super(key: key);

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
    bool isButtonDisabled;
    List values = widget.snapshot.data;
    print(values);
    return ListView.builder(
      shrinkWrap: true,
      scrollDirection: Axis.vertical,
      itemCount: values.length,
      itemBuilder: (BuildContext context, int index){
        if (values[index].row[9] == 1){
          isButtonDisabled = false;
        } else {
          isButtonDisabled = true;
        }
        return new Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 20, 0, 8),
              child: Container(
                decoration: BoxDecoration(color: Colors.white,
                    boxShadow: [BoxShadow(
                        color: Colors.black.withOpacity(0.2),
                        spreadRadius: 5,
                        blurRadius: 5,
                        offset: Offset(0, 7)
                    )]
                ),
                width: double.infinity,
                height: 150,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                      child: ButtonTheme(shape: RoundedRectangleBorder(
                          borderRadius: BorderRadiusDirectional.circular(8)
                      ),
                        child: FlatButton(height: 50, minWidth: 100,
                          onPressed: () {

                          },
                          child: Text("مراجعة",
                            style: TextStyle(fontSize: 20,
                                color: Colors.white
                            ),
                          ),
                          color: Colors.teal[300],
                          disabledColor: Colors.grey[600],
                        ),
                      ),
                    ),
                    Expanded(
                      child: new ListTile(
                        title: Column(crossAxisAlignment: CrossAxisAlignment.end, mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            new RichText(textDirection: TextDirection.rtl,
                              textAlign: TextAlign.right,
                              text: new TextSpan(
                                  style: TextStyle(color: Colors.black, fontSize: 18),
                                  children: [
                                    new TextSpan(text: "الإسم: "),
                                    new TextSpan(text: values[index].row[1], style: TextStyle(fontWeight: FontWeight.bold))
                                  ]),
                            ),
                            new RichText(textDirection: TextDirection.rtl,
                              textAlign: TextAlign.right,
                              text: new TextSpan(
                                  style: TextStyle(color: Colors.black, fontSize: 18),
                                  children: [
                                    new TextSpan(text: (values[index].row[5] == 1) ? "رقم الهوية: " : "رقم جواز السفر: "),
                                    new TextSpan(text: values[index].row[2], style: TextStyle(fontWeight: FontWeight.bold))
                                  ]),
                            ),
                            new RichText(textDirection: TextDirection.rtl,
                              textAlign: TextAlign.right,
                              text: new TextSpan(
                                  style: TextStyle(color: Colors.black, fontSize: 18),
                                  children: [
                                    new TextSpan(text: "الجنسية: "),
                                    new TextSpan(text: (values[index].row[5] == 1) ? "أردني" : "جنسيه أخرى", style: TextStyle(fontWeight: FontWeight.bold))
                                  ]),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Icon((values[index].row[9] == 1) ? Icons.autorenew_sharp : ((values[index].row[9] == 2) ? Icons.check_circle : Icons.cancel), color: (values[index].row[9] == 1) ? Colors.teal[300] : ((values[index].row[9] == 2) ? Colors.green[800] : Colors.red[800]), size: 75,)
                  ],
                ),
              ),
            )
          ],
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