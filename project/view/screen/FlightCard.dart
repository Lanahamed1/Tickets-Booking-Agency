import 'package:app/controller/my_booking_controller.dart';
import 'package:app/model/my_booking_model.dart';
import 'package:app/view/screen/appstyle.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FlightCard extends StatelessWidget {
  final Bookedflights flight;
  final FlightController controller =
      Get.put(FlightController(), permanent: true);
  FlightCard({super.key, required this.flight});

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
            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
              Text("From : ${flight.departure} ",
                  style: Styles.headLineStyle13),
              Text("To : ${flight.destination} ",
                  style: Styles.headLineStyle13),
              Text("Passenger Number : ${flight.passenger}",
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
                    style: Styles.headLineStyle13)
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Status : ${flight.status} ",
                    style: Styles.headLineStyle13),
                const SizedBox(
                  width: 75,
                ),
                Text("Total Cost : ", style: Styles.headLineStyle13),
                Text("${flight.price}\$", style: Styles.headLineStyle22),
              ],
            ),
            const SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                MaterialButton(
                  color: const Color.fromARGB(255, 196, 7, 7),
                  minWidth: 25,
                  height: 20,
                  onPressed: () {
                    controller.cancelBooking();
                  },
                  child: Text('CANCEL', style: Styles.headLineStyle24),
                ),
                const SizedBox(width: 25),
                MaterialButton(
                  minWidth: 15,
                  height: 15,
                  color: const Color.fromARGB(255, 2, 146, 219),
                  onPressed: () {
                    controller.modifyBooking();
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
