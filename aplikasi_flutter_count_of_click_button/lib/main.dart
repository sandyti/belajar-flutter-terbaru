import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Click Counter',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const CounterPage(title: 'CLICK COUNTER SANDY APP'),
    );
  }
}

class CounterPage extends StatefulWidget {
  final String title;

  const CounterPage({Key? key, required this.title}) : super(key: key);

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _decrementCounter() {
    setState(() {
      if (_counter > 0) {
        _counter--;
      }
    });
  }

  void _resetCounter() {
    setState(() {
      _counter = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title, style: const TextStyle(fontSize: 22.0, fontWeight: FontWeight.bold)),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Image.network(
              'data:image/jpeg;base64,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',
              height: 150,
              width: 150,
              fit: BoxFit.cover,
            ),
            const SizedBox(height: 20.0),
            const Text(
              'SELAMAT DATANG DI APLIKASI SANDY',
              style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold, color: Colors.blueAccent),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20.0),
            const Text(
              'BERAPA BANYAK KAMU MENGKLIK :',
              style: TextStyle(fontSize: 16.0),
              textAlign: TextAlign.center,
            ),
            Text(
              '$_counter',
              style: const TextStyle(fontSize: 40.0, fontWeight: FontWeight.bold, color: Colors.blue),
            ),
            const SizedBox(height: 30.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                ElevatedButton(
                  onPressed: _incrementCounter,
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
                  child: const Text('Increment', style: TextStyle(color: Colors.white)),
                ),
                const SizedBox(width: 20.0),
                ElevatedButton(
                  onPressed: _decrementCounter,
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.orange),
                  child: const Text('Decrement', style: TextStyle(color: Colors.white)),
                ),
                const SizedBox(width: 20.0),
                ElevatedButton(
                  onPressed: _resetCounter,
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
                  child: const Text('Reset', style: TextStyle(color: Colors.white)),
                ),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        backgroundColor: Colors.blue,
        child: const Icon(Icons.add, size: 30.0, color: Colors.white),
      ),
    );
  }
}

