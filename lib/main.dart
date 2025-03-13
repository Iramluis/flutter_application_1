import 'package:flutter/material.dart';
void main() => runApp(const MyApp());
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Contador',
      theme: ThemeData.dark().copyWith(primaryColor: Colors.amber),
      home: const CounterScreen(),
    );
  }
}

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  _CounterScreenState createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int _counter = 0;

void _increment() => setState(() => _counter++);
void _decrement() => setState(() {
  if (_counter > 0) _counter--;
});
void _multiply() => setState(() => _counter *= 2);
void _divide() => setState(() => _counter = (_counter / 2).floor());

  @override
  Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
    title: const Text('Contador'),
    centerTitle: true,
    backgroundColor: const Color.fromARGB(255, 35, 53, 53),
  ),
    backgroundColor: const Color.fromARGB(255, 5, 114, 114),
    body: Center(
      child: Text(
      '$_counter',
      style: const TextStyle(
      fontSize: 90,
      fontWeight: FontWeight.bold,
      color: Colors.black,
    ),
  ),
),
      floatingActionButton: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            FloatingActionButton(
              onPressed: _increment,
              backgroundColor: Colors.green,
              tooltip: "Increment",
              child: const Icon(Icons.add),
            ),
            FloatingActionButton(
              onPressed: _decrement,
              backgroundColor: Colors.green,
              tooltip: "Decrement",
              child: const Icon(Icons.remove),
            ),
            FloatingActionButton(
              onPressed: _multiply,
              backgroundColor: Colors.blueAccent,
              tooltip: "Multiply by 2",
              child: const Icon(Icons.close),
            ),
            FloatingActionButton(
              onPressed: _divide,
              backgroundColor: Colors.blue,
              tooltip: "Divide by 2",
              child: const Icon(Icons.horizontal_rule),
            ),
          ],
        ),
      ),
    );
  }
}
