import 'package:flutter/material.dart';
import 'package:flutter_tickets_booking_agency/Auth.dart';
import 'package:flutter_tickets_booking_agency/Booking/flight_card.dart';
import 'package:flutter_tickets_booking_agency/flights_search/mainesearch.dart';

class Flights extends StatefulWidget {
  const Flights({super.key});

  @override
  State<Flights> createState() => _FlightsState();
}

class _FlightsState extends State<Flights> {
  @override
  Widget build(BuildContext context) {
    final flights = ModalRoute.of(context)!.settings.arguments as List<Flight>;

    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading:
              IconButton(onPressed: () {}, icon: const Icon(Icons.arrow_back)),
          centerTitle: true,
          elevation: 0.0,
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
                  id: flights[index].id,
                  airplane: flights[index].destination,
                  departureTime: flights[index].departureDate,
                  departure: flights[index].departure,
                  destination: flights[index].destination,
                  price: flights[index].destination,
                  duration: flights[index].returndate,
                );
              },
              itemCount: flights.length,
            )));
  }
}
