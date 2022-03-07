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
      home: const MyHomePage(title: 'MAIN PAGE'),
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
            colors: [Colors.teal.shade200,Colors.white],
          ),
        ),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                 // Image.asset('assets/images/boy.jpg',
                 // width: 250,
                 //   height: 250,
                 //   color: Colors.teal.shade100,
                 //   colorBlendMode: BlendMode.darken,
                 // ),
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
                  height: 50,
                  width: 270,
                child: OutlinedButton(
                  child: Text(
                    "sign up",
                    style: TextStyle(fontSize: 20.0,
                      color: Colors.black54,
                    ),
                  ),
                  style: OutlinedButton.styleFrom(
                    backgroundColor: Colors.teal.shade100,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                  ),
                  onPressed:() {},
                )
                ),
                SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: 50,
                  width: 270,
                  child: OutlinedButton(
                    child: Text(
                      "Have an account? login",
                      style: TextStyle(fontSize: 20.0,
                        color: Colors.black54,
                      ),
                    ),
                    style: OutlinedButton.styleFrom(
                      backgroundColor: Colors.teal.shade100,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                    ),
                    onPressed:() {},
                  )
                ),
              ],
            ),
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
