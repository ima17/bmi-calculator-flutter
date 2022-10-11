import 'package:bmi_calculator/configs/palette.dart';
import 'package:flutter/cupertino.dart';

class ThemeConstants {
  static const borderRadius = 10.0;
  static const bottomContainerheight = 80.0;
  static const labelTextStyle =
      TextStyle(color: Palette.cardContentcolor, fontSize: 18.0);
  static const numberTextStyle =
      TextStyle(fontWeight: FontWeight.w900, fontSize: 50.0);
  static const titleTextStyle =
      TextStyle(fontWeight: FontWeight.bold, fontSize: 50.0);
  static const resultTextStyle = TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 22.0,
      color: Palette.resultTextColor);
  static const bmiTextStyle = TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 100.0,
  );
  static const bodyTextStyle = TextStyle(
    fontSize: 22.0,
  );
   static const largeButtonTextStyle = TextStyle(
    fontSize: 25.0,
    fontWeight: FontWeight.bold
  );
}
