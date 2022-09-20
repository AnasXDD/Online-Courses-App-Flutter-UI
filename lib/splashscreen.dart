// import 'dart:js';

import 'package:flutter/material.dart';
import 'package:free_courses_ui/home.dart';
import 'package:free_courses_ui/main.dart';
// import 'package:hackathon/screen2.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ListView(
          children: [
            Container(
                decoration: BoxDecoration(
                    color: Color.fromRGBO(0, 74, 97, 1),
                    border: Border.all(),
                    borderRadius: BorderRadius.all(Radius.circular(50))),
                child: Column(
                  children: [
                    SizedBox(
                      height: 70,
                    ),
                    Image.asset("assets/AiLearn.png"),
                    SizedBox(height: 50),
                    Image.asset("assets/Frame.png"),
                    SizedBox(
                      height: 10,
                    )
                  ],
                )),
            SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.only(left: 24),
              child: Text(
                "Perangkat Lunak \nPengolah Gambar Vektor",
                style: TextStyle(
                    fontStyle: FontStyle.italic,
                    fontFamily: "Inter",
                    fontSize: 26,
                    fontWeight: FontWeight.w700,
                    color: Color.fromRGBO(0, 74, 97, 1)),
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(left: 24),
              child: Text(
                "Jelajahi AiLearn untuk menambah kemampuanmu \ndalam mengoperasikan Adobe Illustrator",
                style: TextStyle(
                    fontStyle: FontStyle.italic,
                    fontFamily: "Inter",
                    fontSize: 14,
                    color: Color.fromRGBO(0, 74, 97, 1)),
              ),
            ),
            SizedBox(height: 50),
            // ElevatedButton(
            //     onPressed: () {
            //       Navigator.push(context,
            //           MaterialPageRoute(builder: (context) => MyApp()));
            //     },
            //     child: Container(
            //         width: 200,
            //         height: 30,
            //         decoration: BoxDecoration(
            //             color: Color.fromRGBO(0, 74, 97, 1),
            //             border: Border.all(),
            //             borderRadius: BorderRadius.all(Radius.circular(20))),
            //         child: Center(
            //           child: Text(
            //             "Enter",
            //             style: TextStyle(fontSize: 20, color: Colors.white),
            //           ),
            //         )))
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: ((context) => Home1())));
                  },
                  child: Container(
                    height: 48,
                    width: 300,
                    decoration: BoxDecoration(
                        color: Color(0xff004A61),
                        borderRadius: BorderRadius.circular(20)),
                    child: Center(
                        child: Text(
                      'MASUK',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                          color: Color(0xffFFFFFF)),
                    )),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
