import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:intl/intl.dart';
import 'package:date_format_field/date_format_field.dart';

class Booking extends StatefulWidget {
  const Booking({super.key});

  @override
  State<Booking> createState() => _PassengerStateState();
}

final TextEditingController first_nameController = TextEditingController();
final TextEditingController last_nameController = TextEditingController();
final TextEditingController NationalNumberController = TextEditingController();

class _PassengerStateState extends State<Booking> {
  final List<String> selectGender = ['Mr', 'Mrs', 'Ms'];
  String? selectitem = 'Mr';
  GlobalKey<FormState> formstate = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading:
              IconButton(onPressed: () {
                Navigator.pop(context);
              }, icon: const Icon(Icons.arrow_back)),
          centerTitle: true,
          elevation: 0.0,
          title: SizedBox(
            child: Container(
                margin: const EdgeInsets.only(top: 3),
                child: const Text(
                  "Passenger",
                  style: TextStyle(
                      color: Color(0XFF2680FF),
                      fontSize: 18,
                      fontWeight: FontWeight.w900),
                )),
          ),
        ),
        body: Container(
          color: Colors.grey[200],
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: ListView(children: <Widget>[
            const SizedBox(
              height: 30,
            ),
            Container(
              width: 400,
              height: 1800,
              color: Colors.white,
              child: Form(
                  key: formstate,
                  child: Column(children: [
                    Container(
                      width: 400,
                      height: 90,
                      decoration: BoxDecoration(
                        color: Colors.blue[50],
                        border: Border.all(color: Colors.blue, width: 1),
                      ),
                      child: const Row(
                        children: [
                          Padding(
                            padding:
                                EdgeInsets.only(bottom: 35, right: 3, left: 7),
                            child: Icon(
                              Icons.info_sharp,
                              size: 20,
                              color: Colors.blue,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              "Please enter your first name, last name  exactly \n as the appear on your passport to avoid  issues \n at the airport.",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 23, 22, 22)),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    const Padding(
                      padding: EdgeInsets.only( top: 0, bottom: 1, left: 0, right: 350),
                      child: Text(
                        'select gender',
                        style: TextStyle(
                            fontWeight: FontWeight.w600, color: Colors.grey),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.only(left: 44),
                      child: Row(
                        children: [
                          DropdownButton(
                              focusColor: Colors.white,
                              dropdownColor: const Color(0XFFF4F7FA),
                              elevation: 0,
                              value: selectitem,
                              items: selectGender
                                  .map((item) => DropdownMenuItem(
                                      value: item, child: Text(item)))
                                  .toList(),
                              onChanged: (item) =>
                                  setState(() => selectitem = item)),
                          const SizedBox(
                            height: 8,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    TextFormField(
                      controller: first_nameController,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "The field is empty";
                        }
                        if (value.length > 12) {
                          return "Minmium length is 12 characters";
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(1)),
                        filled: true,
                        floatingLabelBehavior: FloatingLabelBehavior.always,
                        contentPadding: const EdgeInsets.symmetric(
                            vertical: 5, horizontal: 30),
                        label: Container(
                          margin: const EdgeInsets.symmetric(horizontal: 9),
                          child: const Text(
                            "First name",
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                color: Colors.grey),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(bottom: 14),
                    ),
                    const SizedBox(height: 10),
                    TextFormField(
                      controller: last_nameController,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "The field is empty";
                        }
                        if (value.length > 12) {
                          return "Minmium length is 12 characters";
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        fillColor: Colors.white,
                        filled: true,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(1)),
                        floatingLabelBehavior: FloatingLabelBehavior.always,
                        contentPadding: const EdgeInsets.symmetric(
                            vertical: 5, horizontal: 30),
                        label: Container(
                          margin: const EdgeInsets.symmetric(horizontal: 9),
                          child: const Text(
                            "Last name",
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                color: Colors.grey),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    DateFormatField(
                      type: DateFormatType.type1,
                      onComplete: (value) {
                        validator:
                        (value) {
                          if (value == null || value.isEmpty) {
                            return null;
                          }
                          final components = value.split("/");
                          if (components.length == 3) {
                            final day = int.tryParse(components[0]);
                            final month = int.tryParse(components[1]);
                            final year = int.tryParse(components[2]);
                            if (day != null && month != null && year != null) {
                              final date = DateTime(year, month, day);
                              if (date.year == year &&
                                  date.month == month &&
                                  date.day == day) {
                                return null;
                              }
                            }
                          }
                          return "wrong date";
                        };
                        print(value.toString);
                      },
                      decoration: InputDecoration(
                        fillColor: Colors.white,
                        filled: true,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(1)),
                        floatingLabelBehavior: FloatingLabelBehavior.always,
                        contentPadding: const EdgeInsets.symmetric(
                            vertical: 5, horizontal: 30),
                        label: Container(
                          margin: const EdgeInsets.symmetric(horizontal: 9),
                          child: const Text(
                            "Date of birth",
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                color: Colors.grey),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    TextFormField(
                      controller: NationalNumberController,
                      validator: (value) {
                        if (value!.length > 10) {
                          return "Minmium length is 10 characters";
                        }
                        if (value.isEmpty) {
                          return "The field is empty";
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        fillColor: Colors.white,
                        filled: true,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(1)),
                        floatingLabelBehavior: FloatingLabelBehavior.always,
                        contentPadding: const EdgeInsets.symmetric(
                            vertical: 5, horizontal: 30),
                        label: Container(
                          margin: const EdgeInsets.symmetric(horizontal: 9),
                          child: const Text(
                            "National number",
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                color: Colors.grey),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Container(
                      alignment: Alignment.bottomLeft,
                      margin: const EdgeInsets.all(15),
                      child: const Text("Select baggage",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              fontWeight: FontWeight.w600)),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                            color: const Color.fromARGB(255, 231, 226, 226),
                            width: 1),
                      ),
                      child: Column(
                        children: [
                          Container(
                            alignment: Alignment.bottomLeft,
                            margin: const EdgeInsets.all(15),
                            child: const Text("Personal item",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600)),
                          ),
                          Container(
                            alignment: Alignment.bottomLeft,
                            margin: const EdgeInsets.all(15),
                            child: const Text(
                                "A small bag that must fit under the seat in front of you.",
                                style: TextStyle(
                                  color: Colors.black,
                                )),
                          ),
                          Container(
                            alignment: Alignment.bottomLeft,
                            margin: const EdgeInsets.all(15),
                            child: Row(
                              children: [
                                Image.asset(
                                  'assets/images/personalbag.png',
                                  height: 150,
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(
                                      top: 0, bottom: 1, left: 12, right: 30),
                                  child: Text('3 kg'),
                                )
                              ],
                            ),
                          ),
                          Row(
                            children: [
                              Container(
                                width: 80.0,
                                height: 30.0,
                                decoration: BoxDecoration(
                                  color: Colors.green[50],
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                margin: const EdgeInsets.all(20),
                                child: TextButton(
                                  child: const Text("Included",
                                      style: TextStyle(
                                          color: Colors.green,
                                          fontSize: 12,
                                          fontWeight: FontWeight.w600)),
                                  onPressed: () {},
                                ),
                              ),
                              Container(
                                width: 100.0,
                                height: 30.0,
                                decoration: BoxDecoration(
                                  color:
                                      const Color.fromARGB(255, 248, 241, 169),
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                margin: const EdgeInsets.all(20),
                                child: TextButton(
                                  child: const Text("Not included",
                                      style: TextStyle(
                                          color:
                                              Color.fromARGB(255, 110, 103, 32),
                                          fontSize: 12,
                                          fontWeight: FontWeight.w600)),
                                  onPressed: () {},
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                            color: const Color.fromARGB(255, 231, 226, 226),
                            width: 1),
                      ),
                      child: Column(
                        children: [
                          Container(
                            alignment: Alignment.bottomLeft,
                            margin: const EdgeInsets.all(15),
                            child: const Text("hand item",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600)),
                          ),
                          Container(
                            alignment: Alignment.bottomLeft,
                            margin: const EdgeInsets.all(15),
                            child: const Text(
                                "Backpack or handbag that goes in the overhead compartment",
                                style: TextStyle(
                                  color: Colors.black,
                                )),
                          ),
                          Container(
                            alignment: Alignment.bottomLeft,
                            margin: const EdgeInsets.all(15),
                            child: Row(
                              children: [
                                Image.asset(
                                  'assets/images/handbag.png',
                                  height: 150,
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(
                                      top: 0, bottom: 1, left: 12, right: 30),
                                  child: Text('7 kg'),
                                )
                              ],
                            ),
                          ),
                          Row(
                            children: [
                              Container(
                                width: 80.0,
                                height: 30.0,
                                decoration: BoxDecoration(
                                  color: Colors.green[50],
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                margin: const EdgeInsets.all(20),
                                child: TextButton(
                                  child: const Text("Included",
                                      style: TextStyle(
                                          color: Colors.green,
                                          fontSize: 12,
                                          fontWeight: FontWeight.w600)),
                                  onPressed: () {},
                                ),
                              ),
                              Container(
                                width: 100.0,
                                height: 30.0,
                                decoration: BoxDecoration(
                                  color:
                                      const Color.fromARGB(255, 248, 241, 169),
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                margin: const EdgeInsets.all(20),
                                child: TextButton(
                                  child: const Text("Not included",
                                      style: TextStyle(
                                          color:
                                              Color.fromARGB(255, 110, 103, 32),
                                          fontSize: 12,
                                          fontWeight: FontWeight.w600)),
                                  onPressed: () {},
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                            color: const Color.fromARGB(255, 231, 226, 226),
                            width: 1),
                      ),
                      child: Column(
                        children: [
                          Container(
                            alignment: Alignment.bottomLeft,
                            margin: const EdgeInsets.all(15),
                            child: const Text("Checked baggage",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600)),
                          ),
                          Container(
                            alignment: Alignment.bottomLeft,
                            margin: const EdgeInsets.all(15),
                            child: const Text(
                                "Suitcase or other bag that you want to checked in.",
                                style: TextStyle(
                                  color: Colors.black,
                                )),
                          ),
                          Container(
                            alignment: Alignment.bottomLeft,
                            margin: const EdgeInsets.all(15),
                            child: Row(
                              children: [
                                Image.asset(
                                  'assets/images/checkedbag.png',
                                  height: 150,
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(
                                      top: 0, bottom: 1, left: 12, right: 30),
                                  child: Text('30 kg'),
                                )
                              ],
                            ),
                          ),
                          Row(
                            children: [
                              Container(
                                width: 80.0,
                                height: 30.0,
                                decoration: BoxDecoration(
                                  color: Colors.green[50],
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                margin: const EdgeInsets.all(20),
                                child: TextButton(
                                  child: const Text("Included",
                                      style: TextStyle(
                                          color: Colors.green,
                                          fontSize: 12,
                                          fontWeight: FontWeight.w600)),
                                  onPressed: () {},
                                ),
                              ),
                              Container(
                                width: 100.0,
                                height: 30.0,
                                decoration: BoxDecoration(
                                  color:
                                      const Color.fromARGB(255, 248, 241, 169),
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                margin: const EdgeInsets.all(20),
                                child: TextButton(
                                  child: const Text("Not included",
                                      style: TextStyle(
                                          color:
                                              Color.fromARGB(255, 110, 103, 32),
                                          fontSize: 12,
                                          fontWeight: FontWeight.w600)),
                                  onPressed: () {},
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    )
                  ])),
            ),
            const SizedBox(
              height: 35,
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 49),
              width: 400,
              height: 45,
              decoration: BoxDecoration(
                color: Colors.blue.shade600,
                borderRadius: BorderRadius.circular(150),
              ),
              child: MaterialButton(
                onPressed: () {
                  if (formstate.currentState!.validate()) {
                    print("valid");
                  } else {
                    print("not valid");
                  }
                },
                child: const Text(
                  "continue",
                  textAlign: TextAlign.right,
                  style: TextStyle(
                      letterSpacing: 0.4,
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.w500),
                ),
              ),
            )
          ]),
        ));
  }
}
