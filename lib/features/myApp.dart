import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:self_love/pages/main/main_page.dart';
import 'package:self_love/pages/profile/profile_page.dart';
import 'package:self_love/pages/registration/register_page.dart';
import 'package:self_love/pages/registration/send_code_page.dart';
import 'package:self_love/pages/task_activity/test_page.dart';

import '../pages/home_page.dart';
import '../pages/registration/login_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: HomePage(),
      routes: <String, WidgetBuilder> {
        '/register': (BuildContext context) => const RegisterPage(),
        '/login': (BuildContext context) => const LoginPage(),
        '/code': (BuildContext context) => const SendCodePage(),
        '/profile': (BuildContext context) => const ProfilePage(),
        '/main': (BuildContext context) => const MainPage(),
        '/test': (BuildContext context) => const TestPage()
      },
    );
  }
}
