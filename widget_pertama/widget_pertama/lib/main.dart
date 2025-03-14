import 'package:flutter/material.dart';

void main() {
  runApp(HomePage());
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 198, 40, 40),
          leading: Icon(Icons.home),
          title: Text('Flutter Widget Sederhana'),
        ),
      ),
    );
  }
}