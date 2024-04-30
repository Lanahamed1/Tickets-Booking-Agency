import 'package:app/view/navigationbar/Mainpage.dart';
import 'package:app/view/screen/appstyle.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Start extends StatefulWidget {
  const Start({super.key});

  @override
  State<Start> createState() => _StartState();
}

class _StartState extends State<Start> {
  List<Color> cc = [
    const Color.fromARGB(255, 6, 139, 255),
    const Color.fromARGB(255, 66, 192, 255),
  ];
  // double screenhight = MediaQuery.of(context).size.height;
  // double screenwidth= MediaQuery.of(context).size.width;
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
                    style: Styles.headLineStyle18),
                const SizedBox(
                  height: 280,
                ),
                MaterialButton(
                  onPressed: () {
                    Get.to(const Mainpage());
                  },
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
