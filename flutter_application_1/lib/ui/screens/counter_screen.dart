import 'package:flutter/material.dart';
import 'package:flutter_application_1/ui/widgets/my_form_field.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}
class _CounterScreenState extends State<CounterScreen> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Counter: $_counter', style: TextStyle(fontSize: 24)),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: _incrementCounter,
            child: Text('Increase'),
          ),
        ],
      ),
    );
  }
}