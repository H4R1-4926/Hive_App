import 'package:dat_base_hive/db/model/model.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

ValueNotifier<List<Student>> studentlistnoti = ValueNotifier([]);

Future<void> addStudent(Student value) async {
  // studentlistnoti.value.add(value);

  final studentdb = await Hive.openBox<Student>('Student_db');
  final _id = await studentdb.add(value);
  value.id = _id;
  studentlistnoti.value.add(value);
  studentlistnoti.notifyListeners();
}

Future<void> getAllstudent() async {
  final studentdb = await Hive.openBox<Student>('Student_db');
  studentlistnoti.value.clear();
  studentlistnoti.value.addAll(studentdb.values);
  studentlistnoti.notifyListeners();
}

Future<void> delstu(int id) async {
  final studentdb = await Hive.openBox<Student>('Student_db');
  await studentdb.delete(id);
  getAllstudent();
}
