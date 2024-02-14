import 'package:dat_base_hive/db/model/fun/db_fun.dart';
import 'package:dat_base_hive/db/model/model.dart';
import 'package:flutter/material.dart';

class Addstudent extends StatelessWidget {
  Addstudent({super.key});

  final _addstudent = TextEditingController();
  final _liststudent = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: [
          TextFormField(
            controller: _addstudent,
            decoration:
                InputDecoration(border: OutlineInputBorder(), hintText: 'Name'),
          ),
          SizedBox(height: 5),
          TextFormField(
            controller: _liststudent,
            decoration:
                InputDecoration(border: OutlineInputBorder(), hintText: 'age'),
          ),
          ElevatedButton.icon(
              onPressed: () {
                onAddstu();
              },
              icon: Icon(Icons.add),
              label: Text('Add'))
        ],
      ),
    );
  }

  Future<void> onAddstu() async {
    final _name = _addstudent.text.trim();
    final _age = _liststudent.text.trim();
    if (_name.isEmpty || _age.isEmpty) {
      return;
    }
    // print('$_name,$_age');

    final _stu = Student(name: _name, age: _age);

    addStudent(_stu);
  }
}
