import 'package:flutter_tickets_booking_agency/hotel/rooms_model.dart';
import 'package:get/get.dart';

class RoomListingsController extends GetxController {
  var roomListings = <RoomListingModel>[
    RoomListingModel(
      title: 'Clean Room, Central Location in Manhattan',
      description: '1 guest · 1 bedroom · 2 bathrooms',
      price: '\$250.00 / night',
      isPremium: true,
      rating: Rating(stars: 4.9),
      image: 'assets/images/li-yang-a8iCZvtrHpQ-unsplash.jpg',
    ),
    RoomListingModel(
      title: 'Modern Room 20 Minutes to Times Square',
      description: '1 guest · 1 bedroom · 2 bathrooms',
      price: '\$150.00 / night',
      isPremium: false,
      rating: Rating(stars: 3.9),
      image: 'assets/images/lotus-design-n-print-g51F6-WYzyU-unsplash.jpg',
    ),
  ].obs;
}
