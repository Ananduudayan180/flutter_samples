import 'package:flutter/material.dart';
import 'package:hive_db_sample/DB/Functions/db_funtions.dart';
import 'package:hive_db_sample/DB/Model/data_model.dart';

class AddStudentWidget extends StatelessWidget {
  final nameTextController = TextEditingController();
  final ageTextController = TextEditingController();
  AddStudentWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextFormField(
          controller: nameTextController,
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            hint: Text('Name'),
          ),
        ),
        SizedBox(height: 20),
        TextFormField(
          controller: ageTextController,
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            hint: Text('Age'),
          ),
        ),
        SizedBox(height: 20),
        ElevatedButton(
          onPressed: () {
            addStudentButtonClicked();
          },
          child: Text('Add'),
        ),
      ],
    );
  }

  Future<void> addStudentButtonClicked() async {
    final name = nameTextController.text;
    final age = ageTextController.text;

    if (name.isEmpty || age.isEmpty) {
      return;
    } else {
      final student = StudentModel(name: name, age: age);
      addStudetsData(student);
    }
  }
}
