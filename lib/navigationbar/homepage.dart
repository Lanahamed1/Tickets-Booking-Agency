import 'package:flutter/material.dart';
import 'package:flutter_tickets_booking_agency/Flight_search/mainesearch.dart';
import 'package:flutter_tickets_booking_agency/Navigationbar/controller.dart';
import 'package:flutter_tickets_booking_agency/Navigationbar/recmmended.dart';
import 'package:flutter_tickets_booking_agency/appstyle.dart';
import 'package:flutter_tickets_booking_agency/hotel/hotels.dart';
import 'package:get/get.dart';

class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<FlightRecommend> flightRecommend = [
      // Sample flightRecommend data
      FlightRecommend(
        id: 1,
        airline: 'Syria Airline',
        departure: 'Birut',
        departureTime: '10:00 AM',
        destination: 'Amman',
        price: 232,
        duration: '2h 30m',
        arrivalTime: '12:30 PM',
      ),
      FlightRecommend(
        id: 2,
        airline: 'Cham wings Airline',
        departure: 'Damascus',
        departureTime: '10:00 AM',
        destination: 'Amman',
        price: 442,
        duration: '2h ',
        arrivalTime: '12:30 AM',
      ),
    ];
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Stack(
              children: [
                Container(
                  clipBehavior: Clip.antiAlias,
                  decoration: const BoxDecoration(
                      borderRadius:
                          BorderRadius.vertical(bottom: Radius.circular(80))),
                  child: Image.asset(
                    "assets/images/christopher-jolly-HQ8G4WAQfsg-unsplash.jpg",
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(10),
                  margin: const EdgeInsets.only(left: 20, top: 40),
                  child: Text(
                    "ViaWise",
                    style: Styles.headLineStyle14,
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 300),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        alignment: Alignment.center,
                        padding: const EdgeInsets.all(10),
                        width: 120,
                        height: 90,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          shape: BoxShape.rectangle,
                          color: Colors.grey[100],
                        ),
                        child: Column(
                          children: [
                            MaterialButton(
                              height: 50,
                              onPressed: () {
                                 Get.to(() => FlightSearch());
                              },
                              child: const Icon(
                                Icons.flight_takeoff_outlined,
                                color: Color.fromARGB(255, 2, 146, 219),
                                size: 35,
                              ),
                            ),
                            Text(
                              "Flights",
                              textAlign: TextAlign.center,
                              style: Styles.headLineStyle13,
                            ),
                          ],
                        ),
                      ),
                      Container(
                        alignment: Alignment.center,
                        padding: const EdgeInsets.all(10),
                        width: 120,
                        height: 90,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          shape: BoxShape.rectangle,
                          color: Colors.grey[100],
                        ),
                        child: Column(
                          children: [
                            MaterialButton(
                              height: 50,
                              onPressed: () {
                                 Get.to(() => HotelsView());
                              },
                              child: const Icon(
                                Icons.bed,
                                color: Color.fromARGB(255, 2, 146, 219),
                                size: 35,
                              ),
                            ),
                            Text(
                              "Hotel",
                              textAlign: TextAlign.center,
                              style: Styles.headLineStyle13,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 50),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                MaterialButton(
                  onPressed: () {},
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 25),
                        child: Text(
                          "Recommended for you",
                          style: Styles.headLineStyle2,
                        ),
                      ),
                      const SizedBox(
                        width: 150,
                      ),
                      const Icon(Icons.arrow_forward_ios, color: Colors.black),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: flightRecommend.length,
              itemBuilder: (context, index) {
                return RecomendedCard(
                  id: flightRecommend[index].id,
                  airline: flightRecommend[index].airline,
                  departure: flightRecommend[index].departure,
                  departureTime: flightRecommend[index].departureTime,
                  destination: flightRecommend[index].destination,
                  price: flightRecommend[index].price,
                  duration: flightRecommend[index].duration,
                  arrivalTime: flightRecommend[index].arrivalTime,
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
