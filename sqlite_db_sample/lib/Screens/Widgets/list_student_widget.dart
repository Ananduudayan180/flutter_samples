import 'package:flutter/material.dart';
import 'package:sqlite_db_sample/DB/Functions/db_functions.dart';
import 'package:sqlite_db_sample/DB/Model/data_model.dart';
import 'package:sqlite_db_sample/Screens/Widgets/add_student_widget.dart';

class ListStudentWidget extends StatelessWidget {
  const ListStudentWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: studentListNotifier,
      builder: (context, studentList, child) => ListView.separated(
        itemBuilder: (ctx, index) {
          return ListTile(
            leading: IconButton(
              onPressed: () {
                onEdit(studentList[index]);
              },
              icon: Icon(Icons.edit, color: Colors.blue),
            ),
            title: Text(studentList[index].name),
            subtitle: Text(studentList[index].age),
            trailing: IconButton(
              onPressed: () {
                deleteStudent(index);
              },
              icon: Icon(Icons.delete, color: Colors.red),
            ),
          );
        },
        separatorBuilder: (ctx, index) {
          return const Divider();
        },
        itemCount: studentList.length,
      ),
    );
  }

  void onEdit(StudentModel student) {
    studentId = student.id!;
    nameTextController.text = student.name;
    ageTextController.text = student.age;
    addOrUpdate.value = 'Update Student';
  }
}
