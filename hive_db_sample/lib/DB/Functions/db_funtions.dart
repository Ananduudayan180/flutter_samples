import 'package:flutter/widgets.dart';
import 'package:hive_db_sample/DB/Model/data_model.dart';
import 'package:hive_flutter/hive_flutter.dart';

ValueNotifier<List<StudentModel>> studentListNotifier = ValueNotifier([]);

void addStudetsData(StudentModel value) async {
  final studentDB = await Hive.openBox<StudentModel>('student_db');
  await studentDB.add(value);
  studentListNotifier.value.add(value);
  studentListNotifier.value = List.from(studentListNotifier.value);
}

Future<void> getAllStudents() async {
  final studentDB = await Hive.openBox<StudentModel>('student_db');
  studentListNotifier.value.clear();
  studentListNotifier.value.addAll(studentDB.values);
  studentListNotifier.value = List.from(studentListNotifier.value);
}

Future<void> deleteStudent(value) async {
  final studentDB = await Hive.openBox<StudentModel>('student_db');
  var key = studentDB.keyAt(value);
  await studentDB.delete(key);
  studentListNotifier.value.remove(value);
  // studentListNotifier.value = List.from(studentListNotifier.value);
  getAllStudents();
}
