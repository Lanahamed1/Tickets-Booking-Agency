// ignore_for_file: unnecessary_string_interpolations
import 'package:flutter/material.dart';
import 'package:flutter_tickets_booking_agency/Flight/flight_details.dart';
import 'package:flutter_tickets_booking_agency/Flight/flight_model.dart';
import 'package:flutter_tickets_booking_agency/appstyle.dart';
import 'package:get/get.dart';

class FlightCard extends StatelessWidget {
  final flightModel flights;

  const FlightCard({
    super.key,
    required this.flights,
  });
  @override
  Widget build(BuildContext context) {
    return Card(
        margin: const EdgeInsets.only(
            left: 20.0, right: 20.0, bottom: 20.0, top: 20),
        child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50.0),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.4),
                    spreadRadius: 1,
                    blurRadius: 10,
                    offset: const Offset(0, 1),
                  ),
                ]),
            child: MaterialButton(
              onPressed: () {
                Get.to(() => FlightInfoScreen(), arguments: flights);
              },
              clipBehavior: Clip.antiAlias,
              elevation: 90,
              child: Padding(
                padding: const EdgeInsets.only(
                    top: 30.0, bottom: 30.0, left: 35.0, right: 35.0),
                child: Column(
                  children: <Widget>[
                    Row(children: <Widget>[
                      Text(flights.airline, style: Styles.headLineStyle21)
                    ]),
                    const SizedBox(height: 10.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          flights.departure,
                          style: Styles.headLineStyle31,
                        ),
                        Text(
                          flights.destination,
                          style: Styles.headLineStyle31,
                        )
                      ],
                    ),
                    const SizedBox(height: 8.0),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text('${flights.departureTime}'),
                        ]),
                    const SizedBox(height: 20.0),
                    const Row(
                      children: <Widget>[
                        Icon(Icons.blur_on, color: Color(0xFF1765FC)),
                        Text(' - - - - - - - - - - - - - - - - -  '),
                        Icon(Icons.airplane_ticket_outlined,
                            color: Color(0xFF1765FC)),
                        Text(' - - - - - - - - - - - - - - - -  '),
                        Icon(Icons.blur_on, color: Color(0xFF1765FC)),
                      ],
                    ),
                    const SizedBox(height: 20.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text('${flights.duration}'),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 0, bottom: 0, left: 320, right: 0),
                          child: Text(
                            '${flights.price}\$',
                            style: Styles.headLineStyle30,
                          ),
                        )
                      ],
                    ),
                    Align(
                      alignment: Alignment.topRight,
                      child: Container(
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(50.0),
                              topRight: Radius.circular(50.0)),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )));
  }
}
