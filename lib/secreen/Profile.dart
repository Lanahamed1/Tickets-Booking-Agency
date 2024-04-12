// ignore_for_file: file_names

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

//import 'package:image_picker/image_picker.dart';
class Profile extends StatefulWidget {
  // ignore: use_super_parameters
  const Profile({Key? key}) : super(key: key);


  

  @override
  State<Profile> createState() => _ProfileScrState();
}String selectedGender = 'Male';


//File? _imgFile;

// void takeSnapshot() async {
//   final ImagePicker picker = ImagePicker();
//   final XFile? img = await picker.pickImage(
//     source: ImageSource.camera, // alternatively, use ImageSource.gallery
//     maxWidth: 400,
//   );
//   if (img == null) return;
//   setState(() {
//     _imgFile = File(img.path); // convert it to a Dart:io file
//   });
// }

// ignore: camel_case_types
class _ProfileScrState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;

    return Scaffold(
        appBar: AppBar(
          leading:
              IconButton(onPressed: () {}, icon: const Icon(Icons.arrow_back)),
          centerTitle: true,
          backgroundColor: const Color(0XFFE1EDFF),
          elevation: 0.0,
          title: SizedBox(
            child: Container(
                margin: const EdgeInsets.only(top: 3),
                child: const Text(
                  "Profile",
                  style: TextStyle(
                      color: Color(0xFF1765FC),
                      fontSize: 25,
                      fontWeight: FontWeight.w900),
                )),
          ),
        ),
        body: Container(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: ListView(children: [
              const SizedBox(height: 20),
              Container(
                  alignment: Alignment.center,
                  margin: const EdgeInsets.only(bottom: 30),
                  child: const Column(children: [
                    CircleAvatar(
                      radius: 90,
//                           backgroundImage: (_imgFile == null)
//   ? AssetImage('assets/person.png')
//   : FileImage(_imgFile!) as ImageProvider,
// )

                      ////  Positioned(
                      //bottom: 0,
                      //right: 0,
                      //child: Container(
                      //width: 35,
                      //height: 35,
                      //decoration: BoxDecoration(
                      //  borderRadius: BorderRadius.circular(100)),
                      //color: Colors.blue,
                    )
                  ])),
              const SizedBox(
                height: 10,
              ),
              MaterialButton(
                  onPressed: () {},
                  child: const Text(
                    "Edit Profile",
                    style: TextStyle(
                      color: Color(0xFF1765FC),
                    ),
                  )),
              const SizedBox(
                height: 30,
              ),
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

























              ListTile(
                leading: Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: const Icon(Icons.info_outline),
                ),
                title: Text(
                  "Contact us ",
                  style: Theme.of(context).textTheme.bodyText1,
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                alignment: Alignment.bottomLeft,
                child: TextButton(
                    onPressed: () {},
                    child: const Text(
                      textAlign: TextAlign.left,
                      "ViaWise@gamil.com",
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 15,
                      ),
                    )),
              ),
              const SizedBox(
                height: 150,
              ),
              Container(
                  width: 350,
                  height: 45,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: MaterialButton(
                    onPressed: () {},
                    child: const Text(
                      "Log out",
                      textAlign: TextAlign.start,
                      style: TextStyle(
                          letterSpacing: 0.5,
                          wordSpacing: 1,
                          fontSize: 17,
                          color: Color(0xFF1765FC),
                          fontWeight: FontWeight.bold),
                    ),
                  )),
            ])));
  }
}