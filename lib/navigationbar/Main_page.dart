import 'package:flutter/material.dart';
import 'package:flutter_tickets_booking_agency/Navigationbar/My_Booking/my_booking.dart';
import 'package:flutter_tickets_booking_agency/Navigationbar/explore/explorepage.dart';
import 'package:flutter_tickets_booking_agency/Navigationbar/home/homepage.dart';
import 'package:flutter_tickets_booking_agency/Navigationbar/offer/offer_page.dart';
import 'Profile.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:get/get.dart';
import 'package:flutter_tickets_booking_agency/Navigationbar/My_Booking/my_booking_controller.dart';

class Mainpage extends StatefulWidget {
  Mainpage({super.key});
  @override
  State<Mainpage> createState() => _Mainpage();
}

class _Mainpage extends State<Mainpage> {
  final FlightController flightController = FlightController();
  List pages = [
    Homepage(),
    explorepage(),
    Offers(),
    Booking(),
    Profile(),
  ];
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: pages.elementAt(currentIndex),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(5.0),
        child: GNav(
          rippleColor: Colors.grey[300]!,
          // hoverColor: const Color.fromARGB(255, 188, 38, 38)!,
          gap: 8,
          activeColor: const Color.fromARGB(255, 2, 146, 219),
          iconSize: 24,
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 12),
          duration: const Duration(milliseconds: 400),
          tabBackgroundColor: Colors.grey[300]!,
          color: Colors.grey,
          selectedIndex: currentIndex,
          onTabChange: (value) {
            setState(() {
              currentIndex = value;
            });
          },
          tabs: const [
            GButton(
              icon: Icons.home,
              text: "Home",
            ),
            GButton(
              icon: Icons.search,
              text: "Explore",
            ),
            GButton(
              icon: Icons.discount,
              text: "Offers",
            ),
            GButton(
              icon: Icons.luggage,
              text: "My Booking",
            ),
            GButton(
              icon: Icons.person,
              text: "My Account",
            ),
          ],
        ),
      ),
    );
  }
}
