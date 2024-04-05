import 'package:app/appstyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

class Start extends StatefulWidget {
  Start({Key? key}) : super(key: key);

  @override
  State<Start> createState() => _StartState();
}

class _StartState extends State<Start> {
  List<Color> cc = [
    Color.fromARGB(255, 80, 242, 172),
    Color.fromARGB(255, 60, 160, 209),
    Color.fromARGB(255, 89, 182, 248),
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
              colors: cc, begin: Alignment.bottomLeft, end: Alignment.topRight),
        ),
        child: Column(
          children: [
            SizedBox(
              height: 65,
            ),
            //  Text(
            ////   textAlign: TextAlign.center,
            //" Welcome ",
            //style: Styles.headLineStyle14,
            //),
            const SizedBox(
              height: 70,
            ),
            Container(
                clipBehavior: Clip.antiAliasWithSaveLayer,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(200),
                ),
                child: Image(
                  alignment: Alignment.topCenter,
                  image: AssetImage(
                    "images/viawise2.jpg",
                  ),
                  height: 250,
                  width: 250,
                  fit: BoxFit.cover,
                )),
            const SizedBox(
              height: 30,
            ),
            TextButton(
              onPressed: () {},
              child: Text(
                  textAlign: TextAlign.center,
                  "Welcome to ViaWise\n  Online Agency",
                  style: Styles.headLineStyle18),
            ),
          ],
        ),
      ),
    );
  }
}
