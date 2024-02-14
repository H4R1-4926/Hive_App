import 'package:dat_base_hive/db/model/fun/db_fun.dart';
import 'package:flutter/material.dart';

import '../../db/model/model.dart';

class Liststu extends StatelessWidget {
  const Liststu({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: studentlistnoti,
      builder: (context, List<Student> studentlist, child) {
        return ListView.separated(
            itemBuilder: ((context, index) {
              final data = studentlist[index];
              return ListTile(
                title: Text(data.name),
                subtitle: Text(data.age),
                trailing: IconButton(
                    onPressed: () {
                      if (data.id != null) {
                        delstu(data.id!);
                      } else {
                        print('error');
                      }
                    },
                    icon: Icon(Icons.delete)),
              );
            }),
            separatorBuilder: (context, index) {
              return Divider();
            },
            itemCount: studentlist.length);
      },
    );
  }
}
