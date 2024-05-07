import 'package:flutter/material.dart';
import 'package:flutter_tickets_booking_agency/Booking/Booking.dart';
import 'package:flutter_tickets_booking_agency/Booking/booking_details.dart';
import 'package:flutter_tickets_booking_agency/Flight/flight_details.dart';
import 'package:flutter_tickets_booking_agency/Navigationbar/Main_page.dart';
import 'package:flutter_tickets_booking_agency/Navigationbar/homepage.dart';
import 'package:flutter_tickets_booking_agency/Navigationbar/recmmended.dart';
import 'package:flutter_tickets_booking_agency/Screen/LogIn.dart';
import 'package:flutter_tickets_booking_agency/Screen/sign_up.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        title: 'VieWise',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(primarySwatch: Colors.blue),
        home: LogInScreen());
  }
}

// Future<void> main() async {
//    WidgetsFlutterBinding.ensureInitialized();
//   await Firebase.initializeApp();
//   runApp(const MyApp());
// }
