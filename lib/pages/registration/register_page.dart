import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fluttertoast/fluttertoast.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  int selectedMood = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
              colors: [
                Color(0xFFF3C8D8),
                Color(0xFFF8E8EE)
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight
          ),
        ),
        child: Center(
          child: Column(
            children: [
              const SizedBox(height: 72),
              const Text(
                "Mindfull Me",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 40,
                  fontWeight: FontWeight.normal,
                ),
              ),
              const SizedBox(height: 48),
              const Text(
                "Давайте начнем!",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Text(
                "Для начало нужно зарегистрироваться",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 42),
              SizedBox(
                width: 300,
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
                    label: Text(
                      "name",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    contentPadding: EdgeInsets.only(bottom: -6),
                  ),
                ),
              ),
              const SizedBox(height: 48),
              SizedBox(
                width: 300,
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
                    label: Text(
                      "email",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    contentPadding: EdgeInsets.only(bottom: -6),
                  ),
                ),
              ),
              const SizedBox(height: 48),
              SizedBox(
                width: 300,
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
                    label: Text(
                      "password",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    contentPadding: EdgeInsets.only(bottom: -6),
                  ),
                ),
              ),
              const SizedBox(height: 58),
              InkWell(
                onTap: () {
                  final errorDialog = StatefulBuilder(builder: (context, setState) => Dialog(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25.0),
                    ),
                    child: Container(
                      decoration: const BoxDecoration(
                        color: Color(0xFFEEB8CC),
                        borderRadius: BorderRadius.all(Radius.circular(25)),
                      ),
                      height: 370.0,
                      width: 310.0,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 20.0),
                            child: Text(
                              "Какие чувства вы сейчас испытываете?",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          const SizedBox(height: 20),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              GestureDetector(
                                child: Image.asset(
                                  "assets/alertIcons/sad.png",
                                  width: selectedMood == 1 ? 35 : 30,
                                  height: selectedMood == 1 ? 35 : 30,
                                ),
                                onTap: () => setState(() {selectedMood == 1 ? selectedMood = 0 : selectedMood = 1;})
                              ),
                              GestureDetector(
                                child: Image.asset(
                                  "assets/alertIcons/notsad.png",
                                  width: selectedMood == 2 ? 35 : 30,
                                  height: selectedMood == 2 ? 35 : 30,
                                ),
                                onTap: () => setState(() {selectedMood == 2 ? selectedMood = 0 : selectedMood = 2;})
                              ),
                              GestureDetector(
                                child: Image.asset(
                                  "assets/alertIcons/idk.png",
                                  width: selectedMood == 3 ? 35 : 30,
                                  height: selectedMood == 3 ? 35 : 30,
                                ),
                                onTap: () => setState(() {selectedMood == 3 ? selectedMood = 0 : selectedMood = 3;})
                              ),
                              GestureDetector(
                                child: Image.asset(
                                  "assets/alertIcons/verygood.png",
                                  width: selectedMood == 4 ? 35 : 30,
                                  height: selectedMood == 4 ? 35 : 30,
                                ),
                                onTap: () => setState(() {selectedMood == 4 ? selectedMood = 0 : selectedMood = 4;})
                              ),
                              GestureDetector(
                                child: Image.asset(
                                  "assets/alertIcons/happy.png",
                                  width: selectedMood == 5 ? 35 : 30,
                                  height: selectedMood == 5 ? 35 : 30,
                                ),
                                onTap: () => setState(() {selectedMood == 5 ? selectedMood = 0 : selectedMood = 5;})
                              ),
                            ],
                          ),
                          const SizedBox(height: 30),
                          InkWell(
                            onTap: () {
                              if (selectedMood != 0) {
                                Navigator.pushNamed(context, '/code');
                              } else {
                                Fluttertoast.showToast(
                                  msg: "Пожалуйста выберете ваши чувства",
                                  toastLength: Toast.LENGTH_LONG,
                                  gravity: ToastGravity.BOTTOM,
                                  timeInSecForIosWeb: 1,
                                  backgroundColor: Colors.pinkAccent,
                                  textColor: Colors.white,
                                  fontSize: 14.0,
                                );
                              }
                            },
                            child: Container(
                              height: 55,
                              width: 220,
                              decoration: BoxDecoration(
                                color: const Color(0xFFFCC9DC),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: const Center(
                                child: Text(
                                  "Продолжить",
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
                  ));
                  showDialog(context: context,
                      builder: (BuildContext context) => errorDialog);
                },
                child: Container(
                  height: 55,
                  width: 220,
                  decoration: BoxDecoration(
                    color: const Color(0xFFF2BED1),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: const Center(
                    child: Text(
                      "Зарегистрироваться",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 75),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Вы уже зарегистрированы? Тогда войдите в свой",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 11,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  InkWell(
                    onTap: () => Navigator.pushNamed(context, '/login'),
                    child: const Text(
                      " аккаунт",
                      style: TextStyle(
                        color: Color(0xFFF2BED1),
                        fontSize: 11,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    "assets/registrationIcons/google.svg",
                    width: 45,
                    height: 45,
                  ),
                  SvgPicture.asset(
                    "assets/registrationIcons/apple.svg",
                    width: 50,
                    height: 50,
                  ),
                  SvgPicture.asset(
                    "assets/registrationIcons/vk.svg",
                    width: 55,
                    height: 55,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}