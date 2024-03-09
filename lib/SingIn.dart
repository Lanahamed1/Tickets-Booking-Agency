// ignore_for_file: file_names

import 'package:flutter/material.dart';

// ignore: camel_case_types
class SingInSrceen extends StatefulWidget {
  // ignore: use_super_parameters
  const SingInSrceen({Key? key}) : super(key: key);
  @override
  State<SingInSrceen> createState() => _SingInscrState();
}

// ignore: camel_case_types
class _SingInscrState extends State<SingInSrceen> {
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
                  "Create an account",
                  style: TextStyle(
                     color:  Color(0xFF1765FC),
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
                      "In your account you can save and manage  your\n bookings and flights",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 13,
                          color: Colors.grey))),
              const SizedBox(height: 25),
              TextFormField(
                decoration: InputDecoration(
                    fillColor: const Color(0XFFF4F7FA),
                    filled: true,
                    hintText: (" Enter your Frist name"),
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
                        "First name",
                        style: TextStyle(
                            fontWeight: FontWeight.w600, color: Colors.grey),
                      ),
                    ),
                    suffixIcon: const Icon(
                      Icons.person,
                    ),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30))),
              ),
              Container(
                margin: const EdgeInsets.only(bottom: 26),
              ),

                    const SizedBox(height: 8),
 TextFormField(
                decoration: InputDecoration(
                    fillColor: const Color(0XFFF4F7FA),
                    filled: true,
                    hintText: (" Enter your Last name"),
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
                        "Last name",
                        style: TextStyle(
                            fontWeight: FontWeight.w600, color: Colors.grey),
                      ),
                    ),
                    suffixIcon: const Icon(
                      Icons.person,
                    ),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30))),
              ),
              Container(
                margin: const EdgeInsets.only(bottom: 26),
              ),
              TextFormField(
                decoration: InputDecoration(
                    fillColor: const Color(0XFFF4F7FA),
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
              const SizedBox(height: 26),
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
                      onPressed: () {},
                      icon: const Icon(Icons.visibility),
                    ),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30))),
              ),
              const SizedBox(height: 20),
              Container(
                  margin: const EdgeInsets.symmetric(horizontal: 49),
                  width: 350,
                  height: 45,
                  decoration: BoxDecoration(
                    color: const Color(0xFF1765FC),
                    borderRadius: BorderRadius.circular(150),
                  ),
                  child: MaterialButton(
                    onPressed: () {},
                    child: const Text(
                      "Create an account",
                      textAlign: TextAlign.right,
                      style: TextStyle(
                          letterSpacing: 0.5,
                          fontSize: 15,
                          color: Colors.white,
                          fontWeight: FontWeight.w500),
                    ),
                  )),
              const SizedBox(height: 9),
              const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 6.0),
                  child: Row(children: [
                    Expanded(
                        child: Divider(thickness: 0.5, color: Colors.grey)),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10.0),
                      child: Text(
                        "or",
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 19,
                        ),
                      ),
                    ),
                    Expanded(
                        child: Divider(thickness: 0.5, color: Colors.grey)),
                  ])),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    iconSize: 43,
                    icon: const Icon(
                      Icons.g_mobiledata,
                      color: Color(0xFF1765FC),
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
              const Center(
                child: Text(
                  'By regestring, you agree to our Terms and Conditions.',
                  style: TextStyle(
                      color: Colors.grey,
                      fontSize: 13,
                      fontWeight: FontWeight.w600),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const SizedBox(height: 25),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Already have an account?",
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
                      "Sign in",
                      style: TextStyle(
                          fontSize: 14,
                          color: Color.fromARGB(255, 43, 111, 247),
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                ],
              )
            ],
          ),
        ));
  }
}
