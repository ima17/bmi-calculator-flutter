import 'package:bmi_calculator/configs/ThemeConstants.dart';
import 'package:bmi_calculator/configs/palette.dart';
import 'package:bmi_calculator/widgets/bottom_button_widget.dart';
import 'package:bmi_calculator/widgets/reusable_card_widget.dart';
import 'package:flutter/material.dart';

class ResultScreeen extends StatelessWidget {
  const ResultScreeen({@required this.bmiResult,@required this.resultText,@required this.bmiIntepretation});
  final String bmiResult;
  final String resultText;
  final String bmiIntepretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15.0),
              alignment: Alignment.bottomLeft,
              child: Text(
                "Your Result",
                style: ThemeConstants.titleTextStyle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              backgroundColor: Palette.inactiveCardColor,
              childWidget: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    resultText.toUpperCase(),
                    style: ThemeConstants.resultTextStyle,
                  ),
                  Text(
                    bmiResult,
                    style: ThemeConstants.bmiTextStyle,
                  ),
                  Text(
                    bmiIntepretation,
                    style: ThemeConstants.bodyTextStyle,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
          BottomButton(
              label: 'RE-CALCULATE',
              onPressed: () {
                Navigator.pop(context);
              })
        ],
      ),
    );
  }
}
