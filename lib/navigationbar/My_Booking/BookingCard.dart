import 'package:flutter/material.dart';
import 'package:flutter_tickets_booking_agency/Flight_search/mainesearch.dart';
import 'package:flutter_tickets_booking_agency/Navigationbar/My_Booking/my_booking_model.dart';
import 'package:flutter_tickets_booking_agency/Navigationbar/My_Booking/policy.dart';
import 'package:flutter_tickets_booking_agency/appstyle.dart';
import 'package:get/get.dart';

// ignore: must_be_immutable
class BookingCard extends StatelessWidget {
  final Bookedflights flight;

  // final FlightController controller =
  //   Get.put(FlightController(), permanent: true);
  BookingCard({super.key, required this.flight});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      margin: const EdgeInsets.all(20.0),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(flight.airline, style: Styles.headLineStyle21),
            const SizedBox(height: 15.0),
            Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
              Text("From : ${flight.departure} ",
                  style: Styles.headLineStyle13),
              Text("To : ${flight.destination} ",
                  style: Styles.headLineStyle13),
              Text("Class of Service : ${flight.passengerclass}",
                  style: Styles.headLineStyle13),
            ]),
            const SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text("Departure Date : ${flight.departureTime}",
                    style: Styles.headLineStyle13),
                Text("Duration : ${flight.duration}",
                    style: Styles.headLineStyle13),
                Text("Type : ${flight.trip_type}",
                    style: Styles.headLineStyle13),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text("Status : ${flight.status} ",
                    style: Styles.headLineStyle13),
                Text("Total Cost : ${flight.price}\$",
                    style: Styles.headLineStyle13),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                MaterialButton(
                  color: const Color.fromARGB(255, 204, 64, 64),
                  minWidth: 30,
                  height: 30,
                  onPressed: () {
                    Get.to(() => Policy());
                  },
                  child: Text('CANCEL', style: Styles.headLineStyle24),
                ),
                const SizedBox(width: 25),
                MaterialButton(
                  color: const Color.fromARGB(255, 2, 146, 219),
                  minWidth: 30,
                  height: 30,
                  onPressed: () {
                    Get.defaultDialog(
                      //   title: "Confirmation",
                      middleText:
                          "Are you sure you can modify your booking? Knowing that a 10% increase will be added to the trip price",
                      actions: [
                        TextButton(
                          onPressed: () {
                            Get.to(FlightSearch());
                          },
                          child: const Text(
                            'Yes',
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            Get.back();
                          },
                          child: const Text('No'),
                        ),
                      ],
                    );
                  },
                  child: Text('MODIFY', style: Styles.headLineStyle24),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
