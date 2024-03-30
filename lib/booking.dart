import 'package:flutter/material.dart';

class Booking extends StatefulWidget {
  const Booking({super.key});

  @override
  State<Booking> createState() => _BookingState();
}

class _BookingState extends State<Booking> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.white,
          elevation: 0.0,
          title: SizedBox(
            child: Container(
                alignment: Alignment.center,
                margin: const EdgeInsets.only(left: 7, top: 3),
                child: const Text(
                  "Book your flight",
                  style: TextStyle(
                      color: Color(0XFF2680FF),
                      fontSize: 25,
                      fontWeight: FontWeight.w900),
                )),
          ),
        ),
        body: Container(
            color: Colors.white,
            width: 150,
            height: 130,
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: ListView(
              children: const [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    MaterialButton(
                      onPressed: () {},
                      child: Text("One way"),
                    ),
                    MaterialButton(
                      onPressed: () {},
                      child: Text("Round trip "),
                    )
                  ],
                )
              ],
            )));
  }
}
