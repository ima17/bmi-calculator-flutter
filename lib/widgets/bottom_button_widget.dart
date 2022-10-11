import 'package:bmi_calculator/configs/ThemeConstants.dart';
import 'package:bmi_calculator/configs/palette.dart';
import 'package:flutter/material.dart';

class BottomButton extends StatelessWidget {
  const BottomButton({@required this.onPressed, @required this.label});
  final Function onPressed;
  final String label;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        padding: EdgeInsets.only(bottom: 15.0),
        height: ThemeConstants.bottomContainerheight,
        color: Palette.bottomContainerColor,
        child: Center(
          child: Text(
            label,
            style: ThemeConstants.largeButtonTextStyle,
          ),
        ),
      ),
    );
  }
}
