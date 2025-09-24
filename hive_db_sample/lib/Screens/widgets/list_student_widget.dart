import 'package:flutter/material.dart';
import 'package:hive_db_sample/DB/Functions/db_funtions.dart';

class ListStudentWidget extends StatelessWidget {
  const ListStudentWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: studentListNotifier,
      builder: (context, studentList, child) => ListView.separated(
        itemBuilder: (ctx, index) {
          return ListTile(
            title: Text(studentList[index].name),
            subtitle: Text(studentList[index].age),
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
