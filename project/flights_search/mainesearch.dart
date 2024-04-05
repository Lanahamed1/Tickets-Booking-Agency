import 'package:app/appstyle.dart';
import 'package:flutter/material.dart';

class Mainesearch extends StatefulWidget {
  const Mainesearch({super.key});
  @override
  State<Mainesearch> createState() => _Mainesearch();
}

class _Mainesearch extends State<Mainesearch> {
  DateTime? startDate;
  DateTime? endDate;
  DateTime? oneDate;

  Future<void> _selectOneDate(BuildContext context) async {
    final DateTime? choose = await showDatePicker(
      context: context,
      initialDate: oneDate ?? DateTime.now(),
      firstDate: DateTime.now(),
      lastDate: DateTime(
        2025,
      ),
    );
    if (choose == null) {
      setState(() {
        print("select date");
      });
    } else {
      setState(() {
        oneDate = choose;
      });
    }
  }

  Future<void> _selectStartDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: startDate ?? DateTime.now(),
      firstDate: DateTime.now(),
      lastDate: DateTime(
        2025,
      ),
    );
    if (picked != null) {
      setState(() {
        startDate = picked;
      });
    }
  }

  Future<void> _selectEndDate(BuildContext context) async {
    final DateTime? pickedd = await showDatePicker(
      context: context,
      initialDate: endDate ?? DateTime.now(),
      firstDate: startDate ?? DateTime.now(),
      lastDate: DateTime(2025),
    );
    if (pickedd != null) {
      setState(() {
        endDate = pickedd;
      });
    }
  }

  final List<String> seatclasstype = [
    'Economy',
    'Premium Economy',
    'First Class',
    'Business Class',
  ];
  final List<String> passengerNumbers = [
    '1',
    '2',
    '3',
    '4',
    '5',
    '6',
    '7',
    '8',
    '9'
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
              elevation: 0,
              backgroundColor: Colors.transparent,
              title: Row(
                children: [
                  IconButton(
                    alignment: Alignment.centerLeft,
                    padding: const EdgeInsets.only(right: 10),
                    onPressed: () {},
                    icon: const Icon(Icons.arrow_back),
                    color: Colors.black,
                  ),
                  Text("Flights Search", style: Styles.headLineStyle15),
                ],
              ),
              bottom: TabBar(
                  indicatorSize: TabBarIndicatorSize.label,
                  dividerHeight: 0.7,
                  indicatorColor: const Color.fromARGB(255, 2, 146, 219),
                  padding: const EdgeInsets.only(bottom: 10),
                  indicatorWeight: 4,
                  labelStyle: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w700,
                      color: Colors.grey[800]),
                  labelColor: Colors.black,
                  unselectedLabelStyle: TextStyle(
                      fontSize: 15,
                      letterSpacing: 0.5,
                      fontWeight: FontWeight.w400,
                      color: Colors.grey[600]),
                  tabs: const [
                    Tab(
                      text: "ONE-WAY",
                    ),
                    Tab(
                      text: "ROUND-TRIP",
                    ),
                  ])),
          body: TabBarView(children: [
            Container(
                color: Colors.transparent,
                child: ListView(
                  children: [
                    Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          GestureDetector(
                            onTap: () {
                              // print("click");
                            },
                            child: Container(
                                padding:
                                    const EdgeInsets.only(left: 10, bottom: 10),
                                color: Colors.transparent,
                                child: Column(children: [
                                  Row(
                                    children: [
                                      Container(
                                        padding: const EdgeInsets.only(
                                            right: 2, top: 4),
                                        child: const Icon(
                                          Icons.flight_takeoff_outlined,
                                          color: Colors.grey,
                                        ),
                                      ),
                                      const SizedBox(width: 13),
                                      Text(
                                        "Departure",
                                        style: Styles.headLineStyle7,
                                      ),
                                    ],
                                  ),
                                  Container(
                                    padding: const EdgeInsets.only(left: 38),
                                    child: Row(
                                      children: [
                                        const SizedBox(
                                          height: 8,
                                        ),
                                        Text(
                                          "Choose Departure",
                                          style: Styles.headLineStyle17,
                                        ),
                                      ],
                                    ),
                                  )
                                ])),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(right: 20),
                            child: Row(
                              children: [
                                Expanded(
                                    child: Divider(
                                        indent: 50,
                                        thickness: 0.3,
                                        color: Colors.grey)),
                              ],
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              // print("click");
                            },
                            child: Container(
                                padding:
                                    const EdgeInsets.only(left: 10, bottom: 10),
                                color: Colors.transparent,
                                child: Column(children: [
                                  Row(
                                    children: [
                                      Container(
                                        padding: const EdgeInsets.only(
                                            right: 2, top: 4),
                                        child: const Icon(
                                          Icons.flight_land_outlined,
                                          color: Colors.grey,
                                        ),
                                      ),
                                      const SizedBox(width: 13),
                                      Text(
                                        "Destination",
                                        style: Styles.headLineStyle7,
                                      ),
                                    ],
                                  ),
                                  Container(
                                    padding: const EdgeInsets.only(left: 38),
                                    child: Row(
                                      children: [
                                        const SizedBox(
                                          height: 8,
                                        ),
                                        Text(
                                          "Choose Arrival",
                                          style: Styles.headLineStyle17,
                                        ),
                                      ],
                                    ),
                                  )
                                ])),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(right: 20),
                            child: Row(
                              children: [
                                Expanded(
                                    child: Divider(
                                        indent: 50,
                                        thickness: 0.3,
                                        color: Colors.grey)),
                              ],
                            ),
                          ),
                          Column(
                            children: [
                              Container(
                                child: MaterialButton(
                                  onPressed: () => _selectOneDate(context),
                                  child: Container(
                                      padding: const EdgeInsets.only(
                                          left: 3, bottom: 10),
                                      color: Colors.transparent,
                                      child: Column(children: [
                                        Row(
                                          children: [
                                            Container(
                                              padding: const EdgeInsets.only(
                                                  right: 2, top: 4),
                                              child: const Icon(
                                                Icons.date_range_outlined,
                                                color: Colors.grey,
                                              ),
                                            ),
                                            const SizedBox(width: 13),
                                            Text(
                                              "Departure Date",
                                              style: Styles.headLineStyle7,
                                            ),
                                          ],
                                        ),
                                        Container(
                                          padding:
                                              const EdgeInsets.only(left: 44),
                                          child: Row(
                                            children: [
                                              const SizedBox(
                                                height: 8,
                                              ),
                                              Text(
                                                ' $oneDate',
                                                style: Styles.headLineStyle17,
                                                textAlign: TextAlign.left,
                                              )
                                            ],
                                          ),
                                        )
                                      ])),
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.only(right: 20),
                                child: Row(
                                  children: [
                                    Expanded(
                                        child: Divider(
                                            indent: 50,
                                            thickness: 0.3,
                                            color: Colors.grey)),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Container(
                                  child: Column(children: [
                                Row(
                                  children: [
                                    Container(
                                      padding: const EdgeInsets.only(
                                          right: 2, top: 4),
                                      child: const Icon(
                                        Icons.flight_class_outlined,
                                        color: Colors.grey,
                                      ),
                                    ),
                                    const SizedBox(width: 13),
                                    Text(
                                      "Cabin Class",
                                      style: Styles.headLineStyle7,
                                    ),
                                  ],
                                ),
                                Container(
                                  padding: const EdgeInsets.only(left: 44),
                                  child: Row(
                                    children: [
                                      DropdownButton<String>(
                                        value: seatclasstype[0],
                                        items:
                                            seatclasstype.map((String value) {
                                          return DropdownMenuItem<String>(
                                            value: value,
                                            child: Text(value),
                                          );
                                        }).toList(),
                                        onChanged: (String? newValue) {
                                          setState(() {
                                            print('Selected: $newValue');
                                          });
                                        },
                                      ),
                                      const SizedBox(
                                        height: 8,
                                      ),
                                    ],
                                  ),
                                )
                              ])),
                              const Padding(
                                padding: EdgeInsets.only(right: 20),
                                child: Row(
                                  children: [
                                    Expanded(
                                        child: Divider(
                                            indent: 50,
                                            thickness: 0.3,
                                            color: Colors.grey)),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Container(
                                  child: Column(children: [
                                Row(
                                  children: [
                                    Container(
                                      padding: const EdgeInsets.only(
                                          right: 2, top: 4),
                                      child: const Icon(
                                        Icons.person_sharp,
                                        color: Colors.grey,
                                      ),
                                    ),
                                    const SizedBox(width: 13),
                                    Text(
                                      "Passengers",
                                      style: Styles.headLineStyle7,
                                    ),
                                  ],
                                ),
                                Container(
                                  padding: const EdgeInsets.only(left: 44),
                                  child: Row(
                                    children: [
                                      DropdownButton<String>(
                                        value: passengerNumbers[0],
                                        items: passengerNumbers
                                            .map((String value) {
                                          return DropdownMenuItem<String>(
                                            value: value,
                                            child: Text(value),
                                          );
                                        }).toList(),
                                        onChanged: (String? newValue) {
                                          setState(() {
                                            print('Selected: $newValue');
                                          });
                                        },
                                      ),
                                      const SizedBox(
                                        height: 8,
                                      ),
                                    ],
                                  ),
                                )
                              ])),
                              const Padding(
                                padding: EdgeInsets.only(right: 20),
                                child: Row(
                                  children: [
                                    Expanded(
                                        child: Divider(
                                            indent: 50,
                                            thickness: 0.3,
                                            color: Colors.grey)),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Container(
                              width: 350,
                              height: 45,
                              decoration: BoxDecoration(
                                color: const Color(0xFF1765FC),
                                borderRadius: BorderRadius.circular(150),
                              ),
                              child: MaterialButton(
                                  onPressed: () {},
                                  child: Text("Flights Search",
                                      textAlign: TextAlign.right,
                                      style: Styles.headLineStyle9))),
                        ]),
                  ],
                )),
            Container(
              child: Column(
                children: [
                  GestureDetector(
                    onTap: () {
                      // print("click");
                    },
                    child: Container(
                        padding: const EdgeInsets.only(left: 10, bottom: 10),
                        color: Colors.transparent,
                        child: Column(children: [
                          Row(
                            children: [
                              Container(
                                padding:
                                    const EdgeInsets.only(right: 2, top: 4),
                                child: const Icon(
                                  Icons.flight_takeoff_outlined,
                                  color: Colors.grey,
                                ),
                              ),
                              const SizedBox(width: 13),
                              Text(
                                "Departure",
                                style: Styles.headLineStyle7,
                              ),
                            ],
                          ),
                          Container(
                            padding: const EdgeInsets.only(left: 38),
                            child: Row(
                              children: [
                                const SizedBox(
                                  height: 8,
                                ),
                                Text(
                                  "Choose Departure",
                                  style: Styles.headLineStyle17,
                                ),
                              ],
                            ),
                          )
                        ])),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(right: 20),
                    child: Row(
                      children: [
                        Expanded(
                            child: Divider(
                                indent: 50,
                                thickness: 0.3,
                                color: Colors.grey)),
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      // print("click");
                    },
                    child: Container(
                        padding: const EdgeInsets.only(left: 10, bottom: 10),
                        color: Colors.transparent,
                        child: Column(children: [
                          Row(
                            children: [
                              Container(
                                padding:
                                    const EdgeInsets.only(right: 2, top: 4),
                                child: const Icon(
                                  Icons.flight_land_outlined,
                                  color: Colors.grey,
                                ),
                              ),
                              const SizedBox(width: 13),
                              Text(
                                "Destination",
                                style: Styles.headLineStyle7,
                              ),
                            ],
                          ),
                          Container(
                            padding: const EdgeInsets.only(left: 38),
                            child: Row(
                              children: [
                                const SizedBox(
                                  height: 8,
                                ),
                                Text(
                                  "Choose Arrival",
                                  style: Styles.headLineStyle17,
                                ),
                              ],
                            ),
                          )
                        ])),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(right: 20),
                    child: Row(
                      children: [
                        Expanded(
                            child: Divider(
                                indent: 50,
                                thickness: 0.3,
                                color: Colors.grey)),
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      Column(
                        children: [
                          MaterialButton(
                            onPressed: () => _selectStartDate(context),
                            child: Container(
                                padding: const EdgeInsets.only(bottom: 10),
                                color: Colors.transparent,
                                child: Column(children: [
                                  Row(
                                    children: [
                                      Container(
                                        padding: const EdgeInsets.only(
                                            right: 2, top: 4),
                                        child: const Icon(
                                          Icons.date_range_outlined,
                                          color: Colors.grey,
                                        ),
                                      ),
                                      const SizedBox(width: 13),
                                      Text(
                                        "Departure Date",
                                        style: Styles.headLineStyle7,
                                      ),
                                    ],
                                  ),
                                ])),
                          ),
                          Container(
                            padding: EdgeInsets.only(left: 20),
                            child: Text(
                              'Select Date: $startDate',
                              textAlign: TextAlign.center,
                            ),
                          ),
                          const Padding(
                              padding: EdgeInsets.symmetric(horizontal: 3.0),
                              child: Expanded(
                                  child: Divider(
                                thickness: 0.5,
                                color: Colors.grey,
                                indent: 20,
                                endIndent: 40,
                              ))),
                        ],
                      ),
                      SizedBox(
                        width: 150,
                        height: 30,
                      ),
                      Column(
                        children: [
                          MaterialButton(
                            onPressed: () => _selectEndDate(context),
                            child: Container(
                                padding: const EdgeInsets.only(bottom: 10),
                                color: Colors.transparent,
                                child: Column(children: [
                                  Row(
                                    children: [
                                      const SizedBox(width: 13),
                                      Text(
                                        "Return Date",
                                        style: Styles.headLineStyle7,
                                      ),
                                    ],
                                  ),
                                  Container(
                                    padding: const EdgeInsets.only(left: 44),
                                    child: const Row(
                                      children: [
                                        SizedBox(
                                          height: 8,
                                        ),
                                      ],
                                    ),
                                  ),
                                ])),
                          ),
                          Text('slecte Date:$endDate'),
                        ],
                      ),
                    ],
                  ),
                  const Padding(
                      padding: EdgeInsets.only(left: 50),
                      child: Row(children: [
                        Expanded(
                            child: Divider(thickness: 0.5, color: Colors.grey)),
                        Padding(
                          padding: EdgeInsets.only(right: 50),
                        ),
                        Expanded(
                            child: Divider(thickness: 0.5, color: Colors.grey)),
                      ])),
                  Column(
                    children: [
                      Container(
                          child: Column(children: [
                        Row(
                          children: [
                            Container(
                              padding: const EdgeInsets.only(right: 2, top: 4),
                              child: const Icon(
                                Icons.flight_class_outlined,
                                color: Colors.grey,
                              ),
                            ),
                            const SizedBox(width: 13),
                            Text(
                              "Cabin Class",
                              style: Styles.headLineStyle7,
                            ),
                          ],
                        ),
                        Container(
                          padding: const EdgeInsets.only(left: 44),
                          child: Row(
                            children: [
                              DropdownButton<String>(
                                value: seatclasstype[0],
                                items: seatclasstype.map((String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(value),
                                  );
                                }).toList(),
                                onChanged: (String? newValue) {
                                  setState(() {
                                    print('Selected: $newValue');
                                  });
                                },
                              ),
                              const SizedBox(
                                height: 8,
                              ),
                            ],
                          ),
                        )
                      ])),
                      const Padding(
                        padding: EdgeInsets.only(right: 20),
                        child: Row(
                          children: [
                            Expanded(
                                child: Divider(
                                    indent: 50,
                                    thickness: 0.3,
                                    color: Colors.grey)),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                          child: Column(children: [
                        Row(
                          children: [
                            Container(
                              padding: const EdgeInsets.only(right: 2, top: 4),
                              child: const Icon(
                                Icons.person_sharp,
                                color: Colors.grey,
                              ),
                            ),
                            const SizedBox(width: 13),
                            Text(
                              "Passengers",
                              style: Styles.headLineStyle7,
                            ),
                          ],
                        ),
                        Container(
                          padding: const EdgeInsets.only(left: 44),
                          child: Row(
                            children: [
                              DropdownButton<String>(
                                value: passengerNumbers[0],
                                items: passengerNumbers.map((String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(value),
                                  );
                                }).toList(),
                                onChanged: (String? newValue) {
                                  setState(() {
                                    print('Selected: $newValue');
                                  });
                                },
                              ),
                              const SizedBox(
                                height: 8,
                              ),
                            ],
                          ),
                        )
                      ])),
                      const Padding(
                        padding: EdgeInsets.only(right: 20),
                        child: Row(
                          children: [
                            Expanded(
                                child: Divider(
                                    indent: 50,
                                    thickness: 0.3,
                                    color: Colors.grey)),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                      width: 350,
                      height: 45,
                      decoration: BoxDecoration(
                        color: const Color(0xFF1765FC),
                        borderRadius: BorderRadius.circular(150),
                      ),
                      child: MaterialButton(
                          onPressed: () {},
                          child: Text("Flights Search",
                              textAlign: TextAlign.right,
                              style: Styles.headLineStyle9))),
                ],
              ),
            ),
          ]),
        ));
  }
}
