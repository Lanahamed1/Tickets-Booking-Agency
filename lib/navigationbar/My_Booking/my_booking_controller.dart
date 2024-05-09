import 'package:get/get.dart';
import 'package:flutter_tickets_booking_agency/Navigationbar/My_Booking/my_booking_model.dart';
import 'package:flutter_tickets_booking_agency/token_manager.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class FlightController extends GetxController {
  var flights = <Bookedflights>[].obs;

  List<Bookedflights> get flight => flights;

  Future<List<Bookedflights>> fetchBookedFlights() async {
    return await _fetchBookedFlights();
  }

  Future<List<Bookedflights>> _fetchBookedFlights() async {
    String url = 'https://viawise.onrender.com/booking/my-booking';

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
        List<dynamic> data = jsonDecode(response.body);

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

        flights.assignAll(bookedFlights); // Update flights list
        return bookedFlights;
      } else {
        throw Exception('Failed to load booked flights: ${response.statusCode}');
      }
    } catch (error) {
      throw Exception('Failed to load booked flights: $error');
    }
  }
}

