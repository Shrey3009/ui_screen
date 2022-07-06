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
  String? transport;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          //Button which triggers the pop-up
          child: ElevatedButton(
        child: const Text("Popup"),
        onPressed: () {
          //function which builds the dialog
          showDialog(
              context: context,
              builder: (BuildContext context) {
                // actual alert box which will be rendered (same as alert() in js)
                return AlertDialog(
                    //form so u can add submit button
                    content: Form(
                        //this column contains various widgets as per hierarchy

                        child: Column(
                  children: [
                    //Used padding to custom align the widgets
                    Padding(
                      padding: const EdgeInsets.only(top: 50),
                      child: Container(
                        width: MediaQuery.of(context).size.width * .4,
                        height: MediaQuery.of(context).size.height * .04,
                        decoration:
                            const BoxDecoration(color: Color(0xff008080)),
                        child: const Center(
                          child: Text(
                            "Return Details",
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                                fontWeight: FontWeight.w600),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ),

                    //Widget 2
                    const Padding(
                      padding: EdgeInsets.only(top: 45, right: 150),
                      child: Text(
                        "Manufacturer :",
                        style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                        textAlign: TextAlign.left,
                      ),
                    ),

                    //Widget 3
                    const Padding(
                      padding: EdgeInsets.only(top: 05, right: 50),
                      child: Text(
                        "ABC Production Pvt. Ltd.",
                        style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                            fontWeight: FontWeight.normal),
                        textAlign: TextAlign.left,
                      ),
                    ),

                    //sizedbox to add space b/w widgets
                    const SizedBox(
                      height: 15,
                    ),

                    //widget 4
                    const Padding(
                      padding: EdgeInsets.only(right: 200),
                      child: Text(
                        "Quantity",
                        style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                        textAlign: TextAlign.left,
                      ),
                    ),

                    //widget 5
                    Padding(
                        padding: const EdgeInsets.only(left: 35),
                        //added row to accomodate multiple inputs in one line

                        child: Row(
                          children: const [
                            Flexible(
                              child: TextField(
                                  decoration: InputDecoration(
                                      contentPadding: EdgeInsets.all(10))),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Flexible(
                              child: TextField(
                                  decoration: InputDecoration(
                                      contentPadding: EdgeInsets.all(10))),
                            ),
                          ],
                        )),
                    const SizedBox(
                      height: 20,
                    ),

                    //widget 6
                    const Padding(
                      padding: EdgeInsets.only(left: 5, right: 120),
                      child: Text(
                        "Transportation :",
                        style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                        textAlign: TextAlign.left,
                      ),
                    ),

                    //widget 7
                    Padding(
                        padding: const EdgeInsets.only(left: 5),
                        child: Column(
                          children: [
                            ListTile(
                              title: const Text(
                                "Provide me transportation",
                                style: TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.bold),
                              ),
                              leading: Radio(
                                  value: "transport1",
                                  groupValue: transport,
                                  onChanged: (value) {
                                    setState(() {
                                      transport = value.toString();
                                    });
                                  }),
                            ),
                            ListTile(
                              title: const Text(
                                "No, I'll take care of it",
                                style: TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.bold),
                              ),
                              leading: Radio(
                                  value: "transport2",
                                  groupValue: transport,
                                  onChanged: (value) {
                                    setState(() {
                                      transport = value.toString();
                                    });
                                  }),
                            )
                          ],
                        )),
                    const SizedBox(
                      height: 20,
                    ),

                    //widget 8
                    Container(
                      height: 130,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: const Color(0xff008080),
                          borderRadius: BorderRadius.circular(10)),
                      child: Column(
                        children: [
                          Padding(
                              padding: const EdgeInsets.only(
                                  top: 20, left: 30, right: 30),

                              // added a row so you can add logic to the amount calculated
                              child: Row(
                                children: const [
                                  Text(
                                    "Receiving Amount:",
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.white),
                                    textAlign: TextAlign.left,
                                  ),
                                  SizedBox(width: 5),
                                  Text(
                                    "Rs. 550",
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.white),
                                  )
                                ],
                              )),
                          const SizedBox(
                            height: 10,
                          ),

                          //widget 9
                          //you can change this to any submit button
                          ElevatedButton(
                            child: const Text("Return Now"),
                            style: ButtonStyle(
                              shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18.0),
                              )),
                            ),
                            onPressed: null,
                          )
                        ],
                      ),
                    )
                  ],
                )));
              });
        },
      )),
    );
  }
}
