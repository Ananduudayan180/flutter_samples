import 'package:flutter/widgets.dart';
import 'package:sqflite/sqflite.dart';
import 'package:sqlite_db_sample/DB/Model/data_model.dart';
import 'package:sqlite_db_sample/Screens/Widgets/list_student_widget.dart';

ValueNotifier<List<StudentModel>> studentListNotifier = ValueNotifier([]);

late Database db;

Future<void> initializeDataBase() async {
  db = await openDatabase(
    'student_db',
    version: 1,
    onCreate: (db, version) async {
      await db.execute(
        'CREATE TABLE student(id INTEGER PRIMARY KEY, name TEXT, age TEXT)',
      );
    },
  );
}

void addStudentsData(StudentModel value) async {
  await db.rawInsert('INSERT INTO student (name,age) VALUES (?,?)', [
    value.name,
    value.age,
  ]);
  getAllStudents();
}

Future<void> getAllStudents() async {
  studentListNotifier.value.clear();
  final value = await db.rawQuery('SELECT * FROM student');
  print(value);
  for (var map in value) {
    final student = StudentModel.fromMap(map);
    print(student);
    studentListNotifier.value.add(student);
  }
  studentListNotifier.notifyListeners();
}

Future<void> deleteStudent(index) async {
  print(index);
  final student = studentListNotifier.value[index];
  await db.delete('student', where: 'id = ?', whereArgs: [student.id]);
  getAllStudents();
}

Future<void> updateStudent(StudentModel student) async {
  final name = student.name;
  final age = student.age;
  final id = student.id;

  final studentMap = {'name': name, 'age': age, 'id': id};

  await db.update(
    'student',
    studentMap,
    where: 'id = ?',
    whereArgs: [studentMap['id']],
  );
  getAllStudents();
}
