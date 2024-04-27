import 'package:flutter/material.dart';
import 'package:app/model/search_flight_model.dart';
import 'package:get/get.dart';

class FlightSearchController extends GetxController {
  DateTime? startDate;
  DateTime? endDate;
  String? selectDeparture = '';
  String? selectDestination = '';
  String? selectItem = '1';

  final List<String> depCity = [
    '',
    'Damascus (DAM)',
    'Latakia (LTK)',
    'Aleppo (ALP)',
    'Baghdad/ Iraq (BGW)',
    'Basrah (BRS)',
    'Beirut (BEY)',
  ];

  final List<String> descCity = [
    '',
    'Damascus (DAM)',
    'Latakia (LTK)',
    'Aleppo (ALP)',
    'Baghdad/ Iraq (BGW)',
    'Basrah (BRS)',
    'Beirut (BEY)',
  ];

  final List<String> passengerNumbers = ['1', '2', '3', '4', '5'];
  void selectStartDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: startDate ?? DateTime.now(),
      firstDate: DateTime.now(),
      lastDate: DateTime(2025),
    );
    if (picked != null) {
      startDate = picked;
    }
    update();
  }

  void selectEndDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: endDate ?? DateTime.now(),
      firstDate: DateTime.now(),
      lastDate: DateTime(2025),
    );
    if (picked != null) {
      endDate = picked;
    }
    update();
  }

  void setDeparture(String? departure) {
    selectDeparture = departure;
    update();
  }

  void setDestination(String? destination) {
    selectDestination = destination;
    update();
  }

  void setPassengerNumber(String? number) {
    selectItem = number;
    update();
  }
}
