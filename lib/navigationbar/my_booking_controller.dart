import 'package:flutter_tickets_booking_agency/Navigationbar/my_booking_model.dart';
//import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FlightController extends GetxController {
  var flights = <Bookedflights>[].obs;

  @override
  void onInit() {
    super.onInit();

    flights.addAll([
      Bookedflights(
        id: 1,
        passenger: 3,
        price: '4500',
        departureTime: '2/8/2024',
        destination: 'Syria',
        departure: 'Kwait',
        duration: '16/10/2024',
        airline: ' Syrian Airlines',
        passengerclass: 'First',
        status: 'Complited',
        trip_type: 'Round-Trip',
      ),
      Bookedflights(
        id: 2,
        passenger: 1,
        price: '3000',
        departureTime: '25/5/2024',
        destination: 'Paris',
        departure: 'Damascus',
        duration: '1/7/2024',
        airline: 'CHAM WINGES AIRLINES',
        passengerclass: 'Economy',
        status: 'Posted',
        trip_type: 'One-Way',
      ),
      Bookedflights(
        id: 3,
        passenger: 4,
        price: '5500',
        departureTime: '2/9/2024',
        destination: 'Iraq',
        departure: 'Damascus',
        duration: '1/10/2024',
        airline: ' Syrian Airlines',
        passengerclass: 'Business',
        status: 'Complited',
        trip_type: 'One-Way',
      ),
    ]);
  }
}
