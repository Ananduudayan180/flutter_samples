import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final ValueNotifier<int> counter = ValueNotifier(0);
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            counter.value += 1;
          },
        ),
        appBar: AppBar(
          title: Text('Value Lisenable Buildr Sample'),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: SafeArea(
          child: Center(
            child: ValueListenableBuilder(
              valueListenable: counter,
              builder: (context, value, child) => Text('$value'),
            ),
          ),
        ),
      ),
    );
  }
}
