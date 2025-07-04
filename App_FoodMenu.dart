import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "My App",
      home: MyHomepage(),
      theme: ThemeData(primarySwatch: Colors.orange),
    );
  }
}

class MyHomepage extends StatefulWidget {
  @override
  _MyHomepageState createState() => _MyHomepageState();
}

class _MyHomepageState extends State<MyHomepage> {
  List<FoodMenu> menu = [
    FoodMenu("Pork Fried Rice", "500"),
    FoodMenu("Egg Fried Rice", "300"),
  ];

  @override // Create State
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Hello Flutter")),
      body: ListView.builder(
        itemCount: menu.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(title: Text("Item $index"));
        },
      ),
    ); // Scaffold
  }
}

class FoodMenu {
  String name = '', price = '';
  FoodMenu(this.name, this.price);
}
