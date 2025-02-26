import 'dart:math';

import 'package:flutter/material.dart';
import 'package:self_love/pages/profile/profile_page.dart';

class TaskPage extends StatefulWidget {
  const TaskPage({super.key, required this.blockNum, required this.setRoadState});

  final int blockNum;
  final void Function() setRoadState;

  @override
  State<TaskPage> createState() => _TaskPageState();
}

class _TaskPageState extends State<TaskPage> {
  List<List<String>> routeNames = [
    ["/task_acceptance_3", "/task_acceptance_2", "/task_acceptance_1"],
    ['/task_personal_1', '/task_personal_2', '/task_personal_3'],
    ['/task_care_1', '/task_care_2', '/task_care_3'],
    ['/task_child_1', '/task_child_2', '/task_child_3'],
    ['/task_forgiveness_1', '/task_forgiveness_2', '/task_forgiveness_3']
  ];
  
  @override
  Widget build(BuildContext context) {
    callback = () {value = min(value + 0.067, 1); setState(() {});};
    return Scaffold(
      backgroundColor: const Color(0xFFFDCEDF),
      appBar: AppBar(
        backgroundColor: const Color(0xFFFDCEDF),
        leading: IconButton(
          icon: const Icon(Icons.chevron_left, color: Colors.white),
          onPressed: () {widget.setRoadState(); Navigator.of(context).pop();}
        ),
        centerTitle: true,
        title: const Text(
            'Упражнения блока',
            style: TextStyle(
              color: Colors.white,
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
      ),
      body: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(width: MediaQuery.of(context).size.width,),
              const Text(
                'Нажмите на элемент дерева',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Text(
                'для перехода к упражнению',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ]
          ),
          Center(child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                child: Container(
                  width: 260, height: 170,
                  decoration: const BoxDecoration(color: Color.fromARGB(0, 195, 198, 6))
                ),
                onTap: () {if (taskStates[widget.blockNum][2] == false) {Navigator.pushNamed(context, routeNames[widget.blockNum][2]);}}
              ),
               GestureDetector(
                child: Container(
                  width: 90, height: 110,
                  decoration: const BoxDecoration(color: Color.fromARGB(0, 186, 54, 54))
                ),
                onTap: () {if (taskStates[widget.blockNum][1] == false) {Navigator.pushNamed(context, routeNames[widget.blockNum][1]);}}
              ),
              GestureDetector(
                child: Container(
                  width: 180, height: 150,
                  decoration: const BoxDecoration(color: Color.fromARGB(0, 38, 93, 195))
                ),
                onTap: () {if (taskStates[widget.blockNum][0] == false) {Navigator.pushNamed(context, routeNames[widget.blockNum][0]);}}
              )
            ]
          )),
          Padding(
            padding: EdgeInsets.only(right: MediaQuery.of(context).size.width / 2 + 70),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: MediaQuery.of(context).size.height),
                SizedBox(height: 360, child: Image.asset('assets/taskIcons/tasks_sign.png'))
              ]
            )
          ),
          Center(child:  taskStates[widget.blockNum][0] ? Padding(
            padding: const EdgeInsets.only(top: 285),
            child: SizedBox(width: 170, child: Image.asset('assets/taskIcons/RootsColored.png'))
          ) : GestureDetector(
            child: Padding(
              padding: const EdgeInsets.only(top: 275),
              child: SizedBox(width: 170, child: Image.asset('assets/taskIcons/Roots.png'))
            ),
            onTap: () => Navigator.pushNamed(context, routeNames[widget.blockNum][0]),
          )),

          Center(child:  taskStates[widget.blockNum][1] ? Padding(
            padding: const EdgeInsets.only(bottom: 120),
            child: SizedBox(width: 300, child: Image.asset('assets/taskIcons/TreeColored1.png'))
          ) : GestureDetector(
            child: Padding(
              padding: const EdgeInsets.only(bottom: 125),
              child: SizedBox(width: 300, child: Image.asset('assets/taskIcons/Tree1.png'))
            ),
            onTap: () => Navigator.pushNamed(context, routeNames[widget.blockNum][1]),
          )),

          Center(child:  taskStates[widget.blockNum][2] ? Padding(
            padding: const EdgeInsets.only(bottom: 243),
            child: SizedBox(width: 300, child: Image.asset('assets/taskIcons/TreeColored2.png'))
          ) : GestureDetector(
            child: Padding(
              padding: const EdgeInsets.only(bottom: 237),
              child: SizedBox(width: 300, child: Image.asset('assets/taskIcons/Tree2.png'))
            ),
            onTap: () => Navigator.pushNamed(context, routeNames[widget.blockNum][2]),
          )),
        ]
      )
    );
  }
}

List<List<bool>> taskStates = [
  [false, false, false],
  [false, false, false],
  [false, false, false],
  [false, false, false],
  [false, false, false]
];

void Function()? callback;