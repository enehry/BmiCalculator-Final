import 'package:bmi_calculator_test/bmi_solver.dart';
import 'package:bmi_calculator_test/constants.dart';
import 'package:bmi_calculator_test/screens/result_screen.dart';
import 'package:bmi_calculator_test/widgets/bmi_text_field_widget.dart';
import 'package:flutter/material.dart';

TextEditingController heightController = TextEditingController();
TextEditingController weightController = TextEditingController();

class BmiCalculatorWidget extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        BmiTextFieldWidget(
          controller: heightController,
          title: 'Height (m)',
        ),
        SizedBox(height: 20.0,),
        BmiTextFieldWidget(
          controller: weightController,
          title: 'Weight (kg)',
        ),
        SizedBox(height: 20.0,),
        BmiTextFieldWidget(
          title: '      Age        ',
        ),
        SizedBox(height: 100.0,),
        OutlineButton(
          padding: EdgeInsets.all(20.0),
          onPressed: () {

              BmiSolver bmiSolver = BmiSolver(weight: weightController.text,height: heightController.text);
              bmiSolver.calculateBmi();
              print(bmiSolver.bmi);

              Navigator.push(context, MaterialPageRoute(builder: (context) =>
                  ResultScreen(
                    result: bmiSolver.getResult(),
                    bmi: bmiSolver.bmi,
                    interpretation: bmiSolver.getInterpretation(),
                  ))
              );

          },
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0)
          ),
          borderSide: BorderSide(
              color: kFontColor,
              style: BorderStyle.solid,
              width: 1.0
          ),
          child: Text('Calculate your BMI', style: TextStyle(
              color: kFontColor
          ),),
        ),
      ],
    );
  }
}

