import 'package:flutter/material.dart';
import 'package:flutter_tickets_booking_agency/appstyle.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';

class Mybooking extends StatefulWidget {
  const Mybooking({super.key});

  @override
  State<Mybooking> createState() => _MybookingState();
}

class _MybookingState extends State<Mybooking> {
  List<dynamic> bookings = [];

  @override
  // void initState() {
  // super.initState();
  //  fetchBookings();
  // }

  //Future<void> fetchBookings() async {
  //try {
  // var token = await AuthHelper.getToken();
  // if (token == null) {
  // throw Exception('JWT token not found');
  // }

  //var response = await http.get(
  // Uri.parse('http://127.0.0.1:8000/booking/user-booking/'),
  // headers: {'Authorization': 'Bearer $token'},
  //);

  // if (response.statusCode == 200) {
  // Handle successful response
  //} else {
  //throw Exception('Failed to load data: ${response.statusCode}');
  //}
  //} catch (e) {
  // print('Error: $e');
  //throw Exception('Failed to load data');
  // }
  // }

  Color getStatusColor(String booking_status) {
    Color color;
    switch (booking_status.toLowerCase()) {
      case 'canceld':
        color = Colors.red;
        break;
      case 'complited':
        color = Colors.green;
        break;
      case 'posted':
        color = Colors.orange;
        break;
      default:
        color = Colors.black;
        break;
    }
    return color;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0XFFE1EDFF),
        body: bookings.isEmpty
            ? const Center(child: CircularProgressIndicator())
            : ListView.builder(
                itemCount: bookings.length,
                itemBuilder: (context, i) {
                  var booking = bookings[i];
                  var color = getStatusColor(booking['status']);
                  return Card(
                      elevation: 0,
                      margin: const EdgeInsets.only(
                          left: 20.0, right: 20.0, bottom: 20.0, top: 20),
                      child: Stack(children: [
                        Padding(
                            padding: const EdgeInsets.only(
                                top: 30.0,
                                bottom: 30.0,
                                left: 35.0,
                                right: 35.0),
                            child: Column(
                              children: [
                                Row(children: [
                                  Text(
                                    booking['airlines'],
                                    style: Styles.headLineStyle1,
                                  )
                                ]),
                                const SizedBox(height: 15),
                                Row(children: [
                                  Text("Passengers: ",
                                      style: Styles.headLineStyle13),
                                  Text(
                                    booking['Passenger'].toString(),
                                    style: Styles.headLineStyle13,
                                  )
                                ]),
                                const SizedBox(height: 15),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text("From: ",
                                        style: Styles.headLineStyle13),
                                    Text(
                                      booking['departure'],
                                      style: Styles.headLineStyle13,
                                    ),
                                    const SizedBox(
                                      width: 200,
                                    ),
                                    Text("To: ", style: Styles.headLineStyle13),
                                    Text(
                                      booking['destination'],
                                      style: Styles.headLineStyle13,
                                    )
                                  ],
                                ),
                                const SizedBox(height: 15),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text("Booking_date: ",
                                        style: Styles.headLineStyle13),
                                    Text(
                                      booking['booking_date'],
                                      style: Styles.headLineStyle13,
                                    ),
                                    const SizedBox(
                                      width: 100,
                                    ),
                                    const Text(
                                      "Booking_status: ",
                                    ),
                                    Text(
                                      booking['booking_status'],
                                      style: TextStyle(color: color),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 15,
                                ),
                                Row(
                                  children: [
                                    Text(
                                        "Total Cost:${booking['price'].toString()} ",
                                        style: Styles.headLineStyle13),
                                  ],
                                )
                              ],
                            ))
                      ]));
                }));
  }
}
