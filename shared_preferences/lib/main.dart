import 'package:flutter/material.dart';
import 'package:flutter_sample/screen_splash.dart';

const trueOrFalse = 'trueOrFalse';
void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.green),
      home: ScreenSplash(),
    );
  }
}
