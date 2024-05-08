import 'package:flutter/material.dart';

class RecomendedCard extends StatelessWidget {
  final int id;
  final double price;
  final String departure;
  final String destination;
  final String departureTime;
  final String airline;
  final String duration;
  final String arrivalTime;

  RecomendedCard({
    required this.id,
    required this.price,
    required this.departureTime,
    required this.destination,
    required this.departure,
    required this.duration,
    required this.airline,
    required this.arrivalTime,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300, // Set a fixed height here
      child: Card(
        margin: const EdgeInsets.only(left: 20.0, right: 20.0, bottom: 20.0),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50.0),
            color: Colors.grey[100],
            boxShadow: const [
              BoxShadow(
                color: Colors.blueGrey,
                spreadRadius: 1,
                blurRadius: 10,
                offset: Offset(0, 1),
              ),
            ],
          ),
          child: MaterialButton(
            onPressed: () {},
            clipBehavior: Clip.antiAlias,
            elevation: 90,
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 30.0, horizontal: 35.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text(
                    airline,
                    style: const TextStyle(
                      color: Color.fromARGB(255, 88, 139, 240),
                      fontSize: 30,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Flexible(
                        child: Text(
                          departure,
                          style: const TextStyle(
                            color: Color.fromARGB(255, 24, 142, 239),
                            fontSize: 20,
                          ),
                        ),
                      ),
                      const SizedBox(width: 10),
                      Flexible(
                        child: Text(
                          destination,
                          style: const TextStyle(
                            color: Color.fromARGB(255, 24, 142, 239),
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        departureTime,
                        style: const TextStyle(color: Colors.indigo),
                      ),
                      Text(
                        arrivalTime,
                        style: const TextStyle(color: Colors.indigo),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  const Row(
                    children: <Widget>[
                      Icon(Icons.flight_takeoff_outlined,
                          size: 30, color: Color.fromARGB(255, 24, 142, 239)),
                      SizedBox(width: 10),
                      Expanded(
                          child: Text(
                        "----------------------------------------------",
                        style:
                            TextStyle(color: Color.fromARGB(255, 24, 142, 239)),
                      )),
                      SizedBox(width: 10),
                      Icon(Icons.flight_land,
                          size: 30, color: Color.fromARGB(255, 24, 142, 239)),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Flexible(
                    child: Text(
                      'Duration: $duration',
                      style:
                          const TextStyle(color: Colors.indigo, fontSize: 13),
                    ),
                  ),
                  const SizedBox(height: 10),
                  Flexible(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        Text(
                          '$price\$',
                          style: const TextStyle(
                            color: Colors.green,
                            fontSize: 20,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
