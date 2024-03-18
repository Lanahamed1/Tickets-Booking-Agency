// ignore_for_file: use_super_parameters, file_names
 import 'package:http/http.dart' as http;

import'package:flutter/material.dart';

class LogInSrceen extends StatefulWidget {
  const LogInSrceen({Key? key}) : super(key: key);
  @override
  State<LogInSrceen> createState() => _LogInScrState();
}
  void test(){
    print("object");
  }
// ignore: camel_case_types
class _LogInScrState extends State<LogInSrceen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color(0XFFE1EDFF),
        elevation: 0.0,
        title: SizedBox(
          child: Container(
              alignment: Alignment.center,
              margin: const EdgeInsets.only(left: 7, top: 3),
              child: const Text(
                "Welcome back",
                style: TextStyle(
                    color:Color(0xFF1765FC),
                    fontSize: 25,
                    fontWeight: FontWeight.w900),
              )),
        ),
      ),
      body: Container(
        color: const Color(0XFFE1EDFF),
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: ListView(
          children: [
            const SizedBox(height: 0),
            Container(
              margin: const EdgeInsets.only(left: 5),
              child: const Text(
                  "We are happy to see you again! What is the next\n destination? ",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 13,
                      color: Colors.grey)),
            ),
            const SizedBox(height: 26),
            TextFormField(
              decoration: InputDecoration(
                  fillColor: Color(0XFFF4F7FA),
                  filled: true,
                  hintText: ("Enter your e-mail"),
                  hintStyle: const TextStyle(
                      fontSize: 13,
                      color: Colors.grey,
                      fontWeight: FontWeight.w100),
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                  contentPadding:
                      const EdgeInsets.symmetric(vertical: 5, horizontal: 30),
                  label: Container(
                    margin: const EdgeInsets.symmetric(horizontal: 9),
                    child: const Text(
                      "E-mail",
                      style: TextStyle(
                          fontWeight: FontWeight.w600, color: Colors.grey),
                    ),
                  ),
                  suffixIcon: const Icon(
                    Icons.email_outlined,
                  ),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30))),
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 25),
            ),
            TextFormField(
              decoration: InputDecoration(
                  fillColor: const Color(0XFFF4F7FA),
                  filled: true,
                  hintText: ("Enter your password"),
                  hintStyle: const TextStyle(
                      fontSize: 13,
                      color: Colors.grey,
                      fontWeight: FontWeight.w100),
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                  contentPadding:
                      const EdgeInsets.symmetric(vertical: 5, horizontal: 30),
                  label: Container(
                    margin: const EdgeInsets.symmetric(horizontal: 9),
                    child: const Text(
                      "Password",
                      style: TextStyle(
                          fontWeight: FontWeight.w600, color: Colors.grey),
                    ),
                  ),
                  suffixIcon: IconButton(
                    onPressed: () {
                    },
                    icon: const Icon(Icons.visibility),
                  ),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30))),
            ),
            const SizedBox(height: 3),
            Column(
              children: [
                Container(
                  alignment: Alignment.centerRight,
                  child: MaterialButton(
                    minWidth: 15,
                    onPressed: () {},
                    child: const Text(
                      "Forgot password?",
                      style: TextStyle(
                          fontSize: 13,
                          color: Colors.grey,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
                const SizedBox(height: 15),
                Container(
                    width: 350,
                    height: 45,
                    decoration: BoxDecoration(
                      color: const Color(0xFF1765FC),
                      borderRadius: BorderRadius.circular(150),
                    ),
                    child: MaterialButton(
                      onPressed: () {
                                              test();
                      },
                      child: const Text(
                        "Sign in",
                        textAlign: TextAlign.right,
                        style: TextStyle(
                            letterSpacing: 0.5,
                            wordSpacing: 1,
                            fontSize: 15,
                            color: Colors.white,
                            fontWeight: FontWeight.w500),
                      ),
                    )),
                const SizedBox(height: 9),
                const Text(
                  "or",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.grey,
                      fontSize: 19,
                      fontWeight: FontWeight.w500),
                ),
                const SizedBox(height: 5),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                      iconSize: 43,
                      icon: const Icon(
                        Icons.g_mobiledata,
                        color: Color(0XFF1765FC),
                      ),
                      onPressed: () {
                        // Sign in with Google
                      },
                    ),
                    const SizedBox(width: 4),
                    IconButton(
                      iconSize: 30,
                      icon: const Icon(
                        Icons.apple_rounded,
                        color: Color(0XFF1765FC),
                      ),
                      onPressed: () {
                        // Sign in with ICLOUD
                      },
                    ),
                    const SizedBox(width: 4),
                    IconButton(
                      iconSize: 30,
                      icon: const Icon(
                        Icons.facebook,
                        color: Color(0XFF1765FC),
                      ),
                      onPressed: () {
                        // Sign in with Facebook
                      },
                    ),
                  ],
                ),
                const SizedBox(height: 4),
                Container(
                  alignment: Alignment.center,
                  child: const Text(
                    "By signing in, you agree to our Terms and Conditions.",
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 13,
                        fontWeight: FontWeight.w600),
                  ),
                ),
                const SizedBox(height: 32),
                Container(
                    width: 350,
                    height: 45,
                    decoration: BoxDecoration(
                      color: const Color(0XFFF4F7FA),
                      border: Border.all(
                          color: const Color(0XFF1765FC), width: 1.5),
                      borderRadius: BorderRadius.circular(150),
                    ),
                    child: MaterialButton(
                      onPressed: () {},
                      child: const Text(
                        "Sign in as a guest",
                        textAlign: TextAlign.right,
                        style: TextStyle(
                            letterSpacing: 0.5,
                            fontSize: 15,
                            color: Color(0XFF1765FC),
                            fontWeight: FontWeight.w600),
                      ),
                    )),
                const SizedBox(height: 17),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Don't have an account?",
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 14,
                          fontWeight: FontWeight.w600),
                    ),
                    MaterialButton(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 11, vertical: 18),
                      minWidth: 20,
                      onPressed: () {},
                      child: const Text(
                        "Register",
                        style: TextStyle(
                            fontSize: 14,
                            color: Color.fromARGB(255, 43, 111, 247),
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }


}
