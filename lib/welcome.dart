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
        child: Padding(
          padding: const EdgeInsets.all(9.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
               "Welcome\n"
                "  screen",
                style: TextStyle(
                  height: 0.7,
                  fontSize: 27,
                  fontWeight: FontWeight.bold,
                ),
                // Theme.of(context).textTheme.headline4,

                textAlign: TextAlign.start,
              ),
              SizedBox(
                height: 20,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Which services you want to\n "
                      "take?",
                  style: TextStyle(
                    fontSize: 21,
                  ),
                ),
              ),
             SizedBox(
               height: 5,
             ),
             SizedBox(
               width: MediaQuery.of(context).size.width,
               child: Container(
                 // width: 300,
                 // height: 100,
                 decoration: ShapeDecoration(
                   shape: StadiumBorder(),
                   gradient: LinearGradient(
                     begin: Alignment.topLeft,
                     end: Alignment.bottomRight,
                     colors: [Colors.pink.shade50, Colors.teal.shade100, Colors.pink.shade100],
                   ),
                 ),
                 child: MaterialButton(
                   materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                   shape: StadiumBorder(),
                   child: Align(
                     alignment: Alignment.topLeft,
                      widthFactor: 2.5,
                     child: Text(
                       'Heart health',
                       textAlign: TextAlign.left,
                       style: TextStyle(color: Colors.black54, fontSize: 20),
                     ),
                   ),
                   onPressed: () {},
                 ),
               ),
             ),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Container(
                  // width: 300,
                  // height: 100,
                  decoration: ShapeDecoration(
                    shape: StadiumBorder(),
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [Colors.pink.shade50, Colors.pink.shade50],
                    ),
                  ),
                  child: MaterialButton(
                    materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    shape: StadiumBorder(),
                    child: Align(
                      alignment: Alignment.topLeft,
                      widthFactor: 3.6,
                      child: Text(
                        'Diabetes',
                        textAlign: TextAlign.left,
                        style: TextStyle(color: Colors.black54, fontSize: 20),
                      ),
                    ),
                    onPressed: () {},
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Container(
                  // width: 300,
                  // height: 100,
                  decoration: ShapeDecoration(
                    shape: StadiumBorder(),
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [Colors.tealAccent, Colors.pink.shade50],
                    ),
                  ),
                  child: MaterialButton(
                    materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    shape: StadiumBorder(),
                    child: Align(
                      alignment: Alignment.topLeft,
                      widthFactor: 2.3,
                      child: Text(
                        'Mental health',
                        textAlign: TextAlign.left,
                        style: TextStyle(color: Colors.black54, fontSize: 20),
                      ),
                    ),
                    onPressed: () {},
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Container(
                  // width: 300,
                  // height: 100,
                  decoration: ShapeDecoration(
                    shape: StadiumBorder(),
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [Colors.tealAccent.shade100, Colors.pink.shade50],
                    ),
                  ),
                  child: MaterialButton(
                    materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    shape: StadiumBorder(),
                    child: Align(
                      alignment: Alignment.topLeft,
                      widthFactor: 5.0,
                      child: Text(
                        'Fitness',
                        style: TextStyle(color: Colors.black54, fontSize: 20),
                      ),
                    ),
                    onPressed: () {},
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Container(
                  // width: 300,
                  // height: 100,
                  decoration: ShapeDecoration(
                    shape: StadiumBorder(),
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [Colors.pink.shade50, Colors.teal.shade100, Colors.pink.shade50],
                    ),
                  ),
                  child: MaterialButton(
                    materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    shape: StadiumBorder(),
                    child: Align(
                      alignment: Alignment.topLeft,
                      widthFactor: 7.2,
                      child: Text(
                        'Skin',
                        textAlign: TextAlign.left,
                        style: TextStyle(color: Colors.black54, fontSize: 20),
                      ),
                    ),
                    onPressed: () {},
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Container(
                  // width: 300,
                  // height: 100,
                  decoration: ShapeDecoration(
                    shape: StadiumBorder(),
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [Colors.pink.shade50, Colors.pink.shade50],
                    ),
                  ),
                  child: MaterialButton(
                    materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    shape: StadiumBorder(),
                    child: Align(
                      alignment: Alignment.topLeft,
                      widthFactor: 7.2,
                      child: Text(
                        'Hair',
                        textAlign: TextAlign.left,
                        style: TextStyle(color: Colors.black54, fontSize: 20),
                      ),
                    ),
                    onPressed: () {},
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Container(
                  // width: 300,
                  // height: 100,
                  decoration: ShapeDecoration(
                    shape: StadiumBorder(),
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [Colors.tealAccent, Colors.pink.shade50],
                    ),
                  ),
                  child: MaterialButton(
                    materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    shape: StadiumBorder(),
                    child: Align(
                      alignment: Alignment.topLeft,
                      widthFactor: 2.2,
                      child: Text(
                        'Sexual health',
                        textAlign: TextAlign.left,
                        style: TextStyle(color: Colors.black54, fontSize: 20),
                      ),
                    ),
                    onPressed: () {},
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Container(
                  // width: 300,
                  // height: 100,
                  decoration: ShapeDecoration(
                    shape: StadiumBorder(),
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [Colors.tealAccent, Colors.pink.shade100, Colors.purple.shade50],
                    ),
                  ),
                  child: MaterialButton(
                    materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    shape: StadiumBorder(),
                    child: Align(
                      alignment: Alignment.topLeft,
                      widthFactor: 2.0,
                      child: Text(
                        'Healthy ageing',
                        textAlign: TextAlign.left,
                        style: TextStyle(color: Colors.black54, fontSize: 20),
                      ),
                    ),
                    onPressed: () {},
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                width: 250,
                child: Container(
                  // width: 300,
                  // height: 100,
                  decoration: ShapeDecoration(
                    shape: StadiumBorder(),
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [Colors.blueGrey, Colors.white],
                    ),
                  ),
                  child: MaterialButton(
                    materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    shape: StadiumBorder(),
                    child: Text(
                      'Confirm my choice',
                      textAlign: TextAlign.left,
                      style: TextStyle(color: Colors.black, fontSize: 17,
                      fontWeight: FontWeight.bold,
                      ),
                    ),
                    onPressed: () {},
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
