import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() => runApp(MaterialApp(
  home: splashPage(),
));

class splashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Container(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 100, 0, 45),
            child: Image.asset("assets/Ehjez-Logo.png", width: 270,),
          ),
          Divider(
            height: 1,
            color: Colors.white,
            thickness: 2,
            indent: 50,
            endIndent: 50,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 45, 0, 0),
            child: Image.asset("assets/mohlogo.png", height: 160,),
          ),
        ],
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
      ),
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.bottomLeft,
              end: Alignment.topRight,
              colors: [
                Color.fromRGBO(31, 112, 138, 1),
                Color.fromRGBO(64, 162, 117, 1)
              ])
      ),
    ));
  }
}


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor : Colors.transparent,
       appBar: AppBar(
         title: Center(child: Image.asset("")),
          elevation: 0.0,
            backgroundColor: Colors.grey[400].withOpacity(0.5),
    ),
        body: Container(
              decoration: BoxDecoration(
              gradient: LinearGradient(
              begin: Alignment.bottomLeft,
              end: Alignment.topRight,
              colors: [
               Color.fromRGBO(31, 112, 138, 1),
               Color.fromRGBO(64, 162, 117, 1)]
    )
    )
        ));





  }
}
