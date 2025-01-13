import 'package:flutter/material.dart';

class TaskScreen1 extends StatefulWidget {
  const TaskScreen1({super.key});

  @override
  State<TaskScreen1> createState() => _TaskScreen1State();
}

class _TaskScreen1State extends State<TaskScreen1> {
  @override
  Widget build(BuildContext context) {
    return const Center(child: Text('screen 1'));
  }
}