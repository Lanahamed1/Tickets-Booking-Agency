import 'package:app/model/my_booking_model.dart';
import 'package:app/view/flights_search/mainesearch.dart';
import 'package:flutter/material.dart';
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
        status: 'Canceld',
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
        price: '2500',
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

  void cancelBooking() {
    Get.defaultDialog(
      title: "Confirmation",
      middleText: "Are you sure you want to cancel this booking?",
      actions: [
        TextButton(
          onPressed: () {
            Get.back();
            Get.snackbar(
                colorText: const Color.fromARGB(255, 196, 7, 7),
                barBlur: 15,
                duration: const Duration(seconds: 3),
                'Booking Deleted',
                'This booking has already been deleted.');
          },
          child: const Text('Yes'),
        ),
        TextButton(
          onPressed: () {
            Get.back();
          },
          child: const Text('No'),
        ),
      ],
    );
  }

  void modifyBooking() {
    Get.defaultDialog(
      //   title: "Confirmation",
      middleText:
          "Are you sure you can modify your booking? Knowing that a 10% increase will be added to the trip price",
      actions: [
        TextButton(
          onPressed: () {
            Get.to(FlightSearchView());
          },
          child: const Text(
            'Yes',
          ),
        ),
        TextButton(
          onPressed: () {
            Get.back();
          },
          child: const Text('No'),
        ),
      ],
    );
  }
}
