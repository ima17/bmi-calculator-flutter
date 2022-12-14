import 'package:bmi_calculator/configs/palette.dart';
import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {
  RoundIconButton({@required this.icon, @required this.onpressed});
  final IconData icon;
  final Function onpressed;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(icon),
      shape: CircleBorder(),
      fillColor: Palette.roundIconButtonColor,
      onPressed: onpressed,
      constraints: BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
    );
  }
}
