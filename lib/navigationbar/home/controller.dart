class FlightRecommend {
  final int id;
  final double price;
  final String departure;
  final String destination;
  final String departureTime;
  final String airline;
  final String duration;
  final String arrivalTime;

  FlightRecommend({
    required this.id,
    required this.price,
    required this.departureTime,
    required this.destination,
    required this.departure,
    required this.duration,
    required this.airline,
    required this.arrivalTime,
  });
}