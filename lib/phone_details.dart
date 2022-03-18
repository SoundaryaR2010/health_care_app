import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late String data;
  var products_length;
  String url = 'https://dummyjson.com/products';
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getData();
  }

  void getData() async {
    http.Response response =
    await http.get(Uri.parse('https://dummyjson.com/products'));

    if (response.statusCode == 200) {
      data = response.body; //store response as string

      setState(() {
        products_length = jsonDecode(
            data)['products']; //get all the data from json string products

        print(products_length.length); // just printed length of data
      });

      var phone = jsonDecode(data)['products'][4]['title'];

      print(phone);
    } else {
      print(response.statusCode);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: products_length == null ? 0 : products_length.length,
        itemBuilder: (BuildContext context, int index) {
          return Card(
            color: Colors.tealAccent.shade100,
            child: ListTile(
              leading: Image.network(
                jsonDecode(data)['products'][index]['thumbnail'],
                fit: BoxFit.fill,
                width: 100,
                height: 500,
                // alignment: Alignment.center,
              ),
              title: Text(jsonDecode(data)['products'][index]['title']),
              subtitle: Text(jsonDecode(data)['products'][index]['description']),
              // trailing: Text(jsonDecode(data)['products'][index]['rating']),
            ),
          );
        },
      ),
    );
  }
}