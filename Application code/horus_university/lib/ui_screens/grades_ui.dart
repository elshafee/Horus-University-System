import 'package:flutter/material.dart';

class Grades extends StatefulWidget {
  const Grades({Key? key}) : super(key: key);

  @override
  State<Grades> createState() => _GradesState();
}

class _GradesState extends State<Grades> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Grades"),
      ),
    );
  }
}
