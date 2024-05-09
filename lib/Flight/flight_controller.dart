import 'package:flutter_tickets_booking_agency/Flight/flight_model.dart';
import 'package:get/get.dart';

// ignore: camel_case_types
class controllerflight extends GetxController {
  var flightss = <flightModel>[
    flightModel(
        airline: "Syria Airlines",
        id: 2,
        departureTime: DateTime.now(),
        price: 180,
        departure: 'Kwait',
        destination: 'Lattakia',
        duration: '8 hours'),
    flightModel(
        airline: "Syria Airlines",
        id: 1,
        departureTime: DateTime.now(),
        price: 200,
        departure: 'Damascus',
        destination: 'Amman',
        duration: '5 hours'),
  ].obs;
}
