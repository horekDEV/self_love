import 'package:flutter/material.dart';
import 'package:self_love/pages/main/main_page.dart';
import 'package:self_love/pages/main/road_page.dart';
import 'package:self_love/pages/profile/profile_page.dart';
import 'package:self_love/pages/registration/register_page.dart';
import 'package:self_love/pages/registration/send_code_page.dart';
import 'package:self_love/pages/task_activity/acceptance/task_screen_acceptance_1.dart';
import 'package:self_love/pages/task_activity/acceptance/task_screen_acceptance_2.dart';
import 'package:self_love/pages/task_activity/acceptance/task_screen_acceptance_3.dart';
import 'package:self_love/pages/task_activity/task_page.dart';
import 'package:self_love/pages/task_activity/test_page.dart';
import 'package:self_love/pages/task_activity/personal_boundaries/task_screen_personal_1.dart';
import 'package:self_love/pages/task_activity/personal_boundaries/task_screen_personal_2.dart';
import 'package:self_love/pages/task_activity/personal_boundaries/task_screen_personal_3.dart';
import 'package:self_love/pages/task_activity/self-care/task_screen_care_1.dart';
import 'package:self_love/pages/task_activity/self-care/task_screen_care_2.dart';
import 'package:self_love/pages/task_activity/self-care/task_screen_care_3.dart';

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
      routes: <String, WidgetBuilder>{
        '/register': (BuildContext context) => const RegisterPage(),
        '/login': (BuildContext context) => const LoginPage(),
        '/code': (BuildContext context) => const SendCodePage(),
        '/profile': (BuildContext context) => const ProfilePage(),
        '/main': (BuildContext context) => const MainPage(),
        '/test': (BuildContext context) => const TestPage(),
        '/road': (BuildContext context) => const RoadPage(),
        '/task': (BuildContext context) => const TaskPage(),
        '/task_acceptance_1': (BuildContext context) =>
            const TaskScreenAcceptance1(),
        '/task_acceptance_2': (BuildContext context) =>
            const TaskScreenAcceptance2(),
        '/task_acceptance_3': (BuildContext context) =>
            const TaskScreenAcceptance3(),
        '/task_personal_1': (BuildContext context) =>
            const TaskScreenPersonal1(),
        '/task_personal_2': (BuildContext context) =>
            const TaskScreenPersonal2(),
        '/task_personal_3': (BuildContext context) =>
            const TaskScreenPersonal3(),
        '/task_care_1': (BuildContext context) => const TaskScreenCare1(),
        '/task_care_2': (BuildContext context) => const TaskScreenCare2(),
        '/task_care_3': (BuildContext context) => const TaskScreenCare3(),
      },
    );
  }
}
