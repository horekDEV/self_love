import 'package:flutter/material.dart';
import 'package:self_love/pages/task_activity/task_page.dart';

class TaskScreenAcceptance3 extends StatefulWidget {
  const TaskScreenAcceptance3({super.key});

  @override
  State<TaskScreenAcceptance3> createState() => _TaskScreenAcceptance3State();
}

class _TaskScreenAcceptance3State extends State<TaskScreenAcceptance3> {
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
                "Упражнение 1: «Диалог с зеркалом»",
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
                  image: DecorationImage(image: AssetImage('assets/taskImages/acceptance1.jpg'), fit: BoxFit.cover)
                ),
              ),
              const SizedBox(height: 16.0),
              const Text(
                  "Цель – развить навык принятия себя, увидеть свою ценность и уникальность. Это упражнение помогает преодолеть внутренний критицизм и развивает привычку говорить с собой с уважением и любовью.",
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
                "1. Найдите уединённое место с зеркалом.",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w800,
                ),
              ),
              const SizedBox(height: 8.0),
              const Text(
                "2. Посмотрите себе в глаза и медленно скажите вслух пять своих качеств, которые вы цените.",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w800,
                ),
              ),
              const SizedBox(height: 8.0),
              const Text(
                "3. Затем произнесите фразу: «Я принимаю себя таким(ой), какой(ая) я есть, со всеми недостатками и достоинствами».",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w800,
                ),
              ),
              const SizedBox(height: 8.0),
              const Text(
                "4. Повторите это несколько раз, внимательно наблюдая за своими эмоциями и реакцией.",
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
                "•	Что вы чувствовали во время выполнения?",
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
                "•	Вам было легко или сложно говорить эти слова? Почему?",
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
                "•	Что бы вы хотели добавить к своему «диалогу»?",
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
                      taskStates[0][0] = true;
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