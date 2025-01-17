import 'package:flutter/material.dart';

class TaskScreenPersonal2 extends StatefulWidget {
  const TaskScreenPersonal2({super.key});

  @override
  State<TaskScreenPersonal2> createState() => _TaskScreenPersonal2State();
}

class _TaskScreenPersonal2State extends State<TaskScreenPersonal2> {
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
                "Упражнение 2: «Четыре шага к границам»",
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
                ),
              ),
              const SizedBox(height: 16.0),
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
                "1. Вспомните конкретную ситуацию, в которой ваши личные границы были нарушены или вам было некомфортно. Например: «Коллега часто перебивает меня на совещаниях, и я чувствую, что моё мнение обесценивается».",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w800,
                ),
              ),
              const SizedBox(height: 8.0),
              const Text(
                "2. Постарайтесь описать ситуацию максимально конкретно: Что произошло? Кто был вовлечён? Как это происходило?",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w800,
                ),
              ),
              const SizedBox(height: 8.0),
              const Text(
                "3. Опишите, какие эмоции вызвала эта ситуация. Например: «Я чувствовал(а) раздражение, беспомощность, обиду». Важно признать и назвать свои эмоции, не обесценивая их и не осуждая себя за них.",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w800,
                ),
              ),
              const SizedBox(height: 8.0),
              const Text(
                "4. Сформулируйте, как бы вы хотели, чтобы с вами поступили в этой ситуации. Например: «Я хочу, чтобы коллега ждал своей очереди, прежде чем говорить, и уважал моё право завершить мысль».",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w800,
                ),
              ),
              const SizedBox(height: 8.0),
              const Text(
                "5. Сформулируйте границу чётко, позитивно и без агрессии. Формула: «Когда происходит ___, я чувствую ___, поэтому я прошу ___». Например: «Когда меня перебивают, я чувствую раздражение и обиду, поэтому я прошу не перебивать меня, пока я говорю».",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w800,
                ),
              ),
              const SizedBox(height: 8.0),
              const Text(
                "6. Встаньте перед зеркалом или запишите на диктофон, как вы озвучиваете свои границы. Скажите это уверенно, но спокойно, с уважением к себе и собеседнику. Например: «Мне важно, чтобы меня слушали, когда я говорю. Пожалуйста, дождитесь, пока я закончу мысль».",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w800,
                ),
              ),
              const SizedBox(height: 8.0),
              const Text(
                "7. Повторите несколько раз, пока не почувствуете уверенность.",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w800,
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}