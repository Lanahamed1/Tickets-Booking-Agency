
import 'dart:convert';
import 'package:http/http.dart' as http;



class MyBooking {
  final int id;
  final String first_name;
  final String last_name;
  final String Passport_number;
  final String selectItem;
  final String selectDate;

  MyBooking(
      {required this.id,
      required this.first_name,
      required this.Passport_number,
      required this.selectItem,
      required this.last_name,
      required this.selectDate});
  factory MyBooking.fromJson(Map<String, dynamic> json) {
    return switch (json) {
      {
        'id': int id,
        'first_name': String first_name,
        'last_name': String last_name,
        ' Passport_number': String Passport_number,
        ' selectItem': String selectItem,
        ' selectDate': String selectDate,
      } =>
        MyBooking(
            id: id,
            first_name: first_name,
            last_name: last_name,
            Passport_number: Passport_number,
            selectItem: selectItem,
            selectDate: selectDate),
      _ => throw const FormatException('Failed to load album.'),
    };
  }

  Future<MyBooking> createBook(String title) async {
    final response = await http.post(
      Uri.parse('http://127.0.0.1:8000/booking/creat_bookings/'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(<String, String>{
        'first_name': first_name,
        'last_name': last_name,
        ' Passport_number': Passport_number,
        ' selectItem': selectItem,
        ' selectDate': selectDate,
      }),
    );

    if (response.statusCode == true) {
      return MyBooking.fromJson(
          jsonDecode(response.body) as Map<String, dynamic>);
    } else {
      throw Exception('Failed to create album.');
    }
  }
}