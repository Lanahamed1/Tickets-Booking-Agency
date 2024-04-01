import 'package:flutter/material.dart';
import 'package:flutter_tickets_booking_agency/Booking/FlightCard.dart';

class SelectFight extends StatefulWidget {
  const SelectFight({super.key});

  @override
  State<SelectFight> createState() => _SelectFightState();
}

class _SelectFightState extends State<SelectFight> {
  @override
  Widget build(BuildContext context) {
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
          child: ListView(
            children: <Widget>[
              const SizedBox(
                height: 30,
              ),
              FlightCard(
                airplane: "Syrian Airlines",
                price: 634,
                destination: 'Tokyo',
                from: 'syria',
                departureTime: '2:55 pm',
                arrivalTime: '8:20 pm',
                duration: '13 h 25 min',
              ),
              FlightCard(
                airplane: "Syrian Airlines",
                price: 634,
                destination: 'Tokyo',
                from: 'syria',
                departureTime: '12:55 pm',
                arrivalTime: '8:20 pm',
                duration: '13 h 25 min',
              ),
              FlightCard(
                airplane: "Cham Wings ",
                price: 256,
                from: 'syria',
                destination: 'Tokyo',
                departureTime: '2:55 pm',
                arrivalTime: '8:20 pm',
                duration: '13 h 25 min',
              ),
              FlightCard(
                airplane: "Cham Wings ",
                price: 256,
                from: 'syria',
                destination: 'Tokyo',
                departureTime: '4:55 pm',
                arrivalTime: '12:20 am',
                duration: '13 h 25 min',
              ),
            ],
          ),
        ));
  }
}
