import 'package:flutter/material.dart';

class mainscreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[600],
      appBar: AppBar(
        title: Image.asset("assets/Ehjez-Logo.png", height: 40,),
        backgroundColor: Colors.transparent,
        centerTitle: true,

      ),
    );
  }
}
