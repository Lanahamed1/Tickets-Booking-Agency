import 'package:flutter/material.dart';
import 'package:flutter_tickets_booking_agency/Auth.dart';
import 'package:flutter_tickets_booking_agency/Booking/flight_card.dart';
import 'package:flutter_tickets_booking_agency/Booking/Flights.dart';
import 'package:flutter_tickets_booking_agency/appstyle.dart';
import 'package:flutter_tickets_booking_agency/navigationbar/Mainpage.dart';

class Mainesearch extends StatefulWidget {
  const Mainesearch({super.key});

  @override
  State<Mainesearch> createState() => _Mainesearch();
}

void toflights(BuildContext ctx) {
  Navigator.of(ctx).push(MaterialPageRoute(builder: (_) {
    return Flights();
  }));
}

class _Mainesearch extends State<Mainesearch> {
  DateTime? startDate;
  DateTime? endDate;

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
      //initialDate: endDate ?? DateTime.now(),
      firstDate: startDate ?? DateTime.now(),
      lastDate: DateTime(2025),
    );
    if (pickedd != null) {
      setState(() {
        endDate = pickedd;
      });
    }
  }

  String? selectdeparture = "";
  final List<String> Dep_city = [
    '',
    'Damascus                   (DAM)',
    'latakia                      (LTK)',
    'Aleppo                     (ALP)',
    'Baghdad/ Iraq                    (BGW)',
    'Basrah                     (BRS)',
    'Beirut                     (BEY)',
  ];

  String? selectdestination = "";
  final List<String> Des_city = [
    '',
    'Damascus                   (DAM)',
    'latakia                      (LTK)',
    'Aleppo                     (ALP)',
    'Baghdad/ Iraq                    (BGW)',
    'Basrah                     (BRS)',
    'Beirut                     (BEY)',
  ];

  String? selecttype = "Economy";
  final List<String> seatclasstype = [
    'Economy',
    'First Class',
    'Business Class',
  ];

  String? selectitem = '1';
  final List<String> passengerNumbers = [
    '1',
    '2',
    '3',
    '4',
    '5',
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
                  // IconButton(
                  //   alignment: Alignment.centerLeft,
                  //   padding: const EdgeInsets.only(right: 10),
                  //   onPressed: () {},
                  // //  icon: const Icon(Icons.arrow_back),
                  //   color: Colors.black,
                  // ),
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
                child: ListView(children: [
                  Column(mainAxisAlignment: MainAxisAlignment.start, children: [
                    Column(
                      children: [
                        Container(
                            child: Column(children: [
                          Row(
                            children: [
                              Container(
                                padding: const EdgeInsets.only(
                                    right: 2, top: 4, left: 10),
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
                            padding: const EdgeInsets.only(left: 44),
                            child: Row(
                              children: [
                                DropdownButton(
                                    padding: const EdgeInsets.only(left: 20),
                                    focusColor: Colors.white,
                                    alignment: AlignmentDirectional.center,
                                    dropdownColor: const Color(0XFFF4F7FA),
                                    elevation: 0,
                                    value: selectdeparture,
                                    items: Dep_city.map((item) =>
                                        DropdownMenuItem(
                                            value: item,
                                            child: Text(item))).toList(),
                                    onChanged: (item) =>
                                        setState(() => selectdeparture = item)),
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
                                    right: 2, top: 4, left: 10),
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
                            padding: const EdgeInsets.only(left: 44),
                            child: Row(
                              children: [
                                DropdownButton(
                                    padding: const EdgeInsets.only(left: 20),
                                    focusColor: Colors.white,
                                    alignment: AlignmentDirectional.center,
                                    dropdownColor: const Color(0XFFF4F7FA),
                                    elevation: 0,
                                    value: selectdestination,
                                    items: Des_city.map((item) =>
                                        DropdownMenuItem(
                                            value: item,
                                            child: Text(item))).toList(),
                                    onChanged: (item) => setState(
                                        () => selectdestination = item)),
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
                          child: MaterialButton(
                            onPressed: () => _selectStartDate(context),
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
                                          'Select Date:  $startDate',
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
                                    right: 2, top: 4, left: 10),
                                child: const Icon(
                                  Icons.people_outline,
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
                                DropdownButton(
                                    padding: const EdgeInsets.only(left: 20),
                                    focusColor: Colors.white,
                                    alignment: AlignmentDirectional.center,
                                    dropdownColor: const Color(0XFFF4F7FA),
                                    elevation: 0,
                                    value: selectitem,
                                    items: passengerNumbers
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
                                    right: 2, top: 4, left: 10),
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
                                DropdownButton(
                                    padding: const EdgeInsets.only(left: 10),
                                    focusColor: Colors.white,
                                    alignment: AlignmentDirectional.center,
                                    dropdownColor: const Color(0XFFF4F7FA),
                                    elevation: 0,
                                    value: selecttype,
                                    items: seatclasstype
                                        .map((item) => DropdownMenuItem(
                                            value: item, child: Text(item)))
                                        .toList(),
                                    onChanged: (item) =>
                                        setState(() => selecttype = item)),
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
                                    right: 2, top: 4, left: 10),
                                child: const Icon(
                                  Icons.credit_card_outlined,
                                  color: Colors.grey,
                                ),
                              ),
                              const SizedBox(width: 13),
                              Text(
                                "Payment Types",
                                style: Styles.headLineStyle7,
                              ),
                            ],
                          ),
                          Container(
                            padding: const EdgeInsets.only(left: 44),
                            child: Row(
                              children: [
                                // Image.asset(
                                //   'images/paypal.jpg',
                                //   height: 40,
                                //   width: 40,
                                // ),
                                Text(
                                  "PayPal",
                                  style: Styles.headLineStyle13,
                                )
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
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                        width: 320,
                        height: 45,
                        decoration: BoxDecoration(
                          color: const Color(0xFF1765FC),
                          borderRadius: BorderRadius.circular(150),
                        ),
                        child: MaterialButton(
                            onPressed: () async {
                              var flights = await Flight.fetchFlight(
                                  "Damascus", "Damascus");

                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const Flights(),
                                  settings: RouteSettings(arguments: flights),
                                ),
                              );

                              toflights(context);
                            },
                            child: Text("Search Flights",
                                textAlign: TextAlign.right,
                                style: Styles.headLineStyle9))),
                  ])
                ])),
            ListView(children: [
              Container(
                  child: Column(
                children: [
                  Column(
                    children: [
                      Container(
                          child: Column(children: [
                        Row(
                          children: [
                            Container(
                              padding: const EdgeInsets.only(
                                  right: 2, top: 4, left: 10),
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
                          padding: const EdgeInsets.only(left: 44),
                          child: Row(
                            children: [
                              DropdownButton(
                                  padding: const EdgeInsets.only(left: 20),
                                  focusColor: Colors.white,
                                  alignment: AlignmentDirectional.center,
                                  dropdownColor: const Color(0XFFF4F7FA),
                                  elevation: 0,
                                  value: selectdeparture,
                                  items: Dep_city.map((item) =>
                                      DropdownMenuItem(
                                          value: item,
                                          child: Text(item))).toList(),
                                  onChanged: (item) =>
                                      setState(() => selectdeparture = item)),
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
                                  right: 2, top: 4, left: 10),
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
                          padding: const EdgeInsets.only(left: 44),
                          child: Row(
                            children: [
                              DropdownButton(
                                  padding: const EdgeInsets.only(left: 20),
                                  focusColor: Colors.white,
                                  alignment: AlignmentDirectional.center,
                                  dropdownColor: const Color(0XFFF4F7FA),
                                  elevation: 0,
                                  value: selectdestination,
                                  items: Des_city.map((item) =>
                                      DropdownMenuItem(
                                          value: item,
                                          child: Text(item))).toList(),
                                  onChanged: (item) =>
                                      setState(() => selectdestination = item)),
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
                            padding: const EdgeInsets.only(left: 20),
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
                      const SizedBox(
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
                          Text('Select Date: $endDate'),
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
                              padding: const EdgeInsets.only(
                                  right: 2, top: 4, left: 10),
                              child: const Icon(
                                Icons.people_outline,
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
                              DropdownButton(
                                  focusColor: Colors.white,
                                  alignment: AlignmentDirectional.center,
                                  dropdownColor: const Color(0XFFF4F7FA),
                                  elevation: 0,
                                  value: selectitem,
                                  items: passengerNumbers
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
                                  right: 2, top: 4, left: 10),
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
                              DropdownButton(
                                  focusColor: Colors.white,
                                  alignment: AlignmentDirectional.center,
                                  dropdownColor: const Color(0XFFF4F7FA),
                                  elevation: 0,
                                  value: selecttype,
                                  items: seatclasstype
                                      .map((item) => DropdownMenuItem(
                                          value: item, child: Text(item)))
                                      .toList(),
                                  onChanged: (item) =>
                                      setState(() => selecttype = item)),
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
                                  right: 2, top: 4, left: 10),
                              child: const Icon(
                                Icons.credit_card_outlined,
                                color: Colors.grey,
                              ),
                            ),
                            const SizedBox(width: 13),
                            Text(
                              "Payment Types",
                              style: Styles.headLineStyle7,
                            ),
                          ],
                        ),
                        Container(
                          padding: const EdgeInsets.only(left: 44),
                          child: Row(
                            children: [
                              // Image.asset(
                              //   'images/paypal.jpg',
                              //   height: 40,
                              //   width: 40,
                              // ),
                              Text(
                                "PayPal",
                                style: Styles.headLineStyle13,
                              )
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
                  const SizedBox(
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
                          onPressed: () {
                            () async {
                              var flights = await Flight.fetchFlight(
                                  'Damascus', 'Damascus');
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const Flights(),
                                  settings: RouteSettings(arguments: flights),
                                ),
                              );
                            };

                            toflights(context);
                          },
                          child: Text("Search Flights",
                              textAlign: TextAlign.right,
                              style: Styles.headLineStyle9))),
                ],
              ))
            ])
          ]),
        ));
  }
}
