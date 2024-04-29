import 'dart:async';
import 'dart:convert';
import 'package:flutter_tickets_booking_agency/Booking/flight_card.dart';
import 'package:http/http.dart' as http;
import 'package:intl/intl.dart';

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
  final double price;
  final String airline;
  final String duration;

  Flight({
    required this.departure,
    required this.destination,
    required this.departureDate,
    required this.returndate,
    required this.id,
    required this.price,
    required this.airline,
    required this.duration,
  });

  factory Flight.fromJson(Map<String, dynamic> json) {
    return Flight(
      departure: json['airportDeparture'],
      destination: json['airportArrival'],
      departureDate: DateTime.parse(json['departure_date']),
      returndate: DateTime.parse(json['return_date']),
      duration: json["duration"],
      price: double.parse(json["price_flight"]),
      airline: "Cham Wings",
      id: json['id'],
    );
  }

  static Future<List<Flight>> fetchFlight(
    String departure_city,
    String airportArrival,
  ) async {
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

class MyBooking {
  final int id;
  final String first_name;
  final String last_name;
  final String Passport_number;
  final String selectItem;
  final String selectDate;

  MyBooking(
      {required this.id,
      required this.first_name,
      required this.Passport_number,
      required this.selectItem,
      required this.last_name,
      required this.selectDate});
  factory MyBooking.fromJson(Map<String, dynamic> json) {
    return switch (json) {
      {
        'id': int id,
        'first_name': String first_name,
        'last_name': String last_name,
        ' Passport_number': String Passport_number,
        ' selectItem': String selectItem,
        ' selectDate': String selectDate,
      } =>
        MyBooking(
            id: id,
            first_name: first_name,
            last_name: last_name,
            Passport_number: Passport_number,
            selectItem: selectItem,
            selectDate: selectDate),
      _ => throw const FormatException('Failed to load album.'),
    };
  }

  Future<MyBooking> createBook(String title) async {
    final response = await http.post(
      Uri.parse('http://127.0.0.1:8000/booking/creat_bookings/'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(<String, String>{
        'first_name': first_name,
        'last_name': last_name,
        ' Passport_number': Passport_number,
        ' selectItem': selectItem,
        ' selectDate': selectDate,
      }),
    );

    if (response.statusCode == true) {
      return MyBooking.fromJson(
          jsonDecode(response.body) as Map<String, dynamic>);
    } else {
      throw Exception('Failed to create album.');
    }
  }
}
