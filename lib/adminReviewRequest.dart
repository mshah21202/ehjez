import 'dart:async';

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
    int IndexID = widget.indexID+1;
    var futureBuilder = new FutureBuilder(
      future: _getData(),
      builder: (context, snapshot) {
        return createListView(context: context,snapshot: snapshot, indexID: IndexID,);
      },
    );
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
                          minWidth: 150,
                          child: RaisedButton(
                            onPressed: () async {
                              int result = await databaseHelper.instance.update({
                                databaseHelper.columnID: IndexID,
                                databaseHelper.columnStatus: 2
                              });
                              print(result);
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
                            onPressed: (){},
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
    );
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
      shrinkWrap: true,
      scrollDirection: Axis.vertical,
      itemCount: values.length,
      itemBuilder: (BuildContext context, int index){
        return new Column(mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(values[indexID].row[1]),
            Text(values[indexID].row[2].toString()),
            Text(values[indexID].row[3].toString()),
            Text(values[indexID].row[4].toString()),
            Text((values[indexID].row[5] == 1) ? "أردني":"جنسية أخرى"),
            Text((values[indexID].row[6] == 1) ? "لديه أمراض مزمنة": "ليس لديه أمراض مزمنة"),
            Text((values[indexID].row[7] == 1) ? "خضع لعملية جراحية مؤخراً": "لم يخضع لعملية جراحية مؤخراً"),
            Text((values[indexID].row[8] == 1) ? "كان مصاب":"لم يصب من قبل"),
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