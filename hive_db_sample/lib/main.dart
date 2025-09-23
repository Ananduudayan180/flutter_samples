import 'package:flutter/material.dart';
import 'package:hive_db_sample/Screens/screen_home.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Hive DB Sample',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: ScreenHome(),
    );
  }
}
