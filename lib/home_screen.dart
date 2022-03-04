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
            Align(
              alignment: Alignment(-0.8,1.0),
              child: Text(
                "Good afternoon,",
                style: TextStyle(
                  fontSize: 25.0,
                ),
              ),
            ),
            Row(
              children: [
                Align(
                  alignment: Alignment(-0.5,1.0),
                  widthFactor: 2.0,
                  child: Text(
                    "Adam",
                    style: TextStyle(
                      fontSize: 33,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(
                  width: 6,
                ),
                SizedBox(
                  width: 210,
                  height: 30,
                  child: OutlinedButton(
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "search",
                        style: TextStyle(
                          fontSize: 15.0,
                          color: Colors.black54,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    style: OutlinedButton.styleFrom(
                      backgroundColor: Colors.tealAccent,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadiusDirectional.only(
                        topStart: Radius.circular(30.0),
                        topEnd: Radius.circular(0.0),
                        bottomStart: Radius.circular(30.0),
                        bottomEnd: Radius.circular(0.0),
                      )),
                    ),
                    onPressed: () {},
                  ),
                )
              ],
            ),
            Align(
              alignment: Alignment(-0.7,1.0),
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: Text(
                  "How can we help you today?",
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    fontSize: 22.0,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 22.0, top: 10.0, right: 15.0, bottom: 3.0),
              child: Row(
                children: [
                  SizedBox(
                    height: 120,
                    width: 170,
                    child: RawMaterialButton(
                      fillColor: Colors.blueAccent.shade100,
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
                              "Health"
                              "\nScreening",
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
                    width: 14,
                  ),
                  SizedBox(
                    height: 120,
                    width: 170,
                    child: RawMaterialButton(
                      fillColor: Colors.lightBlue.shade200,
                      // splashColor: Colors.purple,
                      onPressed: () {},
                      child: Padding(
                        padding: EdgeInsets.all(5.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: const [
                            Icon(
                              Icons.calendar_today_sharp,
                              color: Colors.black,
                              size: 32,
                            ),
                            // SizedBox(
                            //   width: 10.0,
                            // ),
                            Text(
                              "Book"
                              "\nAppointment",
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
            ),
            SizedBox(
              height: 12,
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 22.0, top: 10.0, right: 15.0, bottom: 8.0),
              child: Row(
                children: [
                  SizedBox(
                    height: 120,
                    width: 170,
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
                    width: 14,
                  ),
                  SizedBox(
                    height: 120,
                    width: 170,
                    child: RawMaterialButton(
                      fillColor: Colors.purple.shade100,
                      // splashColor: Colors.purple,
                      onPressed: () {},
                      child: Padding(
                        padding: EdgeInsets.all(5.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: const [
                            Icon(
                              Icons.bluetooth_sharp,
                              color: Colors.black,
                              size: 32,
                            ),
                            // SizedBox(
                            //   width: 10.0,
                            // ),
                            Text(
                              "Connected"
                              "\nDevices",
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
            ),
            // SizedBox(
            //   height: 12,
            // ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 20.0, top: 10.0, right: 15.0, bottom: 8.0),
              child: Row(
                children: [
                  SizedBox(
                    height: 120,
                    width: 170,
                    child: RawMaterialButton(
                      fillColor: Colors.pink.shade300,
                      // splashColor: Colors.purple,
                      onPressed: () {},
                      child: Padding(
                        padding: EdgeInsets.all(5.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: const [
                            Icon(
                              Icons.sentiment_neutral,
                              color: Colors.black,
                              size: 32,
                            ),
                            // SizedBox(
                            //   width: 10.0,
                            // ),
                            Text(
                              "My Records",
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
                    width: 14,
                  ),
                  SizedBox(
                    height: 120,
                    width: 170,
                    child: RawMaterialButton(
                      fillColor: Colors.yellow.shade300,
                      // splashColor: Colors.purple,
                      onPressed: () {},
                      child: Padding(
                        padding: EdgeInsets.all(5.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: const [
                            Icon(
                              Icons.calendar_month_outlined,
                              color: Colors.black,
                              size: 32,
                            ),
                            // SizedBox(
                            //   width: 10.0,
                            // ),
                            Text(
                              "My"
                              "\nContent",
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
            ),
            // SizedBox(
            //   height: 12,
            // ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 20.0, top: 10.0, right: 15.0, bottom: 8.0),
              child: Row(
                children: [
                  SizedBox(
                    height: 120,
                    width: 170,
                    child: RawMaterialButton(
                      fillColor: Colors.lime.shade600,
                      // splashColor: Colors.purple,
                      onPressed: () {},
                      child: Padding(
                        padding: EdgeInsets.all(5.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: const [
                            Icon(
                              Icons.local_grocery_store_outlined,
                              color: Colors.black,
                              size: 32,
                            ),
                            // SizedBox(
                            //   width: 10.0,
                            // ),
                            Text(
                              "Shop",
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
                    width: 14,
                  ),
                  SizedBox(
                    height: 120,
                    width: 170,
                    child: RawMaterialButton(
                      fillColor: Colors.teal.shade100,
                      // splashColor: Colors.purple,
                      onPressed: () {},
                      child: Padding(
                        padding: EdgeInsets.all(5.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: const [
                            Icon(
                              Icons.smart_toy_outlined,
                              color: Colors.black,
                              size: 32,
                            ),
                            // SizedBox(
                            //   width: 10.0,
                            // ),
                            Text(
                              "Virtual"
                              "\nAssistant",
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
            ),
            Positioned(
              bottom: 5.0,
              child: BottomAppBar(
                elevation: 15.0,
                // shape: shape,
                color: Colors.white,
                child: IconTheme(
                  data: IconThemeData(
                      color: Theme.of(context).colorScheme.onPrimary),
                  child: Row(
                    children: <Widget>[
                      IconButton(
                        tooltip: 'Open navigation menu',
                        icon: const Icon(Icons.home),
                        onPressed: () {},
                      ),
                      // if (centerLocations.contains(fabLocation)) const Spacer(),
                      IconButton(
                        tooltip: 'Search',
                        icon: const Icon(Icons.store_outlined),
                        onPressed: () {},
                      ),
                      IconButton(
                        tooltip: 'Favorite',
                        icon: const Icon(Icons.local_grocery_store_outlined),
                        onPressed: () {},
                      ),
                      IconButton(
                        tooltip: 'Favorite',
                        icon: const Icon(Icons.perm_identity_outlined),
                        onPressed: () {},
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
