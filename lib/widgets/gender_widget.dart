import 'package:bmi_calculator_test/constants.dart';
import 'package:flutter/material.dart';

class GenderWidget extends StatelessWidget {

  GenderWidget({@required this.title,@required this.icon,@required this.onPressed, @required this.isSelected});

  final String title;
  final IconData icon;
  final Function onPressed;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: onPressed,
        child: Container(
          margin: EdgeInsets.all(10.0),
          decoration: BoxDecoration(
              color: isSelected ? kSecondaryColor : Colors.black12.withOpacity(0.1),
              borderRadius: BorderRadius.circular(20.0)
          ),
          padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 40.0),
          child: Column(
            children: [
              Icon(icon, color: isSelected ? Colors.white : Colors.white12, size: 50.0,),
              SizedBox(height: 20.0,),
              Text(title, style: TextStyle(
                  color: isSelected ? kFontColor : Colors.white12
              ),),
            ],
          ),
        ),
      ),
    );
  }
}
