import 'package:app/view/screen/Auth.dart';
import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileScrState();
}
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
  bool isEditMode = false;
  late String Token;
  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController ageController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  TextEditingController genderController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          //leading:
          //   IconButton(onPressed: () {}, icon: const Icon(Icons.arrow_back)),
          centerTitle: true,
          backgroundColor: const Color(0XFFE1EDFF),
          elevation: 0.0,
          title: SizedBox(
            child: Container(
                margin: const EdgeInsets.only(top: 3),
                child: const Text(
                  "Profile",
                  style: TextStyle(
                      color: Color.fromARGB(255, 2, 146, 219),
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
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(150),
                ),
                margin: const EdgeInsets.symmetric(horizontal: 5),
                child: MaterialButton(
                    color: const Color.fromARGB(255, 2, 146, 219),
                    minWidth: 20,
                    onPressed: () {
                      if (isEditMode) {
                        updateUserProfile(
                            Token = '',
                            firstNameController.text,
                            lastNameController.text,
                            emailController.text,
                            ageController.text,
                            addressController.text,
                            genderController.text);
                      }
                      setState(() {
                        isEditMode = !isEditMode;
                      });
                    },
                    child: Text(
                      isEditMode ? "Save Profile" : "Edit Profile",
                      style: const TextStyle(
                        color: Colors.white,
                      ),
                    )),
              ),
              const SizedBox(
                height: 30,
              ),
              const Text(
                "User details",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 18),
              ),
              const SizedBox(
                height: 34,
              ),
              buildTextField("First Name", firstNameController),
              const SizedBox(height: 30),

              buildTextField("Last Name", lastNameController),
              const SizedBox(height: 30),

              buildTextField("Email", emailController),
              const SizedBox(height: 30),

              buildTextField(
                "Age",
                ageController,
              ),
              const SizedBox(height: 30),

              buildTextField(
                "Address",
                addressController,
              ),
              const SizedBox(
                height: 30,
              ),

              buildTextField(
                "Gender",
                genderController,
              ),
              const SizedBox(height: 30),

              // ListTile(
              //   leading: Container(
              //     width: 50,
              //     height: 50,
              //     decoration: BoxDecoration(
              //       borderRadius: BorderRadius.circular(100),
              //     ),
              //     child: const Icon(Icons.info_outline),
              //   ),
              //   title: Text(
              //     "Contact us ",
              //     style: Theme.of(context).textTheme.bodyText1,
              //   ),
              //   subtitle: Text("ViaWise"),
              // ),

              Container(
                  padding: const EdgeInsets.only(right: 20),
                  alignment: Alignment.bottomRight,
                  width: 350,
                  height: 45,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: MaterialButton(
                    minWidth: 100,
                    height: 40,
                    color: const Color.fromARGB(255, 2, 146, 219),
                    onPressed: () {},
                    child: const Text(
                      "Log out",
                      textAlign: TextAlign.start,
                      style: TextStyle(
                          letterSpacing: 0.5,
                          wordSpacing: 1,
                          fontSize: 17,
                          color: Color.fromARGB(255, 255, 255, 255),
                          fontWeight: FontWeight.bold),
                    ),
                  )),
              const SizedBox(height: 30),
            ])));
  }

  Widget buildTextField(String label, TextEditingController controller,
      {bool enabled = true}) {
    return TextFormField(
      controller: controller,
      enabled: enabled && isEditMode,
      decoration: InputDecoration(
        labelText: label,
        fillColor: Colors.white,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        filled: true,
        contentPadding: const EdgeInsets.symmetric(vertical: 5, horizontal: 30),
      ),
    );
  }
}
