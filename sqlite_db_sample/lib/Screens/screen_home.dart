import 'package:flutter/material.dart';
import 'package:sqlite_db_sample/DB/Functions/db_functions.dart';
import 'package:sqlite_db_sample/Screens/Widgets/add_student_widget.dart';
import 'package:sqlite_db_sample/Screens/Widgets/list_student_widget.dart';

class ScreenHome extends StatefulWidget {
  const ScreenHome({super.key});

  @override
  State<ScreenHome> createState() => _ScreenHomeState();
}

class _ScreenHomeState extends State<ScreenHome> {
  @override
  void initState() {
    getAllStudents();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            children: [
              AddStudentWidget(),
              Expanded(child: ListStudentWidget()),
            ],
          ),
        ),
      ),
    );
  }

  void onEdit(student) {}
}
