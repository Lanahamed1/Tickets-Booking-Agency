import 'dart:async';
//mport 'dart:convert';
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

Future<void> updateUserProfile(
    String Token,
    String firstNameController,
    String lastNameController,
    String emailController,
    String ageController,
    String addressController,
    String genderController) async {
  String url = 'http://127.0.0.1:8000/account/profile/=Auth$Token';

  Map<String, dynamic> userData = {
    'firstName': firstNameController,
    'lastName': lastNameController,
    'username': emailController,
    'age': ageController,
    'address': addressController,
    'gender': genderController,
  };

  try {
    final response = await http.post(
      Uri.parse(url),
      //  headers: {
      //   'Authorization': 'Bearer $token', // Include the token in the headers
      // },
      body: userData,
    );

    if (response.statusCode == 200) {
      print('Profile updated successfully');
    } else {
      print('Failed to update profile: ${response.statusCode}');
    }
  } catch (error) {
    print('Error updating profile: $error');
  }
}
