import 'dart:convert';
import 'package:http/http.dart' as http;

class Flight {
  final int id;
  late final String departure;
  late final String destination;
  late final DateTime departureDate;
  late final DateTime returndate;
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
        'https://viawise.onrender.com/flight/search1/?departure_city=$departure_city&airportArrival=$airportArrival'));
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
