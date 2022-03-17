import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const register());
}

class register extends StatelessWidget {
  const register({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'REGISTER PAGE'),
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
                // SizedBox(
                //   height: 30,
                // ),
                Align(
                  alignment: Alignment.topCenter,
                  child: Text(
                    "Create new Account",
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      fontStyle: FontStyle.normal,
                      fontSize: 33,
                      color: Colors.black,
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Already Registered? Login",
                  style: TextStyle(
                    fontSize: 17,
                    color: Colors.black54,
                  ),
                ),
                SizedBox(
                  height:35,
                ),
                Align(
                  alignment: Alignment(-0.6,0.6),
                  child: Text(
                    "PLEASE ENTER YOUR NAME",
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.black54,
                    ),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                SizedBox(
                  width: 310,
                  height: 40,
                  child: TextField(
                    decoration: new InputDecoration(
                      border: new OutlineInputBorder(
                        borderRadius: const BorderRadius.all(
                          const Radius.circular(30.0),
                        ),
                        borderSide: BorderSide(color: Colors.white),
                      ),
                      filled: true,
                      fillColor: Colors.white,
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Align(
                  alignment: Alignment(-0.6,0.6),
                  child: Text(
                    "PLEASE ENTER YOUR MAIL",
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.black54,
                    ),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                SizedBox(
                  width: 310,
                  height: 40,
                  child: TextField(
                    decoration: new InputDecoration(
                      border: new OutlineInputBorder(
                        borderRadius: const BorderRadius.all(
                          const Radius.circular(30.0),
                        ),
                        borderSide: BorderSide(color: Colors.white),
                      ),
                      filled: true,
                      fillColor: Colors.white,
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Align(
                  alignment: Alignment(-0.5,0.5),
                  child: Text(
                    "PLEASE ENTER YOUR PASSWORD",
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.black54,
                    ),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                SizedBox(
                  width: 310,
                  height: 40,
                  child: TextField(
                    obscureText: true,
                    decoration: new InputDecoration(
                      border: new OutlineInputBorder(
                        borderRadius: const BorderRadius.all(
                          const Radius.circular(30.0),
                        ),
                        borderSide: BorderSide(color: Colors.white),
                      ),
                      filled: true,
                      fillColor: Colors.white,
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Align(
                  alignment: Alignment(-0.5,0.4),
                  child: Text(
                    "PLEASE ENTER YOUR DATE OF BIRTH",
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.black54,
                    ),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                SizedBox(
                  width: 310,
                  height: 40,
                  child: TextField(
                    obscureText: true,
                    decoration: new InputDecoration(
                      border: new OutlineInputBorder(
                        borderRadius: const BorderRadius.all(
                          const Radius.circular(30.0),
                        ),
                        borderSide: BorderSide(color: Colors.white),
                      ),
                      filled: true,
                      fillColor: Colors.white,
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                SizedBox(
                    height: 60,
                    width: 260,
                    child: OutlinedButton(
                      child: Text(
                        "sign up",
                        style: TextStyle(fontSize: 20.0,
                          color: Colors.black54,
                        ),
                      ),
                      style: OutlinedButton.styleFrom(
                        backgroundColor: Colors.teal.shade50,
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
    );
  }
}
