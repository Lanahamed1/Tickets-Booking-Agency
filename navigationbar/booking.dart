import 'package:app/appstyle.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Mybooking extends StatefulWidget {
  late String airlines;
  late int user;
  late String departure;
  late String destination;
  late String booking_date;
  late int Passenger;
  late String booking_status;
  late double price;
  Mybooking({
    super.key,
    required this.airlines,
    required this.Passenger,
    required this.departure,
    required this.destination,
    required this.booking_date,
    required this.booking_status,
    required this.price,
  });

  @override
  State<Mybooking> createState() => _MybookingState();
}

List booking = [
  {
    "airlines": "Syria Airline",
    "Passenger": 3,
    "departure": 'Syria',
    "destination": 'Iraq',
    "booking_date": '12/6/2024',
    "booking_status": 'Complited',
    "price": 65000
  },
  {
    "airlines": 'Syria Airline',
    "Passenger": 5,
    "departure": 'Lebanon',
    "destination": 'Egypt',
    "booking_date": '1/9/2024',
    "booking_status": 'Canceld',
    "price": 430000
  },
  {
    "airlines": 'Cham Wings',
    "Passenger": 5,
    "departure": 'Kwait',
    "destination": 'Aleppo',
    "booking_date": '22/3/2024',
    "booking_status": 'Posted',
    "price": 290000
  }
];

class _MybookingState extends State<Mybooking> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0XFFE1EDFF),
        body: ListView.builder(
            itemCount: booking.length,
            itemBuilder: (context, i) {
              return Card(
                  elevation: 0,
                  margin: const EdgeInsets.only(
                      left: 20.0, right: 20.0, bottom: 20.0, top: 20),
                  child: Stack(children: [
                    Padding(
                        padding: const EdgeInsets.only(
                            top: 30.0, bottom: 30.0, left: 35.0, right: 35.0),
                        child: Column(
                          children: [
                            Row(children: [
                              Text(
                                booking[i]['airlines'],
                                style: Styles.headLineStyle21,
                              )
                            ]),
                            const SizedBox(height: 15),
                            Row(children: [
                              Text("Passengers: ",
                                  style: Styles.headLineStyle13),
                              Text(
                                booking[i]['Passenger'].toString(),
                                style: Styles.headLineStyle13,
                              )
                            ]),
                            const SizedBox(height: 15),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text("From: ", style: Styles.headLineStyle13),
                                Text(
                                  booking[i]['departure'],
                                  style: Styles.headLineStyle13,
                                ),
                                const SizedBox(
                                  width: 200,
                                ),
                                Text("To: ", style: Styles.headLineStyle13),
                                Text(
                                  booking[i]['destination'],
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
                                  booking[i]['booking_date'],
                                  style: Styles.headLineStyle13,
                                ),
                                const SizedBox(
                                  width: 100,
                                ),
                                Text("Booking_status: ",
                                    style: Styles.headLineStyle13),
                                Text(
                                  booking[i]['booking_status'],
                                  style: Styles.headLineStyle13,
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            Row(
                              children: [
                                Text("Total Cost: ",
                                    style: Styles.headLineStyle13),
                                Text(
                                  booking[i]['price'].toString(),
                                  style: Styles.headLineStyle13,
                                )
                              ],
                            )
                          ],
                        ))
                  ]));
            }));
  }
}
