import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fluttertoast/fluttertoast.dart';

class TestPage extends StatefulWidget {
  const TestPage({super.key});

  @override
  State<TestPage> createState() => _TestPageState();
}

class _TestPageState extends State<TestPage> {
  double sliderValue = 50.0;
  int count = 0;
  List<String> questions = [
    "бла 1",
    "бла 2",
    "бла 3",
    "бла 4",
    "бла 5",
    "бла 6",
    "бла 7",
    "бла 8",
    "бла 9",
    "бла 10",
    "бла 11",
    "бла 12",
    "бла 13",
    "бла 14",
    "бла 15",
    "бла 16",
    "бла 17",
    "бла 18",
    "бла 19",
    "бла 20",
    "бла 21",
    "бла 22",
    "бла 23",
    "бла 24",
    "бла 25",
    "бла 26",
    "бла 27",
    "бла 28",
    "бла 29",
    "бла 30",
  ];

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
                SvgPicture.asset(
                  "assets/registrationIcons/google.svg",
                  width: 45,
                  height: 45,
                ),
                SvgPicture.asset(
                  "assets/registrationIcons/google.svg",
                  width: 45,
                  height: 45,
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
              onTap: () {
                setState(() {
                  if (count == questions.length - 1) {
                    Fluttertoast.showToast(
                      msg: "Вы успешно завершили тестирование!",
                      toastLength: Toast.LENGTH_LONG,
                      gravity: ToastGravity.BOTTOM,
                      timeInSecForIosWeb: 1,
                      backgroundColor: Colors.pinkAccent,
                      textColor: Colors.white,
                      fontSize: 14.0,
                    );
                    Navigator.pop(context);
                  } else {
                    count += 1;
                  }
                });
              },
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
