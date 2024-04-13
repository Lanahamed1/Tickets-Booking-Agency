import 'package:flutter/material.dart';
import 'package:flutter_tickets_booking_agency/Auth.dart';
import 'package:flutter_tickets_booking_agency/Booking/flight_card.dart';
import 'package:flutter_tickets_booking_agency/Booking/Booking.dart';
import 'package:flutter_tickets_booking_agency/Booking/Flights.dart';
import 'package:flutter_tickets_booking_agency/flights_search/mainesearch.dart';
import 'package:flutter_tickets_booking_agency/navigationbar/Homepage.dart';
import 'package:flutter_tickets_booking_agency/navigationbar/Mainpage.dart';
import 'package:flutter_tickets_booking_agency/secreen/SignUp.dart';
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
      home: Mainesearch(),
    );
  }
}
