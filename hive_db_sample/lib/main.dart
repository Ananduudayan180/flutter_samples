import 'package:flutter/material.dart';
import 'package:hive_db_sample/DB/Functions/db_funtions.dart';
import 'package:hive_db_sample/DB/Model/data_model.dart';
import 'package:hive_db_sample/Screens/screen_home.dart';
import 'package:hive_flutter/adapters.dart';

Future<void> main(List<String> args) async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  if (!Hive.isAdapterRegistered(StudentModelAdapter().typeId)) {
    Hive.registerAdapter(StudentModelAdapter());
  }
  getAllStudents();

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
