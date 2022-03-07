import 'dart:ui';
import 'package:bubble/bubble.dart';
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
      home: const MyHomePage(title: 'ACCOUNT PAGE'),
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
            colors: [Colors.teal.shade200, Colors.white],
          ),
        ),
        child: Center(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(50.0),
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                          boxShadow:[
                            BoxShadow(
                              color: Colors.red,
                              blurRadius: 14,
                              offset: Offset(4, 8),
                            ),
                          ],
                         ),
                          child: Image.asset('assets/images/boy.jpg',
                          width: 100,
                            height: 100,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(9.0),
                        child: Column(
                          children: <Widget>[
                            Text(
                              "Liddu",
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.black,
                              ),
                            ),
                            Text(
                              "Basic Subscription",
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.black38,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Bubble(
                        style: BubbleStyle(),
                        radius: Radius.elliptical(15, 15),
                        margin: const BubbleEdges.all(15.0),
                        alignment: Alignment.centerRight,
                        nipWidth: 10,
                        nipHeight: 10,
                        nip: BubbleNip.rightBottom,
                        color: Colors.red,
                        child: Padding(
                          padding: const EdgeInsets.all(6.0),
                          child: Row(
                            children: [
                              Icon(Icons.favorite_rounded,
                              color: Colors.white,
                                size: 15,
                              ),
                             Text(
                              "1",
                              style: TextStyle(fontSize: 15,
                              color: Colors.white,
                              ),
                            ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      width: 350,
                      height: 38,
                      decoration: ShapeDecoration(
                        shape: StadiumBorder(),
                        gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [Colors.tealAccent, Colors.teal.shade100],
                        ),
                      ),
                      child: MaterialButton(
                        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        shape: StadiumBorder(),
                        child: Row(
                          children:[ Text(
                            'search',
                            textAlign: TextAlign.left,
                            style: TextStyle(color: Colors.black, fontSize: 20),
                          ),
                            SizedBox(
                              width: 200,
                            ),
                            Icon(Icons.mic_rounded,
                            color: Colors.black54,
                            ),
                          ],
                        ),
                        onPressed: () {},
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      SizedBox(
                        height: 90,
                        width: 100,
                        child: RawMaterialButton(
                          fillColor: Colors.deepPurpleAccent.shade100,
                          // splashColor: Colors.purple,
                          onPressed: () {},
                          child: Padding(
                            padding: EdgeInsets.all(5.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: const [
                                Icon(
                                  Icons.all_out,
                                  color: Colors.black,
                                  size: 32,
                                ),
                                // SizedBox(
                                //   width: 10.0,
                                // ),
                                Text(
                                  "Order"
                                      "\nMedicines",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 14),
                                ),
                              ],
                            ),
                          ),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                        ),
                      ),
                      SizedBox(
                        height: 90,
                        width: 100,
                        child: RawMaterialButton(
                          fillColor: Colors.deepPurpleAccent.shade100,
                          // splashColor: Colors.purple,
                          onPressed: () {},
                          child: Padding(
                            padding: EdgeInsets.all(5.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: const [
                                Icon(
                                  Icons.all_out,
                                  color: Colors.black,
                                  size: 32,
                                ),
                                // SizedBox(
                                //   width: 10.0,
                                // ),
                                Text(
                                  "Order"
                                      "\nMedicines",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 14),
                                ),
                              ],
                            ),
                          ),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                        ),
                      ),
                      SizedBox(
                        height: 90,
                        width: 100,
                        child: RawMaterialButton(
                          fillColor: Colors.deepPurpleAccent.shade100,
                          // splashColor: Colors.purple,
                          onPressed: () {},
                          child: Padding(
                            padding: EdgeInsets.all(5.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: const [
                                Icon(
                                  Icons.all_out,
                                  color: Colors.black,
                                  size: 32,
                                ),
                                // SizedBox(
                                //   width: 10.0,
                                // ),
                                Text(
                                  "Order"
                                      "\nMedicines",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 14),
                                ),
                              ],
                            ),
                          ),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}