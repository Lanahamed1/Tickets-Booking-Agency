// home_page.dart
import 'package:flutter/material.dart';
import 'package:flutter_tickets_booking_agency/hotel/room_controller.dart';
import 'package:flutter_tickets_booking_agency/hotel/rooms_model.dart';
import 'package:get/get.dart';

class Roompage extends StatelessWidget {
  final RoomListingsController roomListingsController =
      Get.put(RoomListingsController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Room Listings'),
      ),
      body: Obx(
        () => ListView.builder(
          itemCount: roomListingsController.roomListings.length,
          itemBuilder: (context, index) {
            RoomListingModel roomListing =
                roomListingsController.roomListings[index];
            return RoomListingWidget(roomListing: roomListing);
          },
        ),
      ),
    );
  }
}

class RoomListingWidget extends StatelessWidget {
  final RoomListingModel roomListing;

  RoomListingWidget({required this.roomListing});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image.asset(
        roomListing.image,
        //   width: 80,
        height: 160,
        fit: BoxFit.cover,
      ),
      title: Text(roomListing.title),
      subtitle: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(roomListing.description),
          SizedBox(
            height: 10,
          ),
          Row(
            children: List.generate(
                roomListing.rating.stars.round(),
                (index) => Icon(
                      size: 15,
                      Icons.star,
                      color: Color.fromARGB(255, 255, 218, 11),
                    )),
          ),
        ],
      ),
      trailing: Text(
        roomListing.price,
        style: TextStyle(
          color: roomListing.isPremium ? Colors.red : Colors.black,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
