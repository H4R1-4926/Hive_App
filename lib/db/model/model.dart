import 'package:hive_flutter/hive_flutter.dart';
part 'model.g.dart';

@HiveType(typeId: 1)
class Student {
  // @HiveField(0)
  // int? id;

  @HiveField(1)
  final String name;
  @HiveField(2)
  final String age;
  @HiveField(0)
  int? id;

  Student({required this.name, required this.age, this.id});
}
