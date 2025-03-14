import 'package:flutter/material.dart';
import 'package:self_love/main.dart';
import 'package:self_love/pages/main/road_page.dart';

class TestPage extends StatefulWidget {
  const TestPage({super.key});

  @override
  State<TestPage> createState() => _TestPageState();
}

double testResult = 0;
bool testComplete = false;

class _TestPageState extends State<TestPage> {
  double sliderValue = 50.0;
  int count = 0;
  double testSum = 0;
  List<double> questionAnswers = [];
  List<String> questions = [
    "Я принимаю себя таким(ой), какой(ая) я есть, со всеми достоинствами и недостатками.",
    "Мне не нужно одобрение окружающих, чтобы чувствовать себя ценным(ой).",
    "Я не сравниваю себя с другими и не обесцениваю свои достижения.",
    "Мне легко сказать «нет», когда что-то противоречит моим интересам.",
    "Я не чувствую себя виноватым(ой), когда отстаиваю свои границы.",
    "Я не жертвую собой ради чужого одобрения.",
    "Я осознаю свои эмоции и понимаю, почему они возникают.",
    "Я понимаю, что влияет на мои решения и реакции.",
    "Я могу находиться «здесь и сейчас», не отвлекаясь на прошлое или будущее.",
    "Я не ругаю себя за ошибки, а учусь на них.",
    "Я позволяю себе отдыхать, когда чувствую усталость.",
    "Я проявляю терпение и доброту к себе в сложных ситуациях.",
    "Я способен(на) прощать себя за прошлые ошибки.",
  ];

  void _finishTest() {
    testResult = testSum / (count + 1) ~/ 0.1 / 10;
    testComplete = true;
    player.setAsset('assets/sfx/block_complete.mp3');
    Navigator.of(context).pop();
  }

  void _nextQuestion() {
    setState(() {
      questionAnswers.add(sliderValue);
      if (count == questions.length - 1) {
        _finishTest();
      } else {
        count += 1;
        testSum += sliderValue;
        sliderValue = 50.0;
        player.setAsset('assets/sfx/level_complete.mp3');
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF2BED1),
      appBar: AppBar(
        backgroundColor: const Color(0xFFF2BED1),
        title: const Text(
          "Тестирование",
          style: TextStyle(
            color: Colors.white,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(
            Icons.arrow_back_ios_new,
            color: Colors.white,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(25),
              child: Text(
                questions[count],
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Image.asset(
                  "assets/alertIcons/sad.png",
                  width: 45,
                  height: 45
                ),
                Image.asset(
                    "assets/alertIcons/verygood.png",
                    width: 45,
                    height: 45
                ),
              ],
            ),
            const SizedBox(height: 20),
            Slider(
              value: sliderValue,
              min: 0,
              max: 100,
              divisions: 100,
              activeColor: const Color(0xFFFE76A8),
              inactiveColor: const Color(0xFFFE93BB),
              onChanged: (value) {
                setState(() {
                  sliderValue = value;
                });
              },
            ),
            const SizedBox(height: 70),
            InkWell(
              onTap: _nextQuestion,
              child: Container(
                height: 55,
                width: 220,
                decoration: BoxDecoration(
                  color: const Color(0xFFFDCEDF),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: const Center(
                  child: Text(
                    "Далее",
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
    );
  }
}
