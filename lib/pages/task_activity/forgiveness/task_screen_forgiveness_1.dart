import 'package:flutter/material.dart';
import 'package:self_love/pages/task_activity/task_page.dart';

class TaskScreenForgiveness1 extends StatefulWidget {
  const TaskScreenForgiveness1({super.key});

  @override
  State<TaskScreenForgiveness1> createState() => _TaskScreenForgiveness1State();
}

class _TaskScreenForgiveness1State extends State<TaskScreenForgiveness1> {
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
                "Упражнение 1: «Огонь прощения»",
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
                  image: DecorationImage(image: AssetImage('assets/taskImages/forgiveness1.jpg'), fit: BoxFit.cover)
                ),
              ),
              const SizedBox(height: 16.0),
              const Text(
                  "Цель – освободиться от эмоционального груза и символически отпустить обиды или ошибки через творческий и ритуальный процесс.",
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
                "1.	Возьмите лист бумаги и напишите на нём:",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w800,
                ),
              ),
              const SizedBox(height: 8.0),
              const Text(
                "          Все обиды, которые вы держите на других.",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w800,
                ),
              ),
              const SizedBox(height: 8.0),
              const Text(
                "          Все ошибки, за которые вы не можете простить себя.",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w800,
                ),
              ),
              const SizedBox(height: 8.0),
              const Text(
                "2.	Пишите честно, выплёскивая эмоции на бумагу, не фильтруя мысли. Можете добавлять рисунки, если хотите.",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w800,
                ),
              ),
              const SizedBox(height: 8.0),
              const Text(
                "3.	Когда закончите, перечитайте написанное и скажите себе: «Я больше не хочу нести этот груз».",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w800,
                ),
              ),
              const SizedBox(height: 8.0),
              const Text(
                "4.	Если это безопасно, сожгите лист бумаги (или порвите его на мелкие кусочки, если огонь невозможен).",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w800,
                ),
              ),
              const SizedBox(height: 8.0),
              const Text(
                "5.	Наблюдайте, как слова исчезают, и представьте, как уходит боль и тяжесть.",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w800,
                ),
              ),
              const SizedBox(height: 8.0),
              const Text(
                "6.	Завершите упражнение фразой: «Я отпускаю это. Я прощаю. Я свободен(на)».",
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
                "•	Что вы чувствовали, когда писали обиды и ошибки?",
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
                "•	Как изменилось ваше состояние после того, как лист был уничтожен?",
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
                "•	Что означает для вас прощение в данный момент?",
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
                      taskStates[4][0] = true;
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