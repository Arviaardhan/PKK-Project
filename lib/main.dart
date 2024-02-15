import 'package:flutter/material.dart';
import 'package:pkk_project/Boarding/boarding_screen.dart';
import 'package:pkk_project/QuizPage/quiz_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0xFFFFEDD7),
      ),
      home: QuizPage(),
    );
  }
}

