import 'package:flutter/material.dart';
import 'package:quizpro/view/builder_screen/builder_screen.dart';
import 'package:quizpro/view/home_screen/home_screen.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
