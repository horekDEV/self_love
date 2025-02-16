import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fluttertoast/fluttertoast.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  String name = '';
  int selectedMood = 0;
  String email = '';
  String password = '';

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
                  onChanged: (value) {
                    name = value;
                  },
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
                      "Name",
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
                  onChanged: (value) {
                    email = value;
                  },
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
                ),
              ),
              const SizedBox(height: 48),
              SizedBox(
                width: 300,
                child: TextFormField(
                  onChanged: (value) {
                    password = value;
                  },
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
                ),
              ),
              const SizedBox(height: 58),
              InkWell(
                onTap: () {
                  if (email.isEmpty ||
                      !RegExp(r'^[^@]+@[^@]+\.[^@]+').hasMatch(email)) {
                    Fluttertoast.showToast(
                      msg: "Вы ввели некорректный email",
                      toastLength: Toast.LENGTH_SHORT,
                      backgroundColor: Colors.white,
                      textColor: Colors.black,
                      gravity: ToastGravity.BOTTOM,
                    );
                  } else if (password.length < 8 || password.contains(' ')) {
                    Fluttertoast.showToast(
                      msg:
                          "Ваш пароль должен быть длинной не меньше 8 символов и не содержать пробелов",
                      toastLength: Toast.LENGTH_SHORT,
                      backgroundColor: Colors.white,
                      textColor: Colors.black,
                      gravity: ToastGravity.BOTTOM,
                    );
                  } else if (name.isEmpty) {
                    Fluttertoast.showToast(
                      msg:
                          "Вы не вписали свое имя!",
                      toastLength: Toast.LENGTH_SHORT,
                      backgroundColor: Colors.white,
                      textColor: Colors.black,
                      gravity: ToastGravity.BOTTOM,
                    );
                  } else {
                      Navigator.pop(context);
                      Navigator.pushNamed(context, '/main', arguments: name);
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
                    onTap: () => {
                      Navigator.pop(context),
                      Navigator.pushNamed(context, '/login')
                    },
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
