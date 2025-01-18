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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 30.0),
              const Text(
                "Упражнение 2: «Списки непринятия»",
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
                "1. Возьмите блокнот и ручку. Устройтесь удобно в спокойном месте, где вам никто не помешает, и настройтесь на честный и открытый разговор с собой.",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w800,
                ),
              ),
              const SizedBox(height: 8.0),
              const Text(
                "2. Напишите заголовок: «Качества, которые мне в себе не нравятся» и перечислите все качества, которые вызывают у вас дискомфорт или неприятие. Это могут быть как физические, так и личностные черты (например: «Я слишком медлительный», «Я часто сомневаюсь», «Мне сложно говорить «нет»»).",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w800,
                ),
              ),
              const SizedBox(height: 8.0),
              const Text(
                "3. Будьте честны, но не осуждайте себя за то, что пишете.",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w800,
                ),
              ),
              const SizedBox(height: 8.0),
              const Text(
                "4. Для каждого пункта в списке найдите альтернативное, нейтральное или даже положительное объяснение этого качества.",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w800,
                ),
              ),
              const SizedBox(height: 8.0),
              const Text(
                "5. Если сложно найти нейтральную сторону, задайте себе вопрос: «В каких ситуациях это качество помогало мне?»",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w800,
                ),
              ),
              const SizedBox(height: 8.0),
              const Text(
                "6. В завершении напишите небольшое обращение к себе. Например: «Я признаю, что все мои качества – часть меня. Даже те, которые мне сложно принять, несут в себе ценность. Я готов(а) видеть себя более целостно и с любовью»",
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