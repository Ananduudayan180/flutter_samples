import 'package:flutter/widgets.dart';
import 'package:sqlite_db_sample/DB/Model/data_model.dart';

ValueNotifier<List<StudentModel>> studentListNotifier = ValueNotifier([]);

void addStudetsData(StudentModel value) async {
  studentListNotifier.value.add(value);
  studentListNotifier.value = List.from(studentListNotifier.value);
}

Future<void> getAllStudents() async {}

Future<void> deleteStudent(value) async {}
