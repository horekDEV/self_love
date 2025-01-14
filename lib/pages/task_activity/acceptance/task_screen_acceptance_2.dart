import 'package:flutter/material.dart';

class TaskScreenAcceptance2 extends StatefulWidget {
  const TaskScreenAcceptance2({super.key});

  @override
  State<TaskScreenAcceptance2> createState() => _TaskScreenAcceptance2State();
}

class _TaskScreenAcceptance2State extends State<TaskScreenAcceptance2> {
  @override
  Widget build(BuildContext context) {
    bool isChecked = false;

    return Scaffold(
      backgroundColor: const Color(0xFFFDCEDF),
      body: Column(
        children: [
          const Text(
            "\"Упражнение\" - Диалог с зеркалом",
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          Container(
            width: 270,
            height: 170,
            decoration: const BoxDecoration(
                color: Color(0xFFFDA1C3),
                borderRadius: BorderRadius.all(Radius.circular(25))
            ),
          ),
          const Text(
            "Что нужно делать?",
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.w800,
            ),
          ),
          const Column(
            children: [
              Text(
                "1. Найдите уединённое место с зеркалом.",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w800,
                ),
              ),
              Text(
                "2. Посмотрите себе в глаза и медленно скажите вслух пять своих качеств, которые вы цените.",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w800,
                ),
              ),
              Text(
                "3. Затем произнесите фразу: «Я принимаю себя таким(ой), какой(ая) я есть, со всеми недостатками и достоинствами».",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w800,
                ),
              ),
              Text(
                "4. Повторите это несколько раз, внимательно наблюдая за своими эмоциями и реакцией",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w800,
                ),
              ),
            ],
          ),
          Row(
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
              const Text(
                "Нажимая на кнопку вы подтверждаете\n что выполнили упражнение блока!",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ],
          ),
          Container(
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
        ],
      ),
    );
  }
}