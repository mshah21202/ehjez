import 'package:ehjez/mainscreen.dart';
import 'package:flutter/material.dart';
import 'package:ehjez/splashScreen.dart';

void main() => runApp(MaterialApp(
  initialRoute: '/splash',
  routes: {
    '/splash': (context) => splashPage(),
    '/': (context) => mainscreen()
  },
));

