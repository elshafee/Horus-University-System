import 'package:flutter/material.dart';

class Cafe extends StatefulWidget {
  const Cafe({Key? key}) : super(key: key);

  @override
  State<Cafe> createState() => _CafeState();
}

class _CafeState extends State<Cafe> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Cafe"),
      ),
    );
  }
}
