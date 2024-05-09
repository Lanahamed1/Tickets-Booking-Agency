import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_tickets_booking_agency/Booking/Booking.dart';
import 'package:flutter_tickets_booking_agency/Flight/flight_model.dart';
import 'package:flutter_tickets_booking_agency/appstyle.dart';
import 'package:get/get.dart';

class FlightInfoScreen extends StatelessWidget {
  FlightInfoScreen({super.key});
  final flightModel flight = Get.arguments;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0XFFE1EDFF),
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: IconButton(
              onPressed: () {
                Get.back();
              },
              icon: const Icon(Icons.arrow_back)),
          centerTitle: true,
          elevation: 0.0,
          title: SizedBox(
            child: Container(
                margin: const EdgeInsets.only(top: 3),
                child: Text("Flight details", style: Styles.headLineStyle23)),
          ),
        ),
        body: ListView(children: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Container(
              child: Column(
                children: <Widget>[
                  Row(children: <Widget>[
                    Text(
                      flight.airline,
                      style: const TextStyle(
                          color: Color(0xFF1765FC),
                          fontSize: 18,
                          fontWeight: FontWeight.w900),
                    ),
                  ]),
                  const SizedBox(height: 10.0),
                  Row(
                    children: [
                      Text("Departure", style: Styles.headLineStyle30),
                    ],
                  ),
                  Row(
                    children: [
                      Text("departure:${flight.departure}"),
                    ],
                  ),
                  const SizedBox(height: 20.0),
                  Row(
                    children: [
                      Text("destination: ${flight.destination}"),
                    ],
                  ),
                  const SizedBox(height: 20.0),
                  Row(children: <Widget>[
                    Text('departureTime: ${flight.departureTime}'),
                  ]),
                  const SizedBox(height: 20.0),
                  Row(
                    children: <Widget>[
                      Text('duration: ${flight.duration}'),
                    ],
                  ),
                  const SizedBox(height: 20.0),
                  Row(
                    children: [
                      Text("Return", style: Styles.headLineStyle30),
                    ],
                  ),
                  const SizedBox(height: 20.0),
                  Row(
                    children: [
                      Text("departure: ${flight.departure}"),
                    ],
                  ),
                  const SizedBox(height: 20.0),
                  Row(
                    children: [
                      Text("destination: ${flight.destination}"),
                    ],
                  ),
                  const SizedBox(height: 20.0),
                  Row(children: <Widget>[
                    Text('departureTime: ${flight.departureTime}'),
                  ]),
                  const SizedBox(height: 20.0),
                  Row(children: [
                    Text(
                      textAlign: TextAlign.end,
                      'price: ${flight.price}',
                    ),
                  ]),
                  const SizedBox(height: 20.0),
                  Row(
                    children: <Widget>[
                      Text('Notes:', style: Styles.headLineStyle30),
                    ],
                  ),
                  const SizedBox(height: 20.0),
                  const Row(
                    children: [
                      Text("Take my advice do not use the application  "),
                    ],
                  ),
                  const SizedBox(height: 20.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      RatingBar.builder(
                          initialRating: 3,
                          minRating: 1,
                          direction: Axis.horizontal,
                          allowHalfRating: true,
                          itemCount: 5,
                          itemSize: 30,
                          itemPadding:
                              const EdgeInsets.symmetric(horizontal: 4.0),
                          itemBuilder: (context, _) => const Icon(
                                Icons.star,
                                color: Colors.amber,
                                size: 15,
                              ),
                          onRatingUpdate: (rating) {
                            print(rating);
                          }),
                    ],
                  ),
                  const SizedBox(height: 20.0),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 49),
                    width: 400,
                    height: 45,
                    decoration: BoxDecoration(
                      color: Colors.blue.shade600,
                      borderRadius: BorderRadius.circular(150),
                    ),
                    child: MaterialButton(
                      onPressed: () {
                        Get.to(() => const Booking());
                      },
                      child: Text("Continue",
                          textAlign: TextAlign.right,
                          style: Styles.headLineStyle32),
                    ),
                  )
                ],
              ),
            ),
          ),
        ]));
  }
}
