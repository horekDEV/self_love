import 'package:flutter/material.dart';
import 'package:self_love/pages/task_activity/task_page.dart';

class TaskScreenPersonal3 extends StatefulWidget {
  const TaskScreenPersonal3({super.key});

  @override
  State<TaskScreenPersonal3> createState() => _TaskScreenPersonal3State();
}

class _TaskScreenPersonal3State extends State<TaskScreenPersonal3> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFDCEDF),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 30.0),
              const Text(
                "Упражнение 3: «Сила „Нет“»",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 18.0),
              Container(
                width: double.infinity,
                height: 170,
                decoration: const BoxDecoration(
                  color: Color(0xFFFDA1C3),
                  borderRadius: BorderRadius.all(Radius.circular(25)),
                  image: DecorationImage(image: AssetImage('assets/taskImages/boundaries3.jpg'), fit: BoxFit.cover)
                ),
              ),
              const SizedBox(height: 16.0),
              const Text(
                  "Цель – научиться говорить «нет», не испытывая чувства вины. Практика помогает снизить тревогу, связанную с отказом, и укрепить уверенность.",
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w800,
                  ),
                ),
              const SizedBox(height: 20.0),
              const Center( // Центрируем текст
                child: Text(
                  "Что нужно делать?",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ),
              const SizedBox(height: 20.0),
              const Text(
                "1. Вспомните ситуацию, когда вам было сложно сказать «нет».",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w800,
                ),
              ),
              const SizedBox(height: 8.0),
              const Text(
                "2. Запишите, как бы выглядел идеальный сценарий, где вы уверенно говорите «нет».",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w800,
                ),
              ),
              const SizedBox(height: 8.0),
              const Text(
                "3. Проговорите этот сценарий вслух.",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w800,
                ),
              ),
              const SizedBox(height: 20.0),
              const Center( // Центрируем текст
                child: Text(
                  "Рефлексия",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ),
              const SizedBox(height: 20.0),
              const Text(
                "•	Как вы себя чувствовали, представляя этот сценарий?",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w800,
                ),
              ),
              SizedBox(
                child: TextFormField(
                  style: const TextStyle(color: Colors.white),
                  cursorColor: Colors.white,
                  decoration: const InputDecoration(
                    border: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.white, width: 3.0),
                    ),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.white, width: 3.0),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.white, width: 3.0),
                    ),
                    contentPadding: EdgeInsets.only(bottom: -6),
                  ),
                ),
              ),
              const SizedBox(height: 8.0),
              const Text(
                "•	Что мешает вам говорить «нет»?",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w800,
                ),
              ),
              SizedBox(
                child: TextFormField(
                  style: const TextStyle(color: Colors.white),
                  cursorColor: Colors.white,
                  decoration: const InputDecoration(
                    border: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.white, width: 3.0),
                    ),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.white, width: 3.0),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.white, width: 3.0),
                    ),
                    contentPadding: EdgeInsets.only(bottom: -6),
                  ),
                ),
              ),
              const SizedBox(height: 24.0),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Checkbox(
                    value: isChecked,
                    activeColor: const Color(0xFFFDA1C3),
                    onChanged: (newChecked) {
                      setState(() {
                        isChecked = newChecked!;
                      });
                    },
                  ),
                  const Expanded(
                    child: Text(
                      "Нажимая на кнопку вы подтверждаете\nчто выполнили упражнение блока!",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20.0),
              Center(
                child: GestureDetector(
                  child: Container(
                    height: 55,
                    width: 220,
                    decoration: BoxDecoration(
                      color: const Color(0xFFF2BED1),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: const Center(
                      child: Text(
                        "Готово",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  onTap: () {
                    if (isChecked) {
                      taskStates[1][2] = true;
                      if (callback != null) {callback!();}
                      Navigator.of(context).pop();
                    }
                  }
                )
              ),
            ],
          ),
        ),
      ),
    );
  }
}