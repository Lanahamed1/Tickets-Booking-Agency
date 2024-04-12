// ignore: file_names
import 'package:flutter/material.dart';

// ignore: camel_case_types
class Edit_Profile extends StatefulWidget {
  const Edit_Profile({super.key});

  @override
  State<Edit_Profile> createState() => _Edit_ProfileState();
}

String selectedGender = 'Male';


// ignore: camel_case_types
class _Edit_ProfileState extends State<Edit_Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        elevation: 0.0,
        title: SizedBox(
          child: Container(
              alignment: Alignment.center,
              margin: const EdgeInsets.only(left: 7, top: 3),
              child: const Text(
                "Profile info",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.w900),
              )),
        ),
      ),
      body: Container(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          // ignore: prefer_const_literals_to_create_immutables
          child: ListView(children: [
            const Text(
              "User details",
              style: TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.bold,
                  fontSize: 12),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "First_name",
              style: TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.bold,
                  fontSize: 12),
            ),
            const SizedBox(
              height: 9,
            ),
            TextFormField(
              enabled: true,
              decoration: InputDecoration(
                fillColor: Colors.white,
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
                filled: true,
                contentPadding:
                    const EdgeInsets.symmetric(vertical: 5, horizontal: 30),
                label: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 9),
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            const Text(
              "Last_name",
              style: TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.bold,
                  fontSize: 12),
            ),
            const SizedBox(
              height: 9,
            ),
            TextFormField(
              enabled: true,
              decoration: InputDecoration(
                fillColor: Colors.white,
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
                filled: true,
                contentPadding:
                    const EdgeInsets.symmetric(vertical: 5, horizontal: 30),
                label: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 9),
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            const Text(
              "Email",
              style: TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.bold,
                  fontSize: 12),
            ),
            const SizedBox(
              height: 9,
            ),
            TextFormField(
              enabled: true,
              decoration: InputDecoration(
                fillColor: Colors.white,
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
                filled: true,
                contentPadding:
                    const EdgeInsets.symmetric(vertical: 5, horizontal: 30),
                label: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 9),
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            const Text(
              "Age",
              style: TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.bold,
                  fontSize: 12),
            ),
            const SizedBox(
              height: 9,
            ),
            TextFormField(
              enabled: false,
              decoration: InputDecoration(
                fillColor: Colors.white,
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
                filled: true,
                contentPadding:
                    const EdgeInsets.symmetric(vertical: 5, horizontal: 30),
                label: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 9),
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            const Text(
              "Address",
              style: TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.bold,
                  fontSize: 12),
            ),
            const SizedBox(
              height: 9,
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
              ),
              child: TextFormField(
                enabled: false,
                decoration: InputDecoration(
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12)),
                  filled: true,
                  contentPadding:
                      const EdgeInsets.symmetric(vertical: 5, horizontal: 30),
                  label: Container(
                    margin: const EdgeInsets.symmetric(horizontal: 9),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            const Text(
              "Gender",
              style: TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.bold,
                  fontSize: 12),
            ),
            const SizedBox(
              height: 9,
            ),
            DropdownButton<String>(
              borderRadius: BorderRadius.circular(20),
              iconSize: 24,
              iconDisabledColor: Colors.black,
              elevation: 5,
              value: selectedGender,
              items: <String>['Male', 'Female'].map((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
              onChanged: (newValue) {
                setState(() {
                  selectedGender = newValue!;
                });
                print('Selected Gender: $newValue');
              },
              underline: Container(),
            ),
            const SizedBox(height: 90),
            Container(
                margin: const EdgeInsets.symmetric(horizontal: 40),
                width: 400,
                height: 50,
                decoration: BoxDecoration(
                  color: const Color(0xFF1765FC),
                  borderRadius: BorderRadius.circular(100),
                ),
                child: MaterialButton(
                  onPressed: () {},
                  child: const Text(
                    "Save",
                    textAlign: TextAlign.right,
                    style: TextStyle(
                        letterSpacing: 0.5,
                        fontSize: 15,
                        color: Colors.white,
                        fontWeight: FontWeight.w500),
                  ),
                )),
          ])),
    );
  }
}
