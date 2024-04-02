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
  Future<void> _selectStartDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: startDate ?? DateTime.now(),
      firstDate: DateTime.now(),
      lastDate: DateTime(2025),
    );
    if (picked != null) {
      setState(() {
        startDate = picked;
      });
    }
  }

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
                child: Column(
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
                        padding: EdgeInsets.only(bottom: 0),
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
                        padding: EdgeInsets.only(bottom: 0),
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
                              onPressed: () async {
                                DateTime? picked = await showDatePicker(
                                  context: context,
                                  initialDate: startDate ?? DateTime.now(),
                                  firstDate: DateTime.now(),
                                  lastDate: DateTime(2025),
                                );
                                if (picked != null) {
                                  setState(() {
                                    startDate = picked;
                                  });
                                }
                              },
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
                                      padding: const EdgeInsets.only(left: 44),
                                      child: Row(
                                        children: [
                                          const SizedBox(
                                            height: 8,
                                          ),
                                          Text(
                                            'Selected Date : ${startDate}',
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
                            padding: EdgeInsets.only(bottom: 0),
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
                    ])),
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
                    padding: EdgeInsets.only(bottom: 0),
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
                    padding: EdgeInsets.only(bottom: 0),
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
                      MaterialButton(
                        onPressed: () {},
                        child: Container(
                            padding: const EdgeInsets.only(left: 3, bottom: 10),
                            color: Colors.transparent,
                            child: Column(children: [
                              Row(
                                children: [
                                  Container(
                                    padding:
                                        const EdgeInsets.only(right: 2, top: 4),
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
                                padding: const EdgeInsets.only(left: 44),
                                child: Row(
                                  children: [
                                    const SizedBox(
                                      height: 8,
                                    ),
                                    //   Text(
                                    //         'Selected Date : ${selectedDate.day}/${selectedDate.month}/${selectedDate.year}',
                                    //       style: Styles.headLineStyle17,
                                    //      textAlign: TextAlign.left,
                                    //   )
                                  ],
                                ),
                              )
                            ])),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(bottom: 0),
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
                          MaterialButton(
                            onPressed: () {},
                            child: Container(
                                padding:
                                    const EdgeInsets.only(left: 3, bottom: 10),
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
                                        "Return Date",
                                        style: Styles.headLineStyle7,
                                      ),
                                    ],
                                  ),
                                  Container(
                                    padding: const EdgeInsets.only(left: 44),
                                    child: Row(
                                      children: [
                                        const SizedBox(
                                          height: 8,
                                        ),
                                        Text(
                                          'Selected Date : ',
                                          style: Styles.headLineStyle17,
                                          textAlign: TextAlign.left,
                                        )
                                      ],
                                    ),
                                  )
                                ])),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(bottom: 0),
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
                    ],
                  ),
                ],
              ),
            ),
          ]),
        ));
  }
}
