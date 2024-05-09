import 'package:flutter/material.dart';
import 'package:flutter_tickets_booking_agency/Navigationbar/My_Booking/BookingCard.dart';
import 'package:flutter_tickets_booking_agency/Navigationbar/My_Booking/my_booking_controller.dart';
import 'package:flutter_tickets_booking_agency/Navigationbar/My_Booking/my_booking_model.dart';
import 'package:flutter_tickets_booking_agency/appstyle.dart';
import 'package:get/get.dart';

class Booking extends GetView<FlightController> {
  @override
  final FlightController controller =
      Get.put(FlightController(), permanent: true);

  Booking({super.key});

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
        body: Obx(() {
          if (controller.flights.isEmpty) {
            return Center(child: Text('No bookings found.'));
          } else {
            return ListView.builder(
              itemCount: controller.flights.length,
              itemBuilder: (context, index) {
                Bookedflights flight = controller.flights[index];
                // Build UI for each flight item
                // Example: return FlightItemWidget(flight: flight);
                return Container(); // Replace Container() with your UI widget
              },
            );
          }
        }));
  }
}
