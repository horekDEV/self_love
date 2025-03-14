import 'dart:math';

import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:self_love/pages/main/road_page.dart';
import 'package:self_love/pages/registration/register_page.dart';
import 'package:self_love/pages/task_activity/test_page.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  // TODO (доделать картинки, график, а так же положения текста)

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

double value = 0.0;
String goal = '';

class _ProfilePageState extends State<ProfilePage> {
  List<bool> isCheckedList = [false, false, false, false];
  final TextEditingController textController = TextEditingController();
  int activeChart = 0;

  List<List<String>> chartLabels = [
    ['Пн', 'Вт', 'Ср', 'Чт', 'Пт'],
    ['1', '2', '3', '4', '5'],
    ['Ноя', 'Дек', 'Янв', 'Фев', 'Мар'],
    ['2021', '2022', '2023', '2024', '2025'],
  ];

  List<List<double>> barValues = [
    [5, 8, 3, 7, 6],
    [20, 25, 23, 27, 32],
    [147, 167, 131, 163, 170],
    [1016, 1645, 1428, 1861, 1724]
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFDCEDF),
      appBar: AppBar(
        backgroundColor: const Color(0xFFFDCEDF),
        title: const Text(
          "\u041F\u0440\u043E\u0444\u0438\u043B\u044C",
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        leading: IconButton(
          icon: const Icon(Icons.chevron_left, color: Colors.white),
          onPressed: () => Navigator.of(context).pop(),
        )
      ),
      body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                  padding: EdgeInsets.only(top: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        _LabelledTextField(label: email),
                        SizedBox(height: 20),
                        _LabelledTextField(label: name),
                        SizedBox(height: 20),
                        _LabelledTextField(label: password),
                      ],
                    ),
                    Icon(
                      Icons.supervised_user_circle,
                      color: Colors.white,
                      size: 70,
                    ),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 50),
                child: Text(
                  "Цель",
                  style: TextStyle(
                      fontSize: 24,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.underline,
                      decorationColor: Colors.white
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 12),
                child: Container(
                  width: 335,
                  height: 90,
                  decoration: const BoxDecoration(
                      color: Color(0xFFF2BED1),
                      borderRadius: BorderRadius.all(Radius.circular(25))
                  ),
                  child: Stack(
                    children: [
                      Center(child: Padding(padding: const EdgeInsets.all(10), child: Text(
                        goal,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: goal.length <= 56 ? 20 : 15,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),)),
                      TextField(
                        style: TextStyle(color: Colors.transparent, fontSize: 20, fontWeight: FontWeight.bold,),
                        cursorColor: Colors.transparent,
                        showCursor: false,
                        autocorrect: false,
                        enableSuggestions: false,
                        maxLines: 1000,
                        decoration: InputDecoration(border: InputBorder.none),
                        onChanged: (a) {if (a.length <= 114) goal = a; setState(() {});},
                      ),
                      Padding(padding: const EdgeInsets.only(top: 5), child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Image.asset(
                            "assets/profileIcons/pen.png",
                            width: 10,
                            height: 10,
                          ),
                          const SizedBox(width: 25)
                        ]
                      ),)
                      
                    ],
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 30),
                child: Text(
                  "Уровень любви к себе",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Container(
                  width: 335,
                  height: 40,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                  ),
                  child: Stack(
                    children: [
                      Container(
                        width: 335 * value,
                        height: 40,
                        decoration: const BoxDecoration(
                          color: Color(0xFFF2BED1),
                        ),
                      ),
                      Center(
                        child: Text(
                          "${value * 100}%",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: const Color.fromARGB(255, 255, 139, 187),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 40),
                child: Text(
                  "Результаты тестирования",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 10, left: 10),
                      child: Container(
                        width: 100,
                        height: 100,
                        decoration: const BoxDecoration(
                            color: Color(0xFFF2BED1),
                            borderRadius: BorderRadius.all(Radius.circular(20))
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              "01.01.1892",
                              style: TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              "$testResult%",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 10, left: 10),
                      child: Container(
                        width: 100,
                        height: 100,
                        decoration: const BoxDecoration(
                            color: Color(0xFFF2BED1),
                            borderRadius: BorderRadius.all(Radius.circular(20))
                        ),
                        child: const Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              "01.01.1892",
                              style: TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              "???%",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 10, left: 10),
                      child: Container(
                        width: 100,
                        height: 100,
                        decoration: const BoxDecoration(
                            color: Color(0xFFF2BED1),
                            borderRadius: BorderRadius.all(Radius.circular(20))
                        ),
                        child: const Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              "01.01.1892",
                              style: TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              "???%",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 48),
                child: Text(
                  "Активность",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    _timeFilterButton("День", 0),
                    _timeFilterButton("Неделя", 1),
                    _timeFilterButton("Месяц", 2),
                    _timeFilterButton("Год", 3),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 40,),
                child: SizedBox(
                  height: 200,
                  width: 350,
                  child: BarChart(
                    BarChartData(
                      barGroups: [
                        _makeBarData(0, barValues[activeChart][0]),
                        _makeBarData(1, barValues[activeChart][1]),
                        _makeBarData(2, barValues[activeChart][2]),
                        _makeBarData(3, barValues[activeChart][3]),
                        _makeBarData(4, barValues[activeChart][4]),
                      ],
                      titlesData: FlTitlesData(
                        leftTitles: const AxisTitles(
                          sideTitles: SideTitles(showTitles: true, reservedSize: 40,),
                        ),
                        bottomTitles: AxisTitles(
                          sideTitles: SideTitles(
                            showTitles: true, maxIncluded: false,
                            getTitlesWidget: (double value, _) {
                              return Text(chartLabels[activeChart][value.toInt()]);
                            },
                          ),
                        ),
                        topTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
                        rightTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
                      ),
                      borderData: FlBorderData(show: false),
                      gridData: const FlGridData(show: true),
                    ),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 65),
                child: Text(
                  "Чек лист",
                  style: TextStyle(
                      fontSize: 24,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.underline,
                      decorationColor: Colors.white
                  ),
                ),
              ),
              const SizedBox(height: 15),
        Padding(padding: const EdgeInsets.only(right: 150), child: Wrap(
          spacing: 20,
          direction: Axis.vertical,
          children: List.generate(
            isCheckedList.length,
                (index) => Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                GestureDetector(
                  onTap: () {
                    setState(() {
                      isCheckedList[index] = !isCheckedList[index];
                    });
                  },
                  child: AnimatedContainer(
                    duration: const Duration(milliseconds: 300),
                    curve: Curves.easeInOut,
                    width: 25,
                    height: 25,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: isCheckedList[index]
                          ? Colors.white // Заполнение белым
                          : Colors.transparent, // Пустой круг
                      border: Border.all(
                        color: Colors.white,
                        width: 2,
                      ),
                    ),
                    child: isCheckedList[index]
                        ? Center(
                      child: Icon(
                        Icons.check,
                        color: Colors.black.withOpacity(0.0), // Прозрачная галочка
                        size: 30,
                      ),
                    )
                        : const SizedBox(),
                  ),
                ),
                const SizedBox(width: 8),
                index < 3
                    ? Text(
                  "Option ${index + 1}",
                  style: const TextStyle(color: Colors.white),
                )
                    : SizedBox(
                  width: 120,
                  child: TextField(
                    controller: textController,
                    decoration: const InputDecoration(
                      hintText: "Enter text",
                      hintStyle: TextStyle(color: Colors.white70),
                      border: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                      ),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                      ),
                    ),
                    style: const TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
        ),),
              Padding(
                padding: const EdgeInsets.only(top: 70, bottom: 40),
                child: GestureDetector(
                  onTap: () {
                    complete = false;
                    testComplete = false;
                    value = 0;
                    Navigator.of(context).popUntil((route) => route.isFirst,);
                    Navigator.of(context).pushReplacementNamed('/register');
                  },
                  child: const Text(
                    "Выйти из аккаунта",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                )
              ),
            ],
          ),
      ),
    );
  }

  Widget _timeFilterButton(String text, int id) {
    return GestureDetector(
      onTap: () => setState(() => activeChart = id),
      child: Container(
      width: 85,
      height: 24,
      decoration: BoxDecoration(
        color: activeChart == id ? const Color(0xFFD48BA6) : const Color(0xFFF2BED1),
        borderRadius: const BorderRadius.all(Radius.circular(10)),
      ),
      child: Center(
        child: Text(
          text,
          style: const TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
    )
    );
  }

  BarChartGroupData _makeBarData(int x, double y) {
    return BarChartGroupData(
      x: x,
      barRods: [
        BarChartRodData(
          toY: y,
          color: const Color(0xFFF48FB1), // Цвет столбцов
          width: 20,
          borderRadius: BorderRadius.circular(5),
        ),
      ],
    );
  }
}

class _LabelledTextField extends StatelessWidget {
  final String label;

  const _LabelledTextField({required this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: const TextStyle(
            fontSize: 16,
            color: Colors.white,
            fontWeight: FontWeight.w500,
          ),
        ),
        const SizedBox(height: 5),
        Container(
          width: 215,
          height: 3,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8),
          ),
          child: const TextField(
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.symmetric(horizontal: 10),
            ),
          ),
        ),
      ],
    );
  }
}