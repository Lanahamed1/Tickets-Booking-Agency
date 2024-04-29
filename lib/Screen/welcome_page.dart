import 'package:flutter/material.dart';
import 'package:flutter_tickets_booking_agency/appstyle.dart';

class Welcome extends StatelessWidget {
  List<Color> cc = [
    const Color.fromARGB(255, 60, 160, 209),
    const Color.fromARGB(255, 105, 202, 250),
  ];

  // double screenhight = MediaQuery.of(context).size.height;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            width: 900,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: cc,
                  begin: Alignment.bottomLeft,
                  end: Alignment.topRight),
            ),
            child: Column(
              children: [
                const SizedBox(
                  height: 280,
                ),
                //Container(
                //   clipBehavior: Clip.antiAliasWithSaveLayer,
                //decoration: BoxDecoration(
                //borderRadius: BorderRadius.circular(200),
                //),
                // child: const Image(
                // alignment: Alignment.topCenter,
                // image: AssetImage(
                // "images/viawise2.jpg",
                //),
                //height: 250,
                //width: 250,
                //fit: BoxFit.cover,
                // )
                //),

                Text(
                  textAlign: TextAlign.center,
                  "ViaWise",
                  // style: Styles.headLineStyle18
                ),
                const SizedBox(
                  height: 280,
                ),
                MaterialButton(
                  onPressed: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Continue", style: Styles.headLineStyle9),
                      const SizedBox(
                        width: 8,
                      ),
                      const Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.white,
                        size: 15,
                      ),
                    ],
                  ),
                )
              ],
            )));
  }
}
