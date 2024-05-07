import 'package:flutter/material.dart';
import 'package:flutter_tickets_booking_agency/Navigationbar/offer/offer_card.dart';
import 'package:flutter_tickets_booking_agency/Navigationbar/offer/offers_controller.dart';
import 'package:flutter_tickets_booking_agency/Navigationbar/offer/offers_model.dart';
import 'package:flutter_tickets_booking_agency/appstyle.dart';
import 'package:get/get.dart';

class Offers extends StatelessWidget {
  final OfferController offerController = Get.put(OfferController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: const Color(0XFFE1EDFF),
      appBar: AppBar(
        title: Text('Offers', style: Styles.headLineStyle23),
        centerTitle: true,
        elevation: 0,
        backgroundColor: const Color(0XFFE1EDFF),
      ),
      body: Obx(() => ListView.builder(
            itemCount: offerController.offers.length,
            itemBuilder: (context, index) {
              OfferModel offer = offerController.offers[index];
              return OfferCard(offer: offer);
            },
          )),
    );
  }
}
