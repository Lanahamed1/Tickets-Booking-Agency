
import 'package:flutter/material.dart';
import 'package:flutter_tickets_booking_agency/appstyle.dart';
import 'package:flutter_tickets_booking_agency/hotel/hotel_detials.dart';
import 'package:flutter_tickets_booking_agency/hotel/hotels_controller.dart';
import 'package:flutter_tickets_booking_agency/hotel/hotels_model%20.dart';
import 'package:get/get.dart';

class HotelsView extends StatelessWidget {
  final HotelController hotelController = Get.put(HotelController());

  HotelsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Hotels')),
      body: Obx(() => ListView.builder(
            itemCount: hotelController.hotels.length,
            itemBuilder: (context, index) {
              Hotel hotel = hotelController.hotels[index];
              return Center(
                  child: Card(
                elevation: 4,
                child: Column(
                  children: [
                    Image.asset(
                      hotel.image,
                      // Replace with actual image URL
                      height: 200,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                    ListTile(
                      title: Text(
                        hotel.name,
                        style: Styles.headLineStyle27,
                      ),
                      subtitle: Text('${hotel.rate}' '\n${hotel.location}'),
                      onTap: () {
                        Get.to(() => HotelDetails(hotel: hotel));
                      },
                    ),
                    Padding(
                      padding: EdgeInsets.all(20.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: List.generate(
                                hotel.rating.stars.round(),
                                (index) => Icon(
                                      Icons.star,
                                      color: Color.fromARGB(255, 255, 218, 11),
                                    )),
                          ),
                          Text("${hotel.price}\$"),
                        ],
                      ),
                    ),
                  ],
                ),
              ));
            },
          )),
    );
  }
}
