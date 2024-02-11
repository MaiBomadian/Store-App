import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  CustomButton(
      {super.key,
      required this.textButton,
      required this.onTap,
      required this.color,
      this.textColor});
  String textButton;
  VoidCallback onTap;
  Color color;
  Color? textColor;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 60,
        width: double.infinity,
        child: Center(
          child: Text(
            textButton,
            style: TextStyle(
              fontSize: 18,
              color: textColor,
            ),
          ),
        ),
        decoration:
            BoxDecoration(borderRadius: BorderRadius.circular(8), color: color),
      ),
    );
  }
}
