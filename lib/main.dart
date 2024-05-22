import 'package:flutter/material.dart';
import 'package:product_layout_app/product_box.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
       primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Product Layout Demo Home Page'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  Text(title),
      ),
      body: ListView(
        shrinkWrap: true,
        padding: const EdgeInsets.fromLTRB(2.0, 10.0, 2.0, 10.0),
        children: const [
          ProductBox(
              name: "iphone-8",
              description: "iphone-8 is a stylish phone ever",
              price: 1000,
              image: "iphone-8-plus.jpeg"),
          ProductBox(
              name: "iphone-12-pro",
              description: "iphone-12 is a nice phone ever",
              price: 1000,
              image: "iphone-12-pro.jpeg"),
          ProductBox(
              name: "iphone-13-pro",
              description: "iphone-13 is a nice phone ever",
              price: 1000,
              image: "iphone-13-pro.jpeg"),
          ProductBox(
              name: "iphone-13-pro-max",
              description: "iphone-13-pro-max is a nice phone ever",
              price: 1000,
              image: "iphone-13-pro-max.jpeg"),
          ProductBox(
              name: "iphone-14",
              description: "iphone-14 is a nice phone ever",
              price: 1000,
              image: "iphone-14.jpeg"),

        ],
      ),
    );
  }
  
}


