import 'package:flutter/material.dart';
import 'package:flutter_tickets_booking_agency/Navigationbar/homepage.dart';
import 'package:flutter_tickets_booking_agency/navigationbar/Profile.dart';
import 'package:flutter_tickets_booking_agency/navigationbar/booking.dart';
import 'package:flutter_tickets_booking_agency/navigationbar/explorepage.dart';
import 'package:flutter_tickets_booking_agency/navigationbar/offer_page.dart';

import 'package:google_nav_bar/google_nav_bar.dart';

class Mainpage extends StatefulWidget {
  const Mainpage({super.key});
  @override
  State<Mainpage> createState() => _Mainpage();
}

class _Mainpage extends State<Mainpage> {
  List pages = [
   Homepage(),
    const explorepage(),
    const Mybooking(),
    const Profile(),
    const Offer_page()
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
