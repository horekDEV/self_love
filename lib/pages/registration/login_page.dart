import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fluttertoast/fluttertoast.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String email = '';
  String password = '';
  int selectedMood = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
              colors: [Color(0xFFF3C8D8), Color(0xFFF8E8EE)],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight),
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
                "С возвращением!",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
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
                      "Email",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    contentPadding: EdgeInsets.only(bottom: -6),
                  ),
                  onChanged: (value) {
                    email = value;
                  },
                ),
              ),
              const SizedBox(height: 48),
              SizedBox(
                width: 300,
                child: TextFormField(
                  style: const TextStyle(color: Colors.white),
                  cursorColor: Colors.white,
                  obscureText: true,
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
                      "Password",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    contentPadding: EdgeInsets.only(bottom: -6),
                  ),
                  onChanged: (value) {
                    password = value;
                  },
                ),
              ),
              const SizedBox(height: 58),
              InkWell(
                onTap: () {
                  Dialog errorDialog = Dialog(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25.0),
                    ),
                    child: Container(
                      decoration: const BoxDecoration(
                        color: Color(0xFFEEB8CC),
                        borderRadius: BorderRadius.all(Radius.circular(25)),
                      ),
                      height: 370,
                      width: 310,
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
                                onTap: () => setState(() {
                                  selectedMood = selectedMood == 1 ? 0 : 1;
                                }),
                              ),
                              GestureDetector(
                                child: Image.asset(
                                  "assets/alertIcons/notsad.png",
                                  width: selectedMood == 2 ? 35 : 30,
                                  height: selectedMood == 2 ? 35 : 30,
                                ),
                                onTap: () => setState(() {
                                  selectedMood = selectedMood == 2 ? 0 : 2;
                                }),
                              ),
                              GestureDetector(
                                child: Image.asset(
                                  "assets/alertIcons/idk.png",
                                  width: selectedMood == 3 ? 35 : 30,
                                  height: selectedMood == 3 ? 35 : 30,
                                ),
                                onTap: () => setState(() {
                                  selectedMood = selectedMood == 3 ? 0 : 3;
                                }),
                              ),
                              GestureDetector(
                                child: Image.asset(
                                  "assets/alertIcons/verygood.png",
                                  width: selectedMood == 4 ? 35 : 30,
                                  height: selectedMood == 4 ? 35 : 30,
                                ),
                                onTap: () => setState(() {
                                  selectedMood = selectedMood == 4 ? 0 : 4;
                                }),
                              ),
                              GestureDetector(
                                child: Image.asset(
                                  "assets/alertIcons/happy.png",
                                  width: selectedMood == 5 ? 35 : 30,
                                  height: selectedMood == 5 ? 35 : 30,
                                ),
                                onTap: () => setState(() {
                                  selectedMood = selectedMood == 5 ? 0 : 5;
                                }),
                              ),
                            ],
                          ),
                          const SizedBox(height: 30),
                          InkWell(
                            onTap: () {
                              if (email.isEmpty ||
                                  !RegExp(r'^[^@]+@[^@]+\.[^@]+')
                                      .hasMatch(email)) {
                                Fluttertoast.showToast(
                                    msg: "Вы ввели некорректный email",
                                    toastLength: Toast.LENGTH_SHORT,
                                    gravity: ToastGravity.BOTTOM,
                                    timeInSecForIosWeb: 1,
                                    textColor: Colors.black,
                                    backgroundColor: Colors.white,
                                    fontSize: 16.0);
                              } else if (password.length < 8 ||
                                  password.contains(' ')) {
                                Fluttertoast.showToast(
                                    msg:
                                        "Ваш пароль должен быть длинной не меньше 8 символов и не содержать пробелов",
                                    toastLength: Toast.LENGTH_SHORT,
                                    gravity: ToastGravity.BOTTOM,
                                    timeInSecForIosWeb: 1,
                                    backgroundColor: Colors.white,
                                    textColor: Colors.black,
                                    fontSize: 16.0);
                              } else {
                                Navigator.pushNamed(context, '/code');
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
                  );
                  showDialog(
                      context: context,
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
                      "Вход",
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
                    "У вас еще нет аккаунта? тогда",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 11,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  InkWell(
                    onTap: () => {
                      Navigator.pop(context),
                      Navigator.pushNamed(context, '/register')
                    },
                    child: const Text(
                      " зарегистрируйтесь",
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
