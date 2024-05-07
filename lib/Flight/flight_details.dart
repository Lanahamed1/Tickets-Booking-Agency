import 'package:flutter/material.dart';
import 'package:flutter_tickets_booking_agency/Booking/Booking.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class FlightInfoScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading:
              IconButton(onPressed: () {}, icon: const Icon(Icons.arrow_back)),
          centerTitle: true,
          elevation: 0.0,
          title: SizedBox(
            child: Container(
                margin: const EdgeInsets.only(top: 3),
                child: const Text(
                  "Flight details",
                  style: TextStyle(
                      color: Color(0XFF2680FF),
                      fontSize: 18,
                      fontWeight: FontWeight.w900),
                )),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Container(
            child: Column(
              children: <Widget>[
                const Row(children: <Widget>[
                  Text(
                    "Syria airplane",
                    style: TextStyle(
                        color: Color(0xFF1765FC),
                        fontSize: 18,
                        fontWeight: FontWeight.w900),
                  ),
                ]),
                const SizedBox(height: 10.0),
                const Row(
                  children: [
                    Text(
                      "Departure",
                      style: TextStyle(
                          color: Colors.green,
                          fontSize: 18,
                          fontWeight: FontWeight.w900),
                    ),
                  ],
                ),
                const Row(
                  children: [
                    Text("departure:  Beirut"),
                  ],
                ),
                const SizedBox(height: 20.0),
                const Row(
                  children: [
                    Text("destination:  Amman"),
                  ],
                ),
                const SizedBox(height: 20.0),
                const Row(children: <Widget>[
                  Text('departureTime:  10:30'),
                ]),
                const SizedBox(height: 20.0),
                const Row(
                  children: <Widget>[
                    Text('duration:  1h 15m'),
                  ],
                ),
                const SizedBox(height: 20.0),
                const Row(
                  children: [
                    Text(
                      "Return",
                      style: TextStyle(
                          color: Colors.green,
                          fontSize: 18,
                          fontWeight: FontWeight.w900),
                    ),
                  ],
                ),
                const SizedBox(height: 20.0),
                const Row(
                  children: [
                    Text("departure:  Amman"),
                  ],
                ),
                const SizedBox(height: 20.0),
                const Row(
                  children: [
                    Text("destination:  Beirut"),
                  ],
                ),
                const SizedBox(height: 20.0),
                const Row(children: <Widget>[
                  Text('departureTime:  12:45'),
                ]),
                const SizedBox(height: 20.0),
                const Row(children: [
                  Text(
                    textAlign: TextAlign.end,
                    'price: 254',
                    style: TextStyle(
                        color: Colors.red,
                        fontSize: 18,
                        fontWeight: FontWeight.w900),
                  ),
                ]),
                const SizedBox(height: 20.0),
                const Row(
                  children: <Widget>[
                    Text(
                      'Notes:',
                      style: TextStyle(
                          color: Colors.green,
                          fontSize: 18,
                          fontWeight: FontWeight.w900),
                    ),
                  ],
                ),
                const SizedBox(height: 20.0),
                const Row(
                  children: [
                    Text("Take my advice do not use the application  "),
                  ],
                ),
                RatingBar.builder(
                    initialRating: 3,
                    minRating: 1,
                    direction: Axis.horizontal,
                    allowHalfRating: true,
                    itemCount: 5,
                    itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                    itemBuilder: (context, _) => Icon(
                          Icons.star,
                          color: Colors.amber,
                        ),
                    onRatingUpdate: (rating) {
                      print(rating);
                    }),
                const SizedBox(height: 10.0),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 49),
                  width: 400,
                  height: 45,
                  decoration: BoxDecoration(
                    color: Colors.blue.shade600,
                    borderRadius: BorderRadius.circular(150),
                  ),
                  child: MaterialButton(
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (_) => Booking()),
                      );
                    },
                    child: const Text(
                      "Continue",
                      textAlign: TextAlign.right,
                      style: TextStyle(
                          letterSpacing: 0.4,
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
