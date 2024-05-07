// offer_controller.dart
import 'package:flutter_tickets_booking_agency/Navigationbar/offer/offers_model.dart';
import 'package:get/get.dart';

class OfferController extends GetxController {
  var offers = <OfferModel>[
    OfferModel(
      departure: 'Damascus',
      destination: 'Dubai',
      departureDate: '1:00PM',
      returnDate: '7:00PM',
      id: 1,
      image: "assets/images/Dubi.jpg",
      rate: Rating(stars: 4.9),
      airline: ' Syrian Airlines',
      amount: 30,
      durationoffer: '2 days ',
      price: 290,
    ),
    OfferModel(
      image: "assets/images/Russia.jpg",
      departure: 'Lattakia',
      rate: Rating(stars: 4),
      destination: 'Moscow',
      departureDate: '2022-11-15',
      returnDate: '2022-11-25',
      id: 2,
      airline: 'Cham Wings Airlines',
      amount: 50,
      durationoffer: '1 days',
      price: 250,
    ),
    OfferModel(
      image: "assets/images/Amman.jpg",
      departure: 'Aleppo',
      rate: Rating(stars: 3.5),
      destination: 'Amman',
      departureDate: '2022-11-15',
      returnDate: '2022-11-25',
      id: 2,
      airline: 'Syrian Airlines',
      amount: 50,
      durationoffer: '1 days',
      price: 250,
    ),
    OfferModel(
      image: "assets/images/Damascus.jpg",
      departure: 'Tahran',
      rate: Rating(stars: 3.9),
      destination: 'Damascus',
      departureDate: '2022-11-15',
      returnDate: '2022-11-25',
      id: 2,
      airline: 'Cham Wings Airlines',
      amount: 50,
      durationoffer: '1 days',
      price: 250,
    ),
  ].obs;
}
