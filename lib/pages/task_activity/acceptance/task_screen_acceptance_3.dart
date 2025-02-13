import 'package:flutter/material.dart';
import 'package:self_love/pages/task_activity/task_page.dart';

class TaskScreenAcceptance1 extends StatefulWidget {
  const TaskScreenAcceptance1({super.key});

  @override
  State<TaskScreenAcceptance1> createState() => _TaskScreenAcceptance1State();
}

class _TaskScreenAcceptance1State extends State<TaskScreenAcceptance1> {
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
                "Упражнение 3: «Коллаж принятия себя»",
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
                  image: DecorationImage(image: AssetImage('assets/taskImages/acceptance3.jpg'), fit: BoxFit.cover)
                ),
              ),
              const SizedBox(height: 16.0),
              const Text(
                  "Цель – научиться видеть себя целостной личностью, признать и принять свои преимущества и недостатки как важную часть себя.",
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
                "1. Возьмите ватман, журналы, фломастеры, клей. Приготовьтесь искать образы, которые вызывают разные эмоции: восхищение, принятие, даже отторжение.",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w800,
                ),
              ),
              const SizedBox(height: 8.0),
              const Text(
                "2. Ответьте на вопросы:\n Какие качества я в себе люблю? Что мне сложно в себе принять? Как я могу интегрировать все свои стороны в одно целое?",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w800,
                ),
              ),
              const SizedBox(height: 8.0),
              const Text(
                "3. Создайте коллаж: Разделите лист на две зоны: «Свет» и «Тень» (или любые другие символичные названия). На одной стороне поместите образы своих сильных сторон. На другой стороне — образы тех сторон, которые вы отвергаете. В центре нарисуйте или разместите символ, который объединяет обе части (например, мост, сердце, дерево).",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w800,
                ),
              ),
              const SizedBox(height: 8.0),
              const Text(
                '''4. Подпишите коллаж фразами:
«Я принимаю себя полностью».
«Мои сильные и слабые стороны делают меня уникальным/уникальной».
«Я не обязан/обязана быть идеальным/идеальной».''',
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
                "•	Что общего у моих сильных и слабых сторон?",
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
                "•	Как они взаимодействуют друг с другом?",
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
                "•	Могу ли я видеть ценность в каждой из сторон?",
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
                      taskStates[0][2] = true;
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
