import 'package:flutter/material.dart';
import 'package:flutter_tickets_booking_agency/Booking/Passenger.dart';
import 'package:flutter_tickets_booking_agency/Booking/SelectFight.dart';
import 'package:flutter_tickets_booking_agency/SignUp.dart';
import 'Edit_Profile.dart';
import 'LogIn.dart';
import 'Profile.dart';
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
      home: SelectFight(),
    );
  }
}
