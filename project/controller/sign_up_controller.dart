import 'package:app/controller/main_page_controller.dart';
import 'package:app/model/user_model.dart';
import 'package:app/view/screen/Auth.dart';
import 'package:flutter/material.dart';

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
      Navigator.of(context).push(
        MaterialPageRoute(builder: (_) {
          return const Mainpage();
        }),
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: const Text("This account already exists!"),
        ),
      );
    }
  }
}
