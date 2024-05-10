import 'package:flutter_tickets_booking_agency/Flight/flight_model.dart';
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
    String url = 'https://viawise.onrender.com/booking/My-booking/';
    print('myyyyyyyyyyyyyyyyyyyyyyyyyyy');

    try {
      Map<String, dynamic>? token = await TokenManager.getTokenMap();
      if (token == null) {
        throw Exception('Token not found. User is not authenticated.');
      }

      final accessToken = token['access'].toString();

      final response = await http.get(
        Uri.parse(url),
        headers: {
          'Authorization': 'Bearer $accessToken',
        },
      );
     if (response.statusCode == 200) {
      List<dynamic> data = jsonDecode(response.body);
      // Map the JSON data to a list of Bookedflights objects
      List<Bookedflights> bookedFlights = data.map((flightData) {
        return Bookedflights(
          id: flightData['id'] != null ? flightData['id'] : 0, // Check for null and provide a default value
          price: flightData['pricing']['price'],
          destination: flightData['destination']['name'],
          departure: flightData['departure']['name'],
          departureTime: flightData['departure']['time'],
          airline: flightData['airline']['name'],
          duration: flightData['duration'],
          passengerclass: flightData['passenger_class'],
          status: flightData['status'],
          trip_type: flightData['trip_type'] ?? '',
        );
      }).toList();

      flights.assignAll(bookedFlights); // Update flights list
      return bookedFlights;
      } else {
        throw Exception('Failed to load booked flights: ${response.body}');
      }
    } catch (error) {
      print('Error fetching booked flights: $error');
      throw Exception('Failed to load booked flights: $error');
    }
  }
}
