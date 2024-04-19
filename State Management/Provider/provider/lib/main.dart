import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => Counter(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Widgets Exercise 1',
      home: MyHomePage(title: 'Widgets '),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;

  const MyHomePage({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,

      ),
      body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(
                'You have pushed the button this many times:',
              ),
              Consumer<Counter>(
          builder: (context, counter, child) => Text(
            '${counter.count}',
            style: Theme.of(context).textTheme.headlineMedium,
          ),
        ),
            ],
          ),
        ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
        FloatingActionButton(
        onPressed: Provider.of<Counter>(context, listen: false).increment,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
      const SizedBox(width: 10),
      FloatingActionButton(
        onPressed: Provider.of<Counter>(context, listen: false).decrement,
        tooltip: 'Decrement',
        child: const Icon(Icons.remove),
      )
        ]
      ),
    );
  }
}

class Counter with ChangeNotifier {
  int _count = 0;

  int get count => _count < 0 ? 0 : _count;

  void increment() {
    _count++;
    notifyListeners();
  }
  void decrement() {
    _count--;
    notifyListeners();
  }
}