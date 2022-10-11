import 'package:bmi_calculator/configs/ThemeConstants.dart';
import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  ReusableCard({@required this.backgroundColor, this.childWidget, this.onPress});
  final Color backgroundColor;
  final Widget childWidget;
  final Function onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: childWidget,
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(ThemeConstants.borderRadius),
          color: backgroundColor,
        ),
      ),
    );
  }
}
