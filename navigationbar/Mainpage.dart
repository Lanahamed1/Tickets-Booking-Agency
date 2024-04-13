//import 'package:app/appstyle.dart';
import 'package:flutter/material.dart';
import 'Homepage.dart';
import 'explorepage.dart';
import 'booking.dart';
import 'account_page.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'offer_page.dart';

class Mainpage extends StatefulWidget {
  const Mainpage({super.key});
  @override
  State<Mainpage> createState() => _Mainpage();
}

class _Mainpage extends State<Mainpage> {
  List pages = [
    const Homepage(),
    const explorepage(),
    const Offer_page(),
    Mybooking(
        airlines: 'Syria Airlines',
        Passenger: 2,
        departure: 'Syria',
        destination: 'Iraq',
        booking_date: "12/3/2024",
        booking_status: 'Cancel',
        price: 650000),
    const account_page(),
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
