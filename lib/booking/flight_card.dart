// ignore_for_file: unnecessary_string_interpolations

import 'package:flutter/material.dart';
import 'package:flutter_tickets_booking_agency/Auth.dart';
import 'package:flutter_tickets_booking_agency/Booking/Booking.dart';
import 'package:flutter_tickets_booking_agency/Booking/Flights.dart';

class FlightCard extends StatelessWidget {
  final int id;
  final String price;
  final String destination;
  final String departure;
  final DateTime departureTime;
  final String airplane;
  final DateTime duration;
 // final String notes;

    FlightCard({
     required this.id,
    required this.price,
    required this.departureTime,
    required this.destination,
    required this.departure,
    required this.duration,
    required this.airplane,
   // required this.notes,
  });
  void selectFlight(BuildContext ctx) {
    Navigator.of(ctx).push(MaterialPageRoute(builder: (_) {
      return Booking();
    }));
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => selectFlight(context),
      child: Card(
          margin: EdgeInsets.only(left: 20.0, right: 20.0, bottom: 20.0),
          child: Stack(
            children: <Widget>[
              Container(
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
                    onPressed: () {},
                    clipBehavior: Clip.antiAlias,
                    elevation: 90,
                    child: Padding(
                      padding: const EdgeInsets.only(
                          top: 30.0, bottom: 30.0, left: 35.0, right: 35.0),
                      child: Column(
                        children: <Widget>[
                          Row(children: <Widget>[
                            Text(
                              airplane,
                              style: const TextStyle(
                                  color: Color(0xFF1765FC),
                                  fontSize: 18,
                                  fontWeight: FontWeight.w900),
                            ),
                          ]),
                          const SizedBox(height: 10.0),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text(departure),
                              Text(destination)
                            ],
                          ),
                          const SizedBox(height: 8.0),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text('$departureTime'),
                              ]),
                          const SizedBox(height: 20.0),
                          Container(
                            child: const Row(
                              children: <Widget>[
                                Icon(Icons.blur_on, color: Color(0xFF1765FC)),
                                Text('- - - - - - - - - - - - - - - - - '),
                                Icon(Icons.airplane_ticket_outlined,
                                    color: Color(0xFF1765FC)),
                                Text('- - - - - - - - - - - - - - - - - '),
                                Icon(Icons.blur_on, color: Color(0xFF1765FC)),
                              ],
                            ),
                          ),
                          const SizedBox(height: 20.0),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text('$duration'),
                            ],
                          ),
                          Row(
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 0, bottom: 0, left: 320, right: 0),
                                child: Text(
                                  '$price',
                                  style: const TextStyle(
                                      color: Colors.green,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w900),
                                ),
                              )
                            ],
                          ),
                          const SizedBox(height: 20.0),
                          //         Row(
                          //           children: [
                          //             Column(children: [
                          //               Padding(
                          //                 padding: const EdgeInsets.only(
                          //                     top: 0, bottom: 0, left: 320, right: 0),
                          //                 child: TextButton(
                          //                     onPressed: () {
                          //                       setState(() {
                          //                         _showDetails = !_showDetails;
                          //                       });
                          //                     },
                          //                     child: Text(
                          //                       _showDetails
                          //                           ? 'Hide Details'
                          //                           : 'More Details',
                          //                       style: const TextStyle(
                          //                         color: Color(0xFF1765FC),
                          //                       ),
                          //                     )),
                          //               ),
                          //               if (_showDetails)
                          //                 const Column(
                          //                   crossAxisAlignment:
                          //                       CrossAxisAlignment.start,
                          //                   children: [
                          //                     Text(notes),
                          //                     // Add more detailed information widgets here
                          //                   ],
                          //                 ),
                          //             ]),
                          //           ],
                          //         ),
                          //       ],
                          //     ),
                          //   ),
                          // )),
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
                  ))
            ],
          )),
    );
  }
}
