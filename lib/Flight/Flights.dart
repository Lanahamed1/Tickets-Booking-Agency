import 'package:flutter/material.dart';
import 'package:flutter_tickets_booking_agency/Flight/flight_card.dart';
import 'package:flutter_tickets_booking_agency/Flight/flight_controller.dart';
import 'package:flutter_tickets_booking_agency/Flight/flight_model.dart';
import 'package:flutter_tickets_booking_agency/appstyle.dart';
import 'package:get/get.dart';

class Flights extends StatelessWidget {
  Flights({super.key});

// ignore: non_constant_identifier_names
  final controllerflight Controllerf = Get.put(controllerflight());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.white,
          title: SizedBox(
            child: Container(
                margin: const EdgeInsets.only(top: 3),
                child: Text("Select flight", style: Styles.headLineStyle23)),
          ),
        ),
        body: Container(
          color: const Color(0XFFE1EDFF),
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: ListView.builder(
            itemBuilder: (context, index) {
              flightModel flightmodel = Controllerf.flightss[index];
              return FlightCard(flights: flightmodel);
            },
            itemCount: Controllerf.flightss.length,
          ),
        ));
  }
}
