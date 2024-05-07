import 'package:flutter/material.dart';
import 'package:flutter_tickets_booking_agency/Screen/LogIn.dart';
import 'package:flutter_tickets_booking_agency/Screen/welcome_page.dart';
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
        home: Start());
  }
}

// Future<void> main() async {
//    WidgetsFlutterBinding.ensureInitialized();
//   await Firebase.initializeApp();
//   runApp(const MyApp());
// }
