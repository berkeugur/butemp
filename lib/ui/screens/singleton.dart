import 'package:butemp/patterns/singleton.dart';
import 'package:butemp/ui/models/spacing.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const CounterApp());
}

class CounterApp extends StatelessWidget {
  const CounterApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const CounterScreen(),
    );
  }
}

class CounterScreen extends StatefulWidget {
  const CounterScreen({Key? key}) : super(key: key);

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Counter Singleton"),
      ),
      body: Padding(
        padding: EdgeInsets.all(Spacing.S),
        child: Column(children: [
          OutlinedButton(onPressed: () => Counter().upvalue(), child: Text("arttır")),
          OutlinedButton(onPressed: () => Counter().downvalue(), child: Text("azalt")),
        ]),
      ),
    );
  }
}
