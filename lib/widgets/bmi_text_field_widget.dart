import 'package:bmi_calculator_test/constants.dart';
import 'package:flutter/material.dart';



class BmiTextFieldWidget extends StatelessWidget {


  final String title;
  final TextEditingController controller;

  BmiTextFieldWidget({@required this.controller,@required this.title});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Text(title, style: TextStyle(color: Colors.white),),
        ConstrainedBox(
          constraints: BoxConstraints(
              maxWidth: 100.0
          ),
          child: TextField(
            controller: controller,
            textAlign: TextAlign.center,
            style: TextStyle(
                color: kFontColor,
                fontSize: 23.0,
                fontWeight: FontWeight.bold
            ),
            decoration: InputDecoration(
                filled: true,
                fillColor: kSecondaryColor,
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    borderSide: BorderSide(
                        style: BorderStyle.solid,
                        color: Colors.white,
                        width: 1.0
                    )
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20.0),
                  borderSide: BorderSide(
                      style: BorderStyle.none,
                      width: 0
                  ),
                )
            ),
          ),
        )
      ],
    );
  }
}

