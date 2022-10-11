import 'package:bmi_calculator/configs/palette.dart';
import 'package:bmi_calculator/screens/input_page_screen.dart';
import 'package:flutter/material.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
          appBarTheme: Theme.of(context).appBarTheme.copyWith(
                color: Palette.primaryColor,
              ),
          primaryColor: Palette.primaryColor,
          scaffoldBackgroundColor: Palette.primaryColor),
      home: InputPage(),
    );
  }
}
