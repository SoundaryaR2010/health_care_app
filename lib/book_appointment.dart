import 'dart:ui';
import 'package:flutter/cupertino.dart';
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
  String finalDate = '';

  getCurrentDate(){
    var date = new DateTime.now().toString();
    var dateParse = DateTime.parse(date);
    var formattedDate = "${dateParse.month},${dateParse.year}";
    setState(() {
      finalDate = formattedDate.toString() ;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: RadialGradient(
            radius: 0.8,
            colors: [Colors.teal.shade200, Colors.white],
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              "assets/images/boy.jpg",
              fit: BoxFit.cover,
              // height: double.infinity,
              width: double.infinity,
              alignment: Alignment.topCenter,
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: <Widget>[
                  Row(
                    children: [
                      Column(
                        children: <Widget>[
                          Text(
                            "Dr. Raj Malhotra",
                            style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "Diabetologist, Bangalore",
                            style: TextStyle(
                              fontSize: 18,
                              // fontWeight: FontWeight.w200,
                              color: Colors.black38,
                            ),
                          ),
                        ],
                      ),
                      Container(
                        alignment: Alignment.centerRight,
                        height: 50.0,
                        width: 86.0,
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.tealAccent,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20.0))),
                          child: new Center(
                            child: new Text(
                              "Rs. 900",
                              style: TextStyle(
                                  color: Colors.black54, fontSize: 20, fontWeight: FontWeight.bold),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(
                          Icons.group,
                            color: Colors.grey.shade900,
                        ),
                      ),
                      Text(
                        "3000+",
                        style: TextStyle(fontSize: 18,color: Colors.grey.shade900),
                      ),
                     Icon(
                        Icons.assignment_turned_in_rounded,
                         color: Colors.grey.shade900,
                     ),
                      Text(
                        "7 years",
                        style: TextStyle(fontSize: 18,color: Colors.grey.shade900),
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.yellowAccent,
                      ),
                      Text(
                        "4.9",
                        style: TextStyle(fontSize: 18,color: Colors.grey.shade900),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                          "Available Slots, ",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.black54,
                        ),
                      ),
                      Text(
                        "$finalDate",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.black54,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}