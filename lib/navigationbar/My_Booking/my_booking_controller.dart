import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter_tickets_booking_agency/Navigationbar/My_Booking/my_booking_model.dart';
import 'package:flutter_tickets_booking_agency/token_manager.dart';
import 'package:get/get.dart';

class FlightController extends GetxController {
  var flights = <Bookedflights>[].obs;

  Future<List<Bookedflights>> fetchBookedFlights() async {
    String url = 'viawise.onrender.com/booking/my-booking';

    try {
      String? token = await TokenManager.getToken();
      if (token == null) {
        throw Exception('Token not found. User is not authenticated.');
      }

      final response = await http.get(
        Uri.parse(url),
        headers: {
          'Authorization': 'Bearer $token',
        },
      );

      if (response.statusCode == 200) {
        // If the server returns a 200 OK response, parse the JSON
        List<dynamic> data = jsonDecode(response.body);

        // Map the JSON data to a list of Bookedflights objects
        List<Bookedflights> bookedFlights = data.map((flight) {
          return Bookedflights(
            id: flight['id'],
            price: flight['price'],
            destination: flight['destination'],
            departure: flight['departure'],
            departureTime: flight['departureTime'],
            airline: flight['airline'],
            duration: flight['duration'],
            passengerclass: flight['passengerclass'],
            status: flight['status'],
            trip_type: flight['trip_type'],
          );
        }).toList();

        return bookedFlights;
      } else {
        // If the server returns an error response, throw an exception
        throw Exception(
            'Failed to load booked flights: ${response.statusCode}');
      }
    } catch (error) {
      // If an error occurs during the HTTP request, throw an exception
      throw Exception('Failed to load booked flights: $error');
    }
  }

  // @override
  // void onInit() {
  //   super.onInit();

  //   flights.addAll([
  //     Bookedflights(
  //       id: 1,
  //       //passenger: 3,
  //       price: '4500',
  //       departureTime: '2/8/2024',
  //       destination: 'Syria',
  //       departure: 'Kwait',
  //       duration: '16/10/2024',
  //       airline: ' Syrian Airlines',
  //       passengerclass: 'First',
  //       status: 'Complited',
  //       trip_type: 'Round-Trip',
  //     ),
  //     Bookedflights(
  //       id: 2,
  //       // passenger: 1,
  //       price: '3000',
  //       departureTime: '25/5/2024',
  //       destination: 'Paris',
  //       departure: 'Damascus',
  //       duration: '1/7/2024',
  //       airline: 'CHAM WINGES AIRLINES',
  //       passengerclass: 'Economy',
  //       status: 'Posted',
  //       trip_type: 'One-Way',
  //     ),
  //     Bookedflights(
  //       id: 3,
  //       // passenger: 4,
  //       price: '5500',
  //       departureTime: '2/9/2024',
  //       destination: 'Iraq',
  //       departure: 'Damascus',
  //       duration: '1/10/2024',
  //       airline: ' Syrian Airlines',
  //       passengerclass: 'Business',
  //       status: 'Complited',
  //       trip_type: 'One-Way',
  //     ),
  //   ]);
  // }
}
