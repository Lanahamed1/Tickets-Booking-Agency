import 'dart:async';
import 'dart:convert';
import 'package:flutter_tickets_booking_agency/Booking/flight_card.dart';
import 'package:http/http.dart' as http;

class Auth {
  static Future<bool> SignUp(String first_name, String last_name,
      String username, String password) async {
    final url = Uri.parse("http://127.0.0.1:8000/account/register/");
    final response = await http.post(
      url,
      body: {
        'first_name': first_name,
        'last_name': last_name,
        'username': username,
        'password': password,
      },
    );
    if (response.statusCode == 201) {
      return true;
    } else {
      return false;
    }
  }

  static Future<bool> LogIN(String username, String password) async {
    final url = Uri.parse("http://127.0.0.1:8000/account/login/");

    final response = await http.post(
      url,
      body: {
        'username': username,
        'password': password,
      },
    );
    if (response.statusCode == 200) {
      return true;
    } else {
      return false;
    }
  }
}

class Flight {
  final int id;
  final String departure;
  final String destination;
  final DateTime departureDate;
  final DateTime returndate;
  final String price;
  final String airplane;
  final DateTime duration;

  Flight({
    required this.departure,
    required this.destination,
    required this.departureDate,
    required this.returndate,
    required this.id,
    required this.price,
    required this.airplane,
    required this.duration,
  });

  factory Flight.fromJson(Map<String, dynamic> json) {
    return Flight(
      departure: json['airportDeparture'],
      destination: json['airportArrival'],
      departureDate: DateTime.parse(json['departure_date']),
      returndate: DateTime.parse(json['return_date']),
      duration: DateTime.parse(json['duration']),
      price: json['price'],
      airplane: json['airplane'],
      id: int.parse(json['id']),
    );
  }

  static Future<List<Flight>> fetchFlight(String departure_city ,String airportArrival,) async {
    final response = await http.get(Uri.parse(
        'http://127.0.0.1:8000/flight/search/?departure_city=$departure_city&airportArrival=$airportArrival'));
    print(response.body);
    print(response.statusCode);
    List<Flight> flights = [];
    if (response.statusCode == 200) {
      final flightsJson = jsonDecode(response.body);
      for (var flightJson in flightsJson['flights']) {
        final Flight flight = Flight.fromJson(flightJson);
        flights.add(flight);
      }
      return flights;
    } else {
      throw Exception('Failed to load flight');
    }
  }
}
