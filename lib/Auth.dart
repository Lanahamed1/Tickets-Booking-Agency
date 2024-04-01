import 'dart:async';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Auth {
  static Future<bool> SignUp(String first_name, String last_name,
      String username, String password) async {
    final url = Uri.parse("http://127.0.0.1:8000/account/register/");

    final response = await http.post(
      url,
      body: {
        'first_name': first_name,
        'last_name': last_name,
        'username': username,
        'password': password,
      },
    );
    if (response.statusCode == 201) {
      return true;
    } else {
      return false;
    }
  }

  static Future<bool> LogIN(String username, String password) async {
    final url = Uri.parse("http://127.0.0.1:8000/account/login/");

    final response = await http.post(
      url,
      body: {
        'username': username,
        'password': password,
      },
    );
    if (response.statusCode == 200) {
      return true;
    } else {
      return false;
    }
  }
}
