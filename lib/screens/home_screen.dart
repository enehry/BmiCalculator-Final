import 'package:bmi_calculator_test/constants.dart';
import 'package:bmi_calculator_test/screens/bmi_calculator_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: AppBar(
        title: Text('BMI Calculator'),
        backgroundColor: kPrimaryColor,
      ),
      body: BmiCalculatorScreen()
    );
  }
}
