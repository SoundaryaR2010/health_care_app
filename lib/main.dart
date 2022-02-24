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
      home: const MyHomePage(title: 'SIGN UP PAGE'),
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
      body: Center(
        child: Container(
          decoration: BoxDecoration(
            gradient: RadialGradient(
              radius: 0.8,
              colors: [Colors.teal.shade200,Colors.white],
              focalRadius: 10.0,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
               Image.asset('assets/images/boy.jpg',
               width: 250,
                 height: 250,
                 color: Colors.teal.shade100,
                 colorBlendMode: BlendMode.darken,
               ),
              // SizedBox(
              //   height: 250,
              // ),
              Text(
                "Healthcare whenever \n"
                "you need it",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
                // Theme.of(context).textTheme.headline4,

                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 25,
              ),
              // Text(
              //   "We value your privacy & safety. \n"
              //   "Read our Privacy Policy",
              //   textAlign: TextAlign.center,
              // ),
              Center(
                child: Text.rich(
                  TextSpan(
                    text: 'We value your privacy & safety.\n '
                                'Read our ',
                    style: TextStyle(),
                    children: <TextSpan>[
                      TextSpan(
                          text: 'Privacy Policy',
                          style: TextStyle(
                            color: Colors.blue.shade900,
                            decoration: TextDecoration.underline,
                          )),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              SizedBox(
                height: 60,
                width: 300,
              child: OutlineButton(
                child: Text(
                  "sign up",
                  style: TextStyle(fontSize: 20.0),
                ),
                highlightedBorderColor: Colors.cyanAccent,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(35)),
                onPressed: () {},
              ),
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 60,
                width: 300,
                child: OutlineButton(
                  child: Text(
                    "Have an account? Login",
                    style: TextStyle(fontSize: 20.0),
                  ),
                  highlightedBorderColor: Colors.cyanAccent,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(35)),
                  onPressed: () {},
                ),
              ),
            ],
          ),
        ),
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: _incrementCounter,
      //   tooltip: 'Increment',
      //   child: const Icon(Icons.add),
      // ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
