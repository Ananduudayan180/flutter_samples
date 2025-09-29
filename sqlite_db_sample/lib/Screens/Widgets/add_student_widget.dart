import 'package:flutter/material.dart';
import 'package:sqlite_db_sample/DB/Functions/db_functions.dart';
import 'package:sqlite_db_sample/DB/Model/data_model.dart';

final nameTextController = TextEditingController();
final ageTextController = TextEditingController();
int studentId = 0;

ValueNotifier<String> addOrUpdate = ValueNotifier('Add Student');

class AddStudentWidget extends StatelessWidget {
  const AddStudentWidget({super.key});

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
          child: ValueListenableBuilder(
            valueListenable: addOrUpdate,
            builder: (context, value, child) {
              return Text(addOrUpdate.value);
            },
          ),
        ),
      ],
    );
  }

  Future<void> addStudentButtonClicked() async {
    final name = nameTextController.text;
    final age = ageTextController.text;
    nameTextController.clear();
    ageTextController.clear();

    if (addOrUpdate.value == 'Add Student') {
      if (name.isEmpty || age.isEmpty) {
        return;
      } else {
        final student = StudentModel(name: name, age: age);
        addStudentsData(student);
      }
    } else {
      print('update');
      addOrUpdate.value = 'Add Student';

      final student = StudentModel(name: name, age: age, id: studentId);
      updateStudent(student);
    }
  }
}
