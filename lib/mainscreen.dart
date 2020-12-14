import 'package:flutter/material.dart';

class mainpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          title: Center(child: Image.asset(
            "assets/Ehjez-Logo.png", width: 65, height: 65,)),
          elevation: 0.0,
          backgroundColor: Colors.grey[900].withOpacity(0.33),

        ),
     body: Stack(children: <Widget>[
       Container(
         decoration: BoxDecoration(
           color: Colors.transparent,
           image: DecorationImage(
             fit: BoxFit.fill,
             image: AssetImage(
               'assets/bgimg.jpg',
             ),
           ),
         ),
         height: double.infinity,
       ),
       Container(
         height: double.infinity,
         decoration: BoxDecoration(
             color: Colors.white,
             gradient: LinearGradient(
                 begin: FractionalOffset.topCenter,
                 end: FractionalOffset.bottomCenter,
                 colors: [
                   Colors.grey.withOpacity(0.0),
                   Colors.black,
                 ],
                 stops: [
                   0.0,
                   1.0
                 ])),
       )
     ]),
    )
    );
  }
}
