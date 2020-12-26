import 'package:flutter/material.dart';
import 'databaseHelper.dart';


class adminMainPage extends StatelessWidget {
  var futureBuilder = new FutureBuilder(
    future: _getData(),
    builder: (context, snapshot) {
      return createListView(context, snapshot);
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


Widget createListView(BuildContext context, AsyncSnapshot snapshot) {
  bool isButtonDisabled;
  List values = snapshot.data;
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
                        onPressed: isButtonDisabled ? () async {
                          await databaseHelper.instance.update({
                            databaseHelper.columnID: index++,
                            databaseHelper.columnStatus: 1,
                          });
                        } : () async {
                        await databaseHelper.instance.update({
                          databaseHelper.columnID: index++,
                          databaseHelper.columnStatus: 2,
                        });
                        },
                        child: Text((isButtonDisabled) ? "رفض": "قبول",
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
                ],
              ),
            ),
          )
        ],
      );
    },
  );
}

Future<List<Map<String,dynamic>>> _getData() async {
  var requestQuery = new List();
  requestQuery = await databaseHelper.instance.queryAll();
  return requestQuery;
}