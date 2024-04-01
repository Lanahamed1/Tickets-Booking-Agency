import 'package:flutter/material.dart';

class FlightCard extends StatefulWidget {
  final int price;
  final String destination;
  final String from;
  final String arrivalTime;
  final String departureTime;
  final String airplane;
  final String duration;

  FlightCard({
    required this.price,
    required this.arrivalTime,
    required this.departureTime,
    required this.destination,
    required this.from,
    required this.duration,
    required this.airplane,
  });
  @override
  _FlightCardState createState() => _FlightCardState();
}

class _FlightCardState extends State<FlightCard> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(left: 20.0, right: 20.0, bottom: 20.0),
          child: Stack(
            children: <Widget>[
              Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50.0),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.4),
                          spreadRadius: 1,
                          blurRadius: 10,
                          offset: const Offset(0, 1),
                        ),
                      ]),
                  child: MaterialButton(
                    onPressed: () {},
                    clipBehavior: Clip.antiAlias,
                    elevation: 90,
                    child: Padding(
                      padding: const EdgeInsets.only(
                          top: 30.0, bottom: 30.0, left: 35.0, right: 35.0),
                      child: Column(
                        children: <Widget>[
                          Row(children: <Widget>[
                            Text(
                              '${widget.airplane}',
                              style: const TextStyle(
                                  color: Color(0xFF1765FC),
                                  fontSize: 18,
                                  fontWeight: FontWeight.w900),
                            ),
                          ]),
                          const SizedBox(height: 10.0),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text(
                                '${widget.from}',
                              ),
                              Text(
                                '${widget.destination}',
                              )
                            ],
                          ),
                          const SizedBox(height: 8.0),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text(
                                '${widget.departureTime}',
                              ),
                              Text(
                                '${widget.arrivalTime}',
                              ),
                            ],
                          ),
                          const SizedBox(height: 20.0),
                          Container(
                            child: const Row(
                              children: <Widget>[
                                Icon(Icons.blur_on, color: Color(0xFF1765FC)),
                                Text('- - - - - - - - - - - - - - - - - '),
                                Icon(Icons.airplane_ticket_outlined,
                                    color: Color(0xFF1765FC)),
                                Text('- - - - - - - - - - - - - - - - - '),
                                Icon(Icons.blur_on, color: Color(0xFF1765FC)),
                              ],
                            ),
                          ),
                          const SizedBox(height: 20.0),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text(
                                '${widget.duration}',
                              ),
                            ],
                          ),
                          Row(
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 0, bottom: 0, left: 250, right: 0),
                                child: Text(
                                  '\$${widget.price}',
                                  style: const TextStyle(
                                      color: Colors.green,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w900),
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  )),
              Align(
                alignment: Alignment.topRight,
                child: Container(
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(50.0),
                        topRight: Radius.circular(50.0)),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
