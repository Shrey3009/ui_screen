// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [Colors.white, Color(0xfff4e1e1)])),
        alignment: Alignment.topCenter,
        padding: EdgeInsets.all(15),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(
                  left: 10,
                  bottom: 10,
                  right: 0,
                  top: 100), //apply padding to all four sides
              child: Text(
                "How proficient are you?",
                style: TextStyle(
                    fontFamily: 'Nunito',
                    fontSize: 35,
                    fontWeight: FontWeight.w900),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  left: 15,
                  bottom: 70,
                  right: 20,
                  top: 05), //apply padding to some sides only
              child: Text(
                "We've got everyone covered",
                style: TextStyle(
                    fontFamily: 'Nunito',
                    fontSize: 20,
                    fontWeight: FontWeight.w600),
                textAlign: TextAlign.center,
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                  child: const Text("Beginner",
                      style: TextStyle(
                          fontFamily: 'Nunito',
                          fontSize: 20,
                          fontWeight: FontWeight.w700)),
                  style: ElevatedButton.styleFrom(
                      primary: Color(0xff99c661), onPrimary: Colors.white),
                  onPressed: () {},
                ),
                SizedBox(
                  height: 15,
                ),
                ElevatedButton(
                  child: const Text(
                    "Intermediate",
                    style: TextStyle(
                        fontFamily: 'Nunito',
                        fontSize: 20,
                        fontWeight: FontWeight.w700),
                  ),
                  style: ElevatedButton.styleFrom(
                      primary: const Color(0xffff5757),
                      onPrimary: Colors.white),
                  onPressed: () {},
                ),
                SizedBox(
                  height: 15,
                ),
                ElevatedButton(
                  child: const Text("Advance",
                      style: TextStyle(
                          fontFamily: 'Nunito',
                          fontSize: 20,
                          fontWeight: FontWeight.w700)),
                  style: ElevatedButton.styleFrom(
                      primary: const Color(0xffff0065),
                      onPrimary: Colors.white),
                  onPressed: () {},
                ),
                SizedBox(height: 60),
                ElevatedButton(
                  child: const Text("I'm Ready",
                      style: TextStyle(
                          fontFamily: 'Nunito',
                          fontSize: 20,
                          fontWeight: FontWeight.w700)),
                  style: ElevatedButton.styleFrom(
                      primary: Colors.white, onPrimary: Color(0xffff0265)),
                  onPressed: () {},
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
