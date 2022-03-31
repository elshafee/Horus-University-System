import 'package:flutter/material.dart';
import 'package:horus_university/utilities/drawer_files.dart';

class Financial extends StatefulWidget {
  const Financial({Key? key}) : super(key: key);

  @override
  State<Financial> createState() => _FinancialState();
}

class _FinancialState extends State<Financial> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Financial"),
      ),
      drawer: const Drawe(),
      body: Center(
        child: Image.asset(
          'assets/images/fin.png',
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
