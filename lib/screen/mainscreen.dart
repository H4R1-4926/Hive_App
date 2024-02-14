import 'package:dat_base_hive/db/model/fun/db_fun.dart';
import 'package:dat_base_hive/screen/widgets.dart/addstu.dart';
import 'package:dat_base_hive/screen/widgets.dart/liststu.dart';
import 'package:flutter/material.dart';

class Screenmain extends StatelessWidget {
  const Screenmain({super.key});

  @override
  Widget build(BuildContext context) {
    getAllstudent();
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('main ui'),
        ),
        body: Column(
          children: [Addstudent(), const Expanded(child: Liststu())],
        ),
      ),
    );
  }
}
