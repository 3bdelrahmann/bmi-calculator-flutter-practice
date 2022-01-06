import 'package:bmi_calculator/styles/colors.dart';
import 'package:bmi_calculator/styles/styles.dart';
import 'package:flutter/material.dart';
import 'constants.dart';

Widget RoundIconButton({
  required IconData icon,
  required VoidCallback onPressed,
  required Color color,
  Color? iconColor,
}) =>
    RawMaterialButton(
      elevation: 0.0,
      child: Icon(
        icon,
        color: iconColor,
      ),
      onPressed: onPressed,
      constraints: const BoxConstraints.tightFor(
        width: 50.0,
        height: 50.0,
      ),
      shape: const CircleBorder(),
      fillColor: color,
    );

Widget GenderCard({
  required bool isMale,
  required GestureTapCallback? onTap,
  Color? color = kInactiveCardColour,
}) =>
    Expanded(
        child: GestureDetector(
      onTap: onTap,
      child: ReusableCard(
        color: color,
        children: [
          Icon(
            isMale ? Icons.male : Icons.female,
            size: 100.0,
          ),
          Text(
            isMale ? 'MALE' : 'FEMALE',
            style: kLabelTextStyle,
          ),
        ],
      ),
    ));

Widget ReusableCard({
  required List<Widget> children,
  Color? color = kInactiveCardColour,
}) =>
    Container(
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: children,
      ),
    );

Widget BottomButton({
  Color color = kBottomContainerColour,
  required String text,
  required VoidCallback? onPressed,
}) =>
    Container(
      width: double.infinity,
      color: kBottomContainerColour,
      child: MaterialButton(
        height: kBottomContainerHeight,
        onPressed: onPressed,
        child: Text(
          text.toUpperCase(),
          style: kLargeButtonTextStyle,
        ),
      ),
    );
