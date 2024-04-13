import 'package:flutter/material.dart';
import 'package:app/appstyle.dart';

class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0XFFF4F7FA),
        body: SafeArea(
            child: ListView(children: [
          Column(children: [
            Stack(
              children: [
                Container(
                  clipBehavior: Clip.antiAlias,
                  decoration: const BoxDecoration(
                      borderRadius:
                          BorderRadius.vertical(bottom: Radius.circular(80))),
                  child: Image.asset(
                    "images/christopher-jolly-HQ8G4WAQfsg-unsplash.jpg",
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(10),
                  margin: const EdgeInsets.only(left: 20, top: 40),
                  child: Text(
                    "ViaWise",
                    style: Styles.headLineStyle14,
                  ),
                ),
                Container(
                    //color: Colors.cyan,
                    margin: const EdgeInsets.only(top: 300),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                              alignment: Alignment.center,
                              padding: const EdgeInsets.all(10),
                              width: 120,
                              height: 90,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  shape: BoxShape.rectangle,
                                  color:
                                      const Color.fromARGB(255, 217, 242, 255)),
                              child: Column(
                                children: [
                                  MaterialButton(
                                    //color: Color.fromARGB(255, 131, 148, 173),
                                    height: 50,
                                    onPressed: () {},
                                    child: const Icon(
                                      Icons.flight_takeoff_outlined,
                                      color: Color.fromARGB(255, 2, 146, 219),
                                      size: 35,
                                    ),
                                  ),
                                  Text("Flights",
                                      textAlign: TextAlign.center,
                                      style: Styles.headLineStyle13),
                                ],
                              )),
                          Container(
                              alignment: Alignment.center,
                              padding: const EdgeInsets.all(10),
                              width: 120,
                              height: 90,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  shape: BoxShape.rectangle,
                                  color:
                                      const Color.fromARGB(255, 217, 242, 255)),
                              child: Column(
                                children: [
                                  MaterialButton(
                                    //color: Color.fromARGB(255, 131, 148, 173),
                                    height: 50,
                                    onPressed: () {},
                                    child: const Icon(
                                      Icons.bed,
                                      color: Color.fromARGB(255, 2, 146, 219),
                                      size: 35,
                                    ),
                                  ),
                                  Text("Hotel",
                                      textAlign: TextAlign.center,
                                      style: Styles.headLineStyle13),
                                ],
                              )),
                        ]))
              ],
            ),
            const SizedBox(height: (50)),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              MaterialButton(
                onPressed: () {},
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 25),
                      child: Text(
                        "Explore",
                        style: Styles.headLineStyle2,
                      ),
                    ),
                    const SizedBox(
                      width: 295,
                    ),
                    const Icon(Icons.arrow_forward_ios, color: Colors.black),
                  ],
                ),
              ),
              const SizedBox(height: (8)),
              const SingleChildScrollView(
                padding: EdgeInsets.only(left: 16),
                scrollDirection: Axis.horizontal,
                child: Row(children: []),
              ),
              const SizedBox(height: (15)),
              SingleChildScrollView(
                padding: const EdgeInsets.only(left: 16),
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(),
                    const SizedBox(height: (20)),
                  ],
                ),
              ),
            ])
          ])
        ])));
  }
}
