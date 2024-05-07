import 'package:flutter/material.dart';
import 'package:flutter_tickets_booking_agency/Navigationbar/Main_page.dart';
import 'package:flutter_tickets_booking_agency/Screen/Auth.dart';
import 'package:flutter_tickets_booking_agency/Screen/user_model.dart';

class SignUpController {
  void signUp(BuildContext context, UserModel userModel) async {
    var result = await Auth.SignUp(
      userModel.firstName,
      userModel.lastName,
      userModel.username,
      userModel.password,
    );

    if (result == true) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text("Signed Up successfully!"),
        ),
      );
      // Navigate to the main page on successful sign up

      () async {
        Navigator.of(context).push(
          MaterialPageRoute(builder: (_) {
            return Mainpage();
          }),
        );
      };
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: const Text("This account already exists!"),
        ),
      );
    }
  }
}
