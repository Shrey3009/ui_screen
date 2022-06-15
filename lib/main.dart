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
                    colors: [Colors.white, Color(0xfff3dede)])),
            alignment: Alignment.topCenter,
            padding: EdgeInsets.all(15),
            child: Column(children: [
              const Padding(
                padding: EdgeInsets.only(
                    left: 20,
                    bottom: 10,
                    right: 20,
                    top: 100), //apply padding to all four sides
                child: Text(
                  "Choose a language",
                  style: TextStyle(
                      fontFamily: 'Nunito',
                      fontSize: 35,
                      fontWeight: FontWeight.w900),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(
                    left: 20,
                    bottom: 70,
                    right: 20,
                    top: 05), //apply padding to some sides only
                child: Text(
                  "Choose the language that vibes with you !",
                  style: TextStyle(
                      fontFamily: 'Nunito',
                      fontSize: 15,
                      fontWeight: FontWeight.w600),
                  textAlign: TextAlign.center,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton(
                    child: const Text("Hindi"),
                    style: ElevatedButton.styleFrom(
                        primary: const Color(0xfff49c8e),
                        onPrimary: Colors.black),
                    onPressed: () {},
                  ),
                  ElevatedButton(
                    child: const Text("English"),
                    style: ElevatedButton.styleFrom(
                        primary: const Color(0xfff49c8e),
                        onPrimary: Colors.black),
                    onPressed: () {},
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton(
                    child: const Text("Marathi"),
                    style: ElevatedButton.styleFrom(
                        primary: const Color(0xfff49c8e),
                        onPrimary: Colors.black),
                    onPressed: () {},
                  ),
                  ElevatedButton(
                    child: const Text("Gujarati"),
                    style: ElevatedButton.styleFrom(
                        primary: const Color(0xfff49c8e),
                        onPrimary: Colors.black),
                    onPressed: () {},
                  )
                ],
              ),
              Image.asset(
                "assets/images/earth.png",
                width: 200,
                height: 300,
              )
            ])));
  }
}
