import 'package:flutter/material.dart';

class BookingDetails extends StatelessWidget {
  BookingDetails({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: const Color(0XFFE1EDFF),
          title: SizedBox(
            child: Container(
                alignment: Alignment.center,
                margin: const EdgeInsets.only(left: 0, top: 3, right: 10),
                child: const Text(
                  "Booking",
                  style: TextStyle(
                      color: Color(0XFF2680FF),
                      fontSize: 25,
                      fontWeight: FontWeight.w900),
                )),
          ),
        ),
        body: Container(
            color: Colors.white,
            padding: const EdgeInsets.symmetric(
                horizontal: 24, vertical: Checkbox.width),
            child: ListView(children: [
              Container(
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.blue[50],
                  border: Border.all(color: Colors.blue, width: 1),
                ),
                child: const Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(bottom: 0, right: 3, left: 7),
                      child: Icon(
                        Icons.info_sharp,
                        size: 20,
                        color: Colors.blue,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        "If you sure of the information Press on Booking ",
                        style:
                            TextStyle(color: Color.fromARGB(255, 23, 22, 22)),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(9.0),
                child: Container(
                  height: 420,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                        color: const Color.fromARGB(255, 231, 226, 226),
                        width: 2),
                  ),
                  // ignore: prefer_const_constructors
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: const Column(
                      children: [
                        Row(children: [
                          Text(
                            "Lana hamed\n1234567890",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.w400),
                          ),
                        ]),
                        Expanded(
                            child: Divider(thickness: 0.5, color: Colors.grey)),
                        SizedBox(height: 14.0),
                        Row(
                          children: [
                            Text(
                              "Departure",
                              style: TextStyle(
                                color: Color(0XFF2680FF),
                                fontSize: 18,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                              "Fri 5 Apr 2023\n12:05-13:14(1h 12min)\nBeirut-Amman",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w200),
                            ),
                          ],
                        ),
                        Expanded(
                            child: Divider(thickness: 0.5, color: Colors.grey)),
                        SizedBox(height: 14.0),
                        Row(
                          children: [
                            Text(
                              "Return",
                              style: TextStyle(
                                color: Color(0XFF2680FF),
                                fontSize: 18,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                              "Fri 18 May 2023\n10:14-11:14(1h )\nAmman-Beirut",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w200),
                            ),
                          ],
                        ),
                        Expanded(
                            child: Divider(thickness: 0.5, color: Colors.grey)),
                        SizedBox(height: 20.0),
                        Row(
                          children: <Widget>[
                            Text(
                              'Price',
                              style: TextStyle(
                                color: Colors.red,
                                fontSize: 18,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            Text(
                              '233\$',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w100),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 50),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 49),
                width: 400,
                height: 45,
                decoration: BoxDecoration(
                  color: Colors.blue.shade600,
                  borderRadius: BorderRadius.circular(150),
                ),
                child: MaterialButton(
                  onPressed: () {},
                  child: const Text(
                    "pyment",
                    textAlign: TextAlign.right,
                    style: TextStyle(
                        letterSpacing: 0.4,
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.w500),
                  ),
                ),
              )
            ])));
  }
}
