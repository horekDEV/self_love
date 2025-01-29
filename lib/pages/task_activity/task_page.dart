import 'package:flutter/material.dart';

class TaskPage extends StatefulWidget {
  const TaskPage({super.key});

  @override
  State<TaskPage> createState() => _TaskPageState();
}

class _TaskPageState extends State<TaskPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFDCEDF),
      appBar: AppBar(
        backgroundColor: const Color(0xFFFDCEDF),
        leading: const SizedBox(),
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
          Center(child: SizedBox(width: 300, child: Image.asset('assets/taskIcons/tree.png'))),
          Center(child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                child: Container(
                  width: 260, height: 170,
                  decoration: const BoxDecoration(color: Color.fromARGB(0, 195, 198, 6))
                ),
                onTap: () => Navigator.pushNamed(context, "/task_acceptance_1")
              ),
               GestureDetector(
                child: Container(
                  width: 90, height: 110,
                  decoration: const BoxDecoration(color: Color.fromARGB(0, 186, 54, 54))
                ),
                onTap: () => Navigator.pushNamed(context, "/task_acceptance_2")
              ),
              GestureDetector(
                child: Container(
                  width: 180, height: 150,
                  decoration: const BoxDecoration(color: Color.fromARGB(0, 38, 93, 195))
                ),
                onTap: () => Navigator.pushNamed(context, "/task_acceptance_3")
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
          )
        ]
      )
    );
  }
}