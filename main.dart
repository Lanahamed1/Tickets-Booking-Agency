//im0port 'package:app/screen/singup.dart';
//import 'package:app/appstyle.dart';
//import 'package:app/screen/login.dart';
//import 'package:app/flights_search/mainesearch.dart';
import 'package:app/navigationbar/Mainpage.dart';
import 'package:app/navigationbar/booking.dart';
import 'package:flutter/material.dart';
//import 'package:app/navigationbar/Mainpage.dart';
//import 'package:app/screen/welcome_page.dart';
//import 'package:app/pay.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Tickets booking agency',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(primarySwatch: Colors.blue),
        home: const Mainpage());
  }
}
