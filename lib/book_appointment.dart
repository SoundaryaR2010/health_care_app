import 'dart:async';
import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:flutter/services.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override

//   main(){
//
//   var now = new DateTime.now();
//   var formatter = new DateF('yyyy-MM-dd');
//   String formattedDate = formatter.format(now);
//
//   print(formattedDate);
// }
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'HOME PAGE'),
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
  List _items = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    readJson();
  }
  Future<void> readJson() async {
    final String response = await rootBundle.loadString('assets/details.json');
    final data = await json.decode(response);
    setState(() {
      _items = data["items"];
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: RadialGradient(
            radius: 0.8,
            colors: [Colors.teal.shade200, Colors.white],
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "Available Doctors",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                ),
              ),
              // ElevatedButton(
              //   child: const Text('Check Appoinments'),
              //   onPressed: readJson,
              // ),
              // Image.asset(
              //   "assets/images/boy.jpg",
              //   fit: BoxFit.cover,
              //   // height: double.infinity,
              //   width: double.infinity,
              //   alignment: Alignment.topCenter,
              // ),
              // Padding(
              //   padding: const EdgeInsets.all(10.0),
              //   child: Column(
              //     children: <Widget>[
              //       Row(
              //         children: [
              //           Column(
              //             children: <Widget>[
              //               Text(
              //                 "Dr. Raj Malhotra",
              //                 style: TextStyle(
              //                   fontSize: 22,
              //                   fontWeight: FontWeight.bold,
              //                 ),
              //               ),
              //               Text(
              //                 "Diabetologist, Bangalore",
              //                 style: TextStyle(
              //                   fontSize: 18,
              //                   // fontWeight: FontWeight.w200,
              //                   color: Colors.black38,
              //                 ),
              //               ),
              //             ],
              //           ),
              //           Container(
              //             alignment: Alignment.centerRight,
              //             height: 50.0,
              //             width: 86.0,
              //             child: Container(
              //               decoration: BoxDecoration(
              //                   color: Colors.tealAccent,
              //                   borderRadius:
              //                       BorderRadius.all(Radius.circular(20.0))),
              //               child: new Center(
              //                 child: new Text(
              //                   "Rs. 900",
              //                   style: TextStyle(
              //                       color: Colors.black54, fontSize: 20, fontWeight: FontWeight.bold),
              //                   textAlign: TextAlign.center,
              //                 ),
              //               ),
              //             ),
              //           ),
              //         ],
              //       ),
              //       Row(
              //         children: [
              //           Padding(
              //             padding: const EdgeInsets.all(8.0),
              //             child: Icon(
              //               Icons.group,
              //                 color: Colors.grey.shade900,
              //             ),
              //           ),
              //           Text(
              //             "3000+",
              //             style: TextStyle(fontSize: 18,color: Colors.grey.shade900),
              //           ),
              //          Icon(
              //             Icons.assignment_turned_in_rounded,
              //              color: Colors.grey.shade900,
              //          ),
              //           Text(
              //             "7 years",
              //             style: TextStyle(fontSize: 18,color: Colors.grey.shade900),
              //           ),
              //           Icon(
              //             Icons.star,
              //             color: Colors.yellowAccent,
              //           ),
              //           Text(
              //             "4.9",
              //             style: TextStyle(fontSize: 18,color: Colors.grey.shade900),
              //           ),
              //         ],
              //       ),
              //       Row(
              //         children: [
              //           Text(
              //               "Available Slots, ",
              //             style: TextStyle(
              //               fontSize: 18,
              //               fontWeight: FontWeight.bold,
              //               color: Colors.black54,
              //             ),
              //           ),
              //           Text(
              //             "",
              //             style: TextStyle(
              //               fontSize: 18,
              //               fontWeight: FontWeight.bold,
              //               color: Colors.black54,
              //             ),
              //           ),
              //         ],
              //       ),
              //       Text(
              //         "About",
              //         style: TextStyle(
              //           fontSize: 18,
              //           fontWeight: FontWeight.w500,
              //         ),
              //       ),
              //       Text(
              //         "Senior Consultant diabetology. He is  highly "
              //         "qualified doctor, and his degrees speak volumes of "
              //         "his competency as a diabetologist. With immense"
              //         "experience under his belt, Dr. Chandrmouli has",
              //         style: TextStyle(
              //           fontSize: 18,
              //           color: Colors.grey.shade900,
              //         ),
              //       ),
              //     ],
              //   ),
              // ),
              _items.isNotEmpty
                  ? Expanded(
                      child: ListView.builder(
                        itemCount: _items.length,
                        itemBuilder: (context, index) {
                          return Card(
                            margin: const EdgeInsets.all(10),
                            child: ListTile(
                              leading: Text(_items[index]["id"]),
                              title: Text(_items[index]["name"]),
                              subtitle: Text(_items[index]["description"]),
                            ),
                          );
                        },
                      ),
                    )
                  : Container()
            ],
          ),
        ),
      ),
    );
  }
}
