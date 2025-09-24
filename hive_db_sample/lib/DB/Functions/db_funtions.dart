import 'package:flutter/widgets.dart';
import 'package:hive_db_sample/DB/Model/data_model.dart';

ValueNotifier<List<StudentModel>> studentListNotifier = ValueNotifier([]);

void addStudetsData(StudentModel value) {
  studentListNotifier.value.add(value);
  studentListNotifier.notifyListeners();
}
