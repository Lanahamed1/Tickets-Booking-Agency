import 'package:flutter/material.dart';
import 'package:flutter_tickets_booking_agency/Navigationbar/My_Booking/BookingCard.dart';
import 'package:flutter_tickets_booking_agency/Navigationbar/My_Booking/my_booking_controller.dart';
import 'package:flutter_tickets_booking_agency/Navigationbar/My_Booking/my_booking_model.dart';
import 'package:flutter_tickets_booking_agency/appstyle.dart';
import 'package:get/get.dart';

class BookingView extends GetView<FlightController> {
  @override
  final FlightController controller =
      Get.put(FlightController(), permanent: true);

  BookingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: const Color(0XFFE1EDFF),
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: const Color(0XFFE1EDFF),
        title: Text(
          'My Booking',
          style: Styles.headLineStyle23,
        ),
      ),
      body: Obx(
        () => ListView.builder(
          itemCount: controller.flights.length,
          itemBuilder: (context, index) {
            Bookedflights flight = controller.flights[index];
            return BookingCard(flight: flight);
          },
        ),
      ),
    );
  }
}
