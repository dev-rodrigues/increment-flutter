import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      theme: ThemeData(primarySwatch: Colors.deepPurple), home: HomePage()));
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var count = 0;

  void increment() {
    count++;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Counter"),
      ),
      body: Center(
        child: Center(
            child: Text(
          "Counter\n$count",
          textAlign: TextAlign.center,
        )),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          increment();
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
