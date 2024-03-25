
import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart'; 

  






  Future<void> sendPostRequest() async {
      var response = await post(Uri.parse("http://127.0.0.1:8000/account/register/"));
  final apiUrl = "http://127.0.0.1:8000/account/register";
     TextEditingController titleController = TextEditingController();
     TextEditingController bodyController = TextEditingController();
    try {
       var response = await http.post(Uri.parse(apiUrl),
           headers: {"Content-Type": "application/json"},
           body: jsonEncode({
          "title": "",
            "body": "",
             "userId": 1,
           }));
       if (response.statusCode == 201) {
         // Scaffold.of(context).showSnackBar(SnackBar(
         //   content: Text("Post created successfully!"),
         // ));
       } else {
         // Scaffold.of(context).showSnackBar(SnackBar(
         //   content: Text("Failed to create post!"),
         // ));
       }
     } catch (e) {
       print(e);     }
   }class Auth{
     final int id;
  final String title;

  const Auth({required this.id, required this.title});

  factory Auth.fromJson(Map<String, dynamic> json) {
    return switch (json) {
      {
        'id': int id,
        'title': String title,
      } =>
        Auth
        (
          id: id,
          title: title,
        ),
      _ => throw const FormatException('Failed to load auth.'),
    };
  }
}
   