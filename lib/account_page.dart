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
  var items = ["Addresses","Favorites","Offers","Settings"];
  String myaccount_value = "My Account";

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
              padding: const EdgeInsets.all(10.0),
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
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        SizedBox(
                          height: 80,
                          width: 118,
                          child: Padding(
                            padding: const EdgeInsets.only(
                                left: 0.0, top: 0.0, right: 2.0, bottom: 0.0),
                            child: RawMaterialButton(
                              fillColor: Colors.teal.shade100,
                              // splashColor: Colors.purple,
                              onPressed: () {},
                              child: Padding(
                                padding: EdgeInsets.all(3.0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: const [
                                    Icon(
                                      Icons.calendar_today_outlined,
                                      color: Colors.black54,
                                      size: 28,
                                    ),
                                    // SizedBox(
                                    //   width: 10.0,
                                    // ),
                                    Text(
                                      "Appointments",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 14),
                                    ),
                                  ],
                                ),
                              ),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5.0)),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 80,
                          width: 118,
                          child: Padding(
                            padding: const EdgeInsets.only(
                                left: 10.0, top: 0.0, right: 2.0, bottom: 0.0),
                            child: RawMaterialButton(
                              fillColor: Colors.teal.shade100,
                              // splashColor: Colors.purple,
                              onPressed: () {},
                              child: Padding(
                                padding: EdgeInsets.all(3.0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: const [
                                    Icon(
                                      Icons.bluetooth,
                                      color: Colors.black54,
                                      size: 28,
                                    ),
                                    // SizedBox(
                                    //   width: 10.0,
                                    // ),
                                    Text(
                                     "My devices",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 14),
                                    ),
                                  ],
                                ),
                              ),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5.0)),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 80,
                          width: 118,
                          child: Padding(
                            padding: const EdgeInsets.only(
                                left: 10.0, top: 0.0, right: 0.0, bottom: 0.0),
                            child: RawMaterialButton(
                              fillColor: Colors.teal.shade100,
                              // splashColor: Colors.purple,
                              onPressed: () {},
                              child: Padding(
                                padding: EdgeInsets.all(3.0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: const [
                                    Icon(
                                      Icons.settings,
                                      color: Colors.black54,
                                      size: 28,
                                    ),
                                    // SizedBox(
                                    //   width: 10.0,
                                    // ),
                                    Text(
                                      "My account",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 14),
                                    ),
                                  ],
                                ),
                              ),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5.0)),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  // DropdownButton(
                  //   value: myaccount_value,
                  //   icon: Icon(Icons.keyboard_arrow_down),
                  //   items:items.map((String items) {
                  //     return DropdownMenuItem(
                  //         value: items,
                  //         child: Text(items)
                  //     );
                  //   }
                  //   ).toList(),
                  //   onChanged: (String? newValue){
                  //     setState(() {
                  //       myaccount_value = newValue!;
                  //     });
                  //   },
                  // ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: DropdownButton<String>(
                      hint: Text('My Account',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                      ),
                      icon: Icon(Icons.keyboard_arrow_down),
                      items: <String>["Addresses","Favorites","Offers","Settings"].map((String value){
                        return DropdownMenuItem<String>(
                          value: "My Account",
                          child: Text(value),
                        );
                      }).toList(),
                      onChanged: (_) {},
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: DropdownButton<String>(
                      hint: Text('Payments & Refunds',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      icon: Icon(Icons.keyboard_arrow_down),
                      items: <String>["Payment Status","Refund Modes"].map((String value){
                        return DropdownMenuItem<String>(
                          value: "My Account",
                          child: Text(value),
                        );
                      }).toList(),
                      onChanged: (_) {},
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: DropdownButton<String>(
                      hint: Text('My Wallet',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      icon: Icon(Icons.keyboard_arrow_down),
                      items: <String>["Refund Status","Payment Modes"].map((String value){
                        return DropdownMenuItem<String>(
                          value: "My Account",
                          child: Text(value),
                        );
                      }).toList(),
                      onChanged: (_) {},
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: DropdownButton<String>(
                      hint: Text('Help',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      icon: Icon(Icons.keyboard_arrow_down),
                      items: <String>[""].map((String value){
                        return DropdownMenuItem<String>(
                          value: "My Account",
                          child: Text(value),
                        );
                      }).toList(),
                      onChanged: (_) {},
                    ),
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