import 'package:bmi_calculator_test/widgets/bmi_calculator_widget.dart';
import 'package:bmi_calculator_test/widgets/gender_widget.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BmiCalculatorScreen extends StatefulWidget {
  @override
  _BmiCalculatorScreenState createState() => _BmiCalculatorScreenState();
}

class _BmiCalculatorScreenState extends State<BmiCalculatorScreen> {


  bool isSelectedMale = false;
  bool isSelectedFemale = false;

  @override
  Widget build(BuildContext context) {
    return  Container(
      padding: EdgeInsets.all(30.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                GenderWidget(
                  title: 'Male',
                  icon: FontAwesomeIcons.mars,
                  onPressed: () {
                      setState(() {
                        isSelectedMale = true;
                        isSelectedFemale = false;
                      });
                  },
                  isSelected: isSelectedMale,
                ),
                GenderWidget(
                  title: 'Female',
                  icon: FontAwesomeIcons.venus,
                  onPressed: (){
                    setState(() {
                      isSelectedMale = false;
                      isSelectedFemale = true;
                    });
                  },
                  isSelected: isSelectedFemale,
                )
              ],
            ),
            SizedBox(height: 30.0,),
            BmiCalculatorWidget()
          ],
        ),
      ),
    );
  }
}

