import 'package:bmi_calculator_test/constants.dart';
import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {

  final String result;
  final String bmi;
  final String interpretation;

  ResultScreen({this.result, this.bmi, this.interpretation});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        title: Text('Your Result'),
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                SizedBox(
                  height: 20.0,
                ),
                Text(
                  'BMI',
                  style: TextStyle(color: kFontColor, fontSize: 20.0),
                ),
                Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 50.0, vertical: 100.0),
                  margin: EdgeInsets.all(30.0),
                  decoration: BoxDecoration(
                      color: kSecondaryColor,
                      borderRadius: BorderRadius.circular(20.0)),
                  child: Column(
                    children: [
                      Text(
                        result,
                        style: TextStyle(color: kFontColor, fontSize: 20.0),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      Text(
                        bmi,
                        style: TextStyle(
                            color: kFontColor,
                            fontSize: 120.0,
                            fontWeight: FontWeight.w700),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      Text(
                        interpretation,
                        textAlign: TextAlign.center,
                        style: TextStyle(color: kFontColor, fontSize: 20.0),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 50.0,),
                OutlineButton(
                    padding: EdgeInsets.all(20.0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0)
                    ),
                    borderSide: kButtonBorderStyle,
                    child: Text('Re-Calculate your BMI' , style: TextStyle(color: kFontColor),),
                    onPressed: () {
                      Navigator.pop(context);
                    }),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
