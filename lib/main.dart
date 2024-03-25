import 'package:flutter/material.dart';
import 'package:flutter_tickets_booking_agency/SingUp.dart';
import 'screen/Edit_Profile.dart';
import 'screen/LogIn.dart';
import 'screen/Profile.dart';
// void main() {
// runApp(MyApp());

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
      home: const SingUpsrceen(),
    );
  }
}
