class flightModel {
  final int id;
  final double price;
  final String destination;
  final String departure;
  final DateTime departureTime;
  final String airline;
  final String duration;
  // final String notes;

  flightModel(
      {required this.id,
      required this.price,
      required this.departureTime,
      required this.destination,
      required this.departure,
      required this.duration,
      required this.airline
      // required this.notes,
      });
}
