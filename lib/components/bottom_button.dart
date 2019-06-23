import 'package:flutter/material.dart';
import 'package:bmi_calculator/constant.dart';


class BottomButton extends StatelessWidget {
  final Function onTap;
  final String buttonTitle;

  BottomButton({@required this.onTap, @required this.buttonTitle});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Center(
            child: Text(
          buttonTitle,
          style: kButtonTextStyle,
        )),
        margin: EdgeInsets.only(top: 10.0),
        color: kbottomContainerColor,
        //to Fit the Entire Bottom of the Screen
        width: double.infinity,
        height: kbottomContainerHeight,
      ),
    );
  }
}