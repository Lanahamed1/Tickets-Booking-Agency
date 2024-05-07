import 'package:flutter/material.dart';
import 'package:flutter_tickets_booking_agency/Flight_search/mainsearch_controller.dart';
import 'package:flutter_tickets_booking_agency/appstyle.dart';
import 'package:get/get.dart';

class FlightSearch extends StatelessWidget {
  final FlightSearchController controller =
      Get.put(FlightSearchController(), permanent: true);

  FlightSearch({super.key});

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
              color: Colors.grey[800],
            ),
            labelColor: Colors.black,
            unselectedLabelStyle: TextStyle(
              fontSize: 15,
              letterSpacing: 0.5,
              fontWeight: FontWeight.w400,
              color: Colors.grey[600],
            ),
            tabs: const [
              Tab(
                text: "ONE-WAY",
              ),
              Tab(
                text: "ROUND-TRIP",
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            _buildOneWayTabView(context),
            _buildRoundTripTabView(context),
          ],
        ),
      ),
    );
  }

  Widget _buildOneWayTabView(BuildContext context) {
    return Container(
      color: Colors.transparent,
      child: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          _buildDepartureCityDropdown(),
          _buildDestinationCityDropdown(),
          _buildStartDateSelection(context),
          _buildpaymentype(),
          _buildSearchFlightsButton()
        ],
      ),
    );
  }

  Widget _buildDepartureCityDropdown() {
    return Column(
      children: [
        Column(children: [
          Row(
            children: [
              Container(
                padding: const EdgeInsets.only(right: 2, top: 4, left: 10),
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
                DropdownButton<String>(
                  value: controller.selectDeparture!,
                  onChanged: (value) {
                    controller.selectDeparture = value;
                  },
                  items: controller.depCity
                      .map((city) => DropdownMenuItem(
                            value: city,
                            child: Text(city),
                          ))
                      .toList(),
                ),
                const SizedBox(
                  height: 8,
                ),
              ],
            ),
          ),
          const Row(mainAxisSize: MainAxisSize.min, children: [
            Flexible(
                fit: FlexFit.loose,
                child: Divider(
                    indent: 40,
                    endIndent: 20,
                    thickness: 0.3,
                    color: Colors.grey))
          ]),
        ]),
      ],
    );
  }

  Widget _buildDestinationCityDropdown() {
    return Column(
      children: [
        Column(children: [
          Row(
            children: [
              Container(
                padding: const EdgeInsets.only(right: 2, top: 4, left: 10),
                child: const Icon(
                  Icons.flight_takeoff_outlined,
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
            padding: const EdgeInsets.only(left: 44),
            child: Row(
              children: [
                DropdownButton<String>(
                  value: controller.selectDestination,
                  onChanged: (value) {
                    controller.setDestination(value);
                  },
                  items: controller.descCity
                      .map((city) => DropdownMenuItem(
                            value: city,
                            child: Text(city),
                          ))
                      .toList(),
                ),
                const SizedBox(
                  height: 8,
                ),
              ],
            ),
          ),
          const Row(mainAxisSize: MainAxisSize.min, children: [
            Flexible(
                fit: FlexFit.loose,
                child: Divider(
                    indent: 40,
                    endIndent: 20,
                    thickness: 0.3,
                    color: Colors.grey))
          ]),
        ]),
      ],
    );
  }

  Widget _buildStartDateSelection(BuildContext context) {
    return Row(children: [
      Column(children: [
        MaterialButton(
          onPressed: () => controller.selectStartDate(context),
          child: Container(
              padding: const EdgeInsets.only(bottom: 10),
              color: Colors.transparent,
              child: Column(children: [
                Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.only(right: 2, top: 4),
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
            'Select Date: ${controller.startDate.toString()}',
            textAlign: TextAlign.center,
          ),
        ),
        const Row(mainAxisSize: MainAxisSize.min, children: [
          Flexible(
              fit: FlexFit.loose,
              child: Divider(
                  indent: 40,
                  endIndent: 20,
                  thickness: 0.3,
                  color: Colors.grey))
        ]),
      ])
    ]);
  }

  Widget _buildpaymentype() {
    return Column(
      children: [
        const Row(mainAxisSize: MainAxisSize.min, children: [
          Flexible(
              fit: FlexFit.loose,
              child: Divider(
                  indent: 40,
                  endIndent: 20,
                  thickness: 0.3,
                  color: Colors.grey))
        ]),
        Column(children: [
          Row(
            children: [
              Container(
                padding: const EdgeInsets.only(right: 2, top: 4, left: 10),
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
                Image.asset(
                  'images/paypal.jpg',
                  height: 40,
                  width: 40,
                ),
                Text(
                  "PayPal",
                  style: Styles.headLineStyle13,
                )
              ],
            ),
          ),
          const Row(mainAxisSize: MainAxisSize.min, children: [
            Flexible(
                fit: FlexFit.loose,
                child: Divider(
                    indent: 40,
                    endIndent: 20,
                    thickness: 0.3,
                    color: Colors.grey))
          ]),
        ]),
      ],
    );
  }

  Widget _buildSearchFlightsButton() {
    return Column(
      children: [
        SizedBox(
          height: 24,
        ),
        Container(
            width: 300,
            height: 45,
            decoration: BoxDecoration(
              color: const Color(0xFF1765FC),
              borderRadius: BorderRadius.circular(150),
            ),
            child: MaterialButton(
                onPressed: () {},
                child: Text("Search Flights",
                    textAlign: TextAlign.right, style: Styles.headLineStyle9))),
      ],
    );
  }

  Widget _buildRoundTripTabView(BuildContext context) {
    return Container(
      color: Colors.transparent,
      child: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          _buildDepartureCityDropdown(),
          _buildDestinationCityDropdown(),
          _buildStartDateSelection(context),
          _buildEndDateSelection(context),
          _buildpaymentype(),
          _buildSearchFlightsButton(),
        ],
      ),
    );
  }

  Widget _buildEndDateSelection(BuildContext context) {
    return Row(children: [
      Column(children: [
        MaterialButton(
          onPressed: () => controller.selectEndDate(context),
          child: Container(
              padding: const EdgeInsets.only(bottom: 10),
              color: Colors.transparent,
              child: Column(children: [
                Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.only(right: 2, top: 4, left: 0),
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
              ])),
        ),
        Container(
          padding: const EdgeInsets.only(left: 20),
          child: Text(
            'Select Date: ${controller.endDate.toString()}',
            textAlign: TextAlign.center,
          ),
        ),
        const SizedBox(
          height: 20,
        ),
      ])
    ]);
  }
}
