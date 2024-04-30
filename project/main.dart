//import 'package:app/view/screen/login.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:app/view/screen/welcome_page.dart';
//import 'package:app/view/screen/singup.dart';
import 'package:app/view/navigationbar/Mainpage.dart';
import 'package:app/view/flights_search/mainesearch.dart';
import 'package:app/view/navigationbar/my_booking.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        title: 'Tickets booking agency',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(primarySwatch: Colors.blue),
        home: const Start());
  }
}
