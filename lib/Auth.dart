import 'dart:async';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';

class Auth {
  static Future<void> Authentication(String first_name, String last_name,
      String email, String password) async {
    final url = Uri.parse("http://127.0.0.1:8000/account/register");

    final response = await http.post(
      url,
      body: {
        'first_name': first_name,
        'last_name': last_name,
        'email': email,
        'password': password,
      },
    );
    if (response.statusCode == 201) {
      print("Signed up successfully!");
    } else {
      print('Failed to sign up');
    }
  }
}
