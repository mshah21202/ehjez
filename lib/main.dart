import 'package:ehjez/mainpage.dart';
import 'package:flutter/material.dart';
import 'package:ehjez/splashScreen.dart';
import 'package:ehjez/ReservationScreen.dart';
import 'package:ehjez/infoscreen.dart';
import 'package:ehjez/mainscreen.dart';

void main() => runApp(MaterialApp(
  initialRoute: '/splash',
  routes: {
    '/splash': (context) => splashPage(),
    '/': (context) => mainscreen(),
    '/reserve': (context) => Reservationscreen(),
    '/info': (context) => infoscreen(),
  },
));

