import 'package:flutter/material.dart';

//Constants
import 'package:bmi_calculator/constants.dart';
//Emun
import 'package:bmi_calculator/gender.dart';

class BottomButton extends StatelessWidget {
  BottomButton({this.selectedGender, this.onTap, this.buttonTitle});

  final Gender selectedGender;
  final Function onTap;
  final String buttonTitle;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        color: selectedGender == Gender.male ? kMaleColor : kFemaleColor,
        height: kbottomContainerHeight,
        margin: EdgeInsets.only(top: 10.0),
        padding: EdgeInsets.only(
          bottom: 20.0,
        ),
        child: Center(
          child: Text(
            buttonTitle,
            style: kLargeButtonTextStyle,
          ),
        ),
      ),
    );
  }
}
