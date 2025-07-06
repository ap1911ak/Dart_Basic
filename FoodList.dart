import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: " Number Add",
      home: MyHomePage(),
      theme: ThemeData(
        primarySwatch: Colors.green,
        appBarTheme: const AppBarTheme(backgroundColor: Colors.green),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  //Data
  List<FoodMenu> menu = [
    FoodMenu(
      "Somtum",
      "150",
      "https://cdn.pixabay.com/photo/2020/09/05/10/52/meal-5546215_960_720.jpg",
    ),
    FoodMenu(
      "Pork Fried Ride",
      "200",
      "https://cdn.pixabay.com/photo/2015/10/01/14/26/fried-rice-967081_1280.jpg",
    ),
  ];

  // Display
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Menu")),
      body: ListView.builder(
        itemCount: menu.length,
        itemBuilder: (BuildContext context, int index) {
          FoodMenu food = menu[index];
          return ListTile(
            leading: Image(image: NetworkImage(food.pic)),
            title: Text(food.name, style: TextStyle(fontSize: 20)),
            subtitle: Text(food.price),
            onTap: () {
              print(food.name);
            },
          );
        },
      ),
    );
  }
}

class FoodMenu {
  String name = '';
  String price = '';
  String pic = '';

  FoodMenu(this.name, this.price, this.pic);
}
