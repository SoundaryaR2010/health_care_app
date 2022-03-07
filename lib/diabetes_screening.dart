import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:bubble/bubble.dart';

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
      home: const MyHomePage(title: 'DIABETES PAGE'),
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
      body: Container(
        decoration: BoxDecoration(
          gradient: RadialGradient(
            radius: 0.8,
            colors: [Colors.teal.shade100, Colors.white],
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView(
            children: [
              Align(
                alignment: Alignment.topCenter,
                child: Text(
                  "Diabetes screening",
                  style: TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: RichText(
                  textAlign: TextAlign.left,
                  text: TextSpan(
                    // style: Theme.of(context).textTheme.,
                    children: [
                      TextSpan(
                        text: "let's see how your doing \ntoday",
                        style: TextStyle(
                          fontSize: 22,
                          color: Colors.black,
                        ),
                      ),
                      WidgetSpan(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 2.0),
                          child: Icon(Icons.favorite_rounded, color: Colors.red),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Bubble(
                radius: Radius.elliptical(15, 15),
                margin: const BubbleEdges.all(15.0),
                alignment: Alignment.centerRight,
                nipWidth: 20,
                nipHeight: 10,
                nip: BubbleNip.leftCenter,
                color: Colors.teal.shade50,
                child: Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: Text(
                    'howdy Adam :) I am your'
                    " screening companion today, "
                    " my name is Hearty. So are you"
                    " ready to take the test?",
                    style: TextStyle(fontSize: 22),
                  ),
                ),
              ),
              Bubble(
                margin: const BubbleEdges.all(15.0),
                alignment: Alignment.topRight,
                nipWidth: 20,
                nipHeight: 10,
                nip: BubbleNip.rightCenter,
                child: Row(
                  children: [
                    Text(
                      'your response',
                      textAlign: TextAlign.right,
                      style: TextStyle(fontSize: 22),
                    ),
                    SizedBox(
                      width: 100,
                    ),
                    Icon(
                      Icons.mic_rounded,
                      color: Colors.black54,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(9.0),
                child: Row(
                  children: [
                    Container(
                      width: 70,
                      height: 25,
                      decoration: ShapeDecoration(
                        shape: StadiumBorder(),
                        gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [Colors.pink.shade300, Colors.red.shade300],
                        ),
                      ),
                      child: MaterialButton(
                        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        shape: StadiumBorder(),
                        child: Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Text(
                            'Yes',
                            textAlign: TextAlign.center,
                            style: TextStyle(color: Colors.white, fontSize: 12),
                          ),
                        ),
                        onPressed: () {},
                      ),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Container(
                      width: 70,
                      height: 25,
                      decoration: ShapeDecoration(
                        shape: StadiumBorder(),
                        gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [Colors.white, Colors.black12],
                        ),
                      ),
                      child: MaterialButton(
                        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        shape: StadiumBorder(),
                        child: Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Text(
                            'No',
                            textAlign: TextAlign.center,
                            style:
                                TextStyle(color: Colors.black54, fontSize: 12),
                          ),
                        ),
                        onPressed: () {},
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Text(
                  "ok great, the screening will take a 3 "
                  "minutes. It will start with some basic "
                  "questions then will use AI to assess "
                  "you. Let's start with your social  "
                  "history.",
                  style: TextStyle(
                    fontSize: 22,
                  ),
                ),
              ),
              Bubble(
                radius: Radius.elliptical(15, 15),
                margin: const BubbleEdges.all(15.0),
                alignment: Alignment.topLeft,
                nipWidth: 20,
                nipHeight: 10,
                nip: BubbleNip.leftCenter,
                color: Colors.teal.shade50,
                child: const Text(
                  'Do you ever smoke '
                  "cigarettes?",
                  style: TextStyle(fontSize: 22),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 190, top: 10, right: 10, bottom: 10),
                child: Row(
                  children: [
                    Container(
                      width: 70,
                      height: 25,
                      decoration: ShapeDecoration(
                        shape: StadiumBorder(),
                        gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [Colors.white, Colors.black12],
                        ),
                      ),
                      child: MaterialButton(
                        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        shape: StadiumBorder(),
                        child: Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Text(
                            'Yes',
                            textAlign: TextAlign.center,
                            style:
                                TextStyle(color: Colors.black54, fontSize: 12),
                          ),
                        ),
                        onPressed: () {},
                      ),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Container(
                      width: 70,
                      height: 25,
                      decoration: ShapeDecoration(
                        shape: StadiumBorder(),
                        gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [Colors.pink.shade300, Colors.red.shade300],
                        ),
                      ),
                      child: MaterialButton(
                        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        shape: StadiumBorder(),
                        child: Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Text(
                            'No',
                            textAlign: TextAlign.center,
                            style: TextStyle(color: Colors.white, fontSize: 12),
                          ),
                        ),
                        onPressed: () {},
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
