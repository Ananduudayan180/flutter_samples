import 'package:flutter/material.dart';
import 'package:sqlite_db_sample/DB/Functions/db_functions.dart';

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
              onPressed: () {},
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
}
