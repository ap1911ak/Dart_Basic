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
  int number = 0; // Create State
  
  @override
  Widget build(BuildContext context) {
    List<Widget> data=[];
  data.add(Text("Click button for add number.",style: TextStyle(fontSize: 20, color: Colors.black)));
  data.add(Text(number.toString(),style: TextStyle(fontSize: 40, color: Colors.green)));
  
    return Scaffold(
      appBar: AppBar(title: Text("Hello Flutter")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:data,
        ), //Culumn
        //           child: Text(
        //             "Hooolll",
        //             style: TextStyle(fontSize: 30, color: Colors.green),
        //           ),

        //           child: Image(
        //             image: NetworkImage(
        //               "https://cdn.pixabay.com/photo/2016/04/19/21/10/frog-1339892_1280.jpg",
        //             ),
        //           ),
      ), //Center
      floatingActionButton: FloatingActionButton(
        onPressed:addNumber,
        child: Icon(Icons.add),
      ), //floatingActionButton
    ); // Scaffold
  }

  void addNumber() {
    setState(() {
      number++;
    });
  }
}
