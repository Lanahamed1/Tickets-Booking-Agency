import 'package:flutter/material.dart';
import 'package:flutter_tickets_booking_agency/Auth.dart';
import 'package:flutter_tickets_booking_agency/Booking/flight_card.dart';
import 'package:flutter_tickets_booking_agency/booking/Booking.dart';
import 'package:flutter_tickets_booking_agency/flights_search/mainesearch.dart';

class Flights extends StatefulWidget {
  final List<Flight> flights;
  final String selectItem;

  Flights({super.key, required this.flights, required this.selectItem});

  @override
  State<Flights> createState() => _FlightsState();
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
                  id: widget.flights[index].id,
                  airline: widget.flights[index].airline,
                  departureTime: widget.flights[index].departureDate,
                  departure: widget.flights[index].departure,
                  destination: widget.flights[index].destination,
                  price: widget.flights[index].price,
                  duration: widget.flights[index].duration,
                );
              },
              itemCount: widget.flights.length,
            )));
  }
}
