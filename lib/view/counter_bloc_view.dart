import 'package:flutter/material.dart';

class CounterBlocView extends StatelessWidget {
  const CounterBlocView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter Bloc'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            const SizedBox(height: 8),
            Text('Result: 0'),
          ],
        ),
      ),
      floatingActionButton: Wrap(
        direction: Axis.vertical,
        spacing: 8,
        children: <Widget>[
          FloatingActionButton(
            onPressed: () {},
            tooltip: 'Increment',
            child: const Icon(Icons.add),
          ),
          FloatingActionButton(
            onPressed: () {},
            tooltip: 'Decrement',
            child: const Icon(Icons.remove),
          ),
          FloatingActionButton(
            onPressed: () {},
            tooltip: 'Reset',
            child: const Icon(Icons.reset_tv),
          ),
        ],
      ),
    );
  }
}
