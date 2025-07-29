import 'package:bmi/screens/home_screen.dart';
import 'package:bmi/screens/result_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(BMIApp());
}

class BMIApp extends StatelessWidget {
  const BMIApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: 'HomeScreen',
      routes: {
        'HomeScreen': (context) => HomeScreen(),
        'resultScreen': (context) => ResultScreen(),
      },
    );
  }
}
