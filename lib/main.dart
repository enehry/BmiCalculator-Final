import 'package:bmi_calculator_test/screens/home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(BmiCalculatorApp());
}

class BmiCalculatorApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}

