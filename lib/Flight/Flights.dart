import 'package:flutter/material.dart';
import 'package:flutter_tickets_booking_agency/Flight/flight_card.dart';
import 'package:get/get.dart';

class Flights extends StatefulWidget {
 
  Flights({super.key});

  @override
  State<Flights> createState() => _FlightsState();
 final flight = Get.arguments.flights ;

}

class _FlightsState extends State<Flights> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: SizedBox(
            child: Container(
                margin: const EdgeInsets.only(top: 3),
                child: const Text(
                  "Select flight",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.w900),
                )),
          ),
        ),
        body: Container(
            color: const Color(0XFFE1EDFF),
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: ListView.builder(
              itemBuilder: (ctx, index) {
                return FlightCard(
                  id: widget.flight.id,
                  airline: widget.flight.airline,
                  departureTime: widget.flight.departureDate,
                  departure: widget.flight.departure,
                  destination: widget.flight.destination,
                  price: widget.flight.price,
                  duration: widget.flight.duration,
                );
              },
              itemCount: widget.flight.length,
            )));
  }
}

