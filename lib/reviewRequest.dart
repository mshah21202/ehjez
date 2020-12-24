import 'package:ehjez/databaseHelper.dart';
import 'package:flutter/material.dart';


class reviewRequest extends StatefulWidget {
  @override
  _reviewRequestState createState() => _reviewRequestState();
}

class _reviewRequestState extends State<reviewRequest>{
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
              child: Column(crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: IconButton(
                          icon: Icon(Icons.arrow_back_ios_outlined),
                          onPressed: () {Navigator.pop(context);},
                          color: Colors.white, iconSize: 19
                      ),
                    ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 20, 20, 0),
                        child: Text("الطلبات السابقة", textAlign: TextAlign.end,style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontFamily: "ElMessiri",
                        ),
                        ),
                      ),
                    ],
                  ),
                  Divider(height: 0, thickness: 2, indent: 200, endIndent: 20, color: Colors.white),
                  futureBuilder,
                ],
              ),
            )
          ]
      ),
    );
  }
}

Widget createListView(BuildContext context, AsyncSnapshot snapshot) {
  print(1);
  List values = snapshot.data;
  print(values);
  return ListView.builder(
    shrinkWrap: true,
    scrollDirection: Axis.vertical,
    itemCount: values.length,
    itemBuilder: (BuildContext context, int index){
      return new Column(
        children: [
          new ListTile(
            title: new Text(values[index].row[2]),
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