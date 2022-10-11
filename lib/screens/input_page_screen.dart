import 'package:bmi_calculator/configs/ThemeConstants.dart';
import 'package:bmi_calculator/configs/palette.dart';
import 'package:bmi_calculator/constants/genders.dart';
import 'package:bmi_calculator/screens/result_screen.dart';
import 'package:bmi_calculator/widgets/bottom_button_widget.dart';
import 'package:bmi_calculator/widgets/calculator_brain.dart';
import 'package:bmi_calculator/widgets/icon_content_widget.dart';
import 'package:bmi_calculator/widgets/reusable_card_widget.dart';
import 'package:bmi_calculator/widgets/round_icon_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender selectedGender;
  int height = 180;
  int weight = 60;
  int age = 18;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('BMI CALCULATOR'),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
                child: Row(
              children: [
                Expanded(
                    child: ReusableCard(
                  onPress: () {
                    setState(() {
                      selectedGender = Gender.male;
                    });
                  },
                  backgroundColor: selectedGender == Gender.male
                      ? Palette.activeCardColor
                      : Palette.inactiveCardColor,
                  childWidget: IconContent(
                    label: 'MALE',
                    icon: FontAwesomeIcons.mars,
                  ),
                )),
                Expanded(
                    child: ReusableCard(
                  onPress: () {
                    setState(() {
                      selectedGender = Gender.female;
                    });
                  },
                  backgroundColor: selectedGender == Gender.female
                      ? Palette.activeCardColor
                      : Palette.inactiveCardColor,
                  childWidget: IconContent(
                    label: 'FEMALE',
                    icon: FontAwesomeIcons.venus,
                  ),
                )),
              ],
            )),
            Expanded(
                child: ReusableCard(
              backgroundColor: Palette.inactiveCardColor,
              childWidget: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "HEIGHT",
                    style: ThemeConstants.labelTextStyle,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    mainAxisAlignment: MainAxisAlignment.center,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(
                        height.toString(),
                        style: ThemeConstants.numberTextStyle,
                      ),
                      Text(
                        "cm",
                        style: ThemeConstants.labelTextStyle,
                      ),
                    ],
                  ),
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                      activeTrackColor: Palette.lightWhiteColor,
                      inactiveTrackColor: Palette.cardContentcolor,
                      thumbColor: Palette.bottomContainerColor,
                      thumbShape: RoundSliderThumbShape(
                        enabledThumbRadius: 15.0,
                      ),
                      overlayShape: RoundSliderOverlayShape(
                        overlayRadius: 30.0,
                      ),
                      overlayColor: Palette.sliderOverlayColor,
                    ),
                    child: Slider(
                        value: height.toDouble(),
                        min: 120.0,
                        max: 220.0,
                        onChanged: (double newValue) {
                          setState(() {
                            height = newValue.round();
                          });
                        }),
                  )
                ],
              ),
            )),
            Expanded(
                child: Row(
              children: [
                Expanded(
                    child: ReusableCard(
                  backgroundColor: Palette.inactiveCardColor,
                  childWidget: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "WEIGHT",
                        style: ThemeConstants.labelTextStyle,
                      ),
                      Text(
                        weight.toString(),
                        style: ThemeConstants.numberTextStyle,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          RoundIconButton(
                            icon: FontAwesomeIcons.minus,
                            onpressed: () {
                              setState(() {
                                weight--;
                              });
                            },
                          ),
                          SizedBox(
                            width: 10.0,
                          ),
                          RoundIconButton(
                            icon: FontAwesomeIcons.plus,
                            onpressed: () {
                              setState(() {
                                weight++;
                              });
                            },
                          ),
                        ],
                      ),
                    ],
                  ),
                )),
                Expanded(
                    child: ReusableCard(
                  backgroundColor: Palette.inactiveCardColor,
                  childWidget: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "AGE",
                        style: ThemeConstants.labelTextStyle,
                      ),
                      Text(
                        age.toString(),
                        style: ThemeConstants.numberTextStyle,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          RoundIconButton(
                            icon: FontAwesomeIcons.minus,
                            onpressed: () {
                              setState(() {
                                age--;
                              });
                            },
                          ),
                          SizedBox(
                            width: 10.0,
                          ),
                          RoundIconButton(
                            icon: FontAwesomeIcons.plus,
                            onpressed: () {
                              setState(() {
                                age++;
                              });
                            },
                          ),
                        ],
                      ),
                    ],
                  ),
                )),
              ],
            )),
            BottomButton(
                label: 'CALCULATE',
                onPressed: () {
                  CalculatorBrain calBrain =
                      CalculatorBrain(weight: weight, height: height);
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ResultScreeen(
                              bmiResult: calBrain.calculateBmi(),
                              bmiIntepretation: calBrain.getInterpretation(),
                              resultText: calBrain.getResult(),
                            )),
                  );
                }),
          ],
        ));
  }
}
