import 'package:flutter/material.dart';
import 'package:hive_db_sample/Screens/widgets/add_student_widget.dart';
import 'package:hive_db_sample/Screens/widgets/list_student_widget.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

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
}
