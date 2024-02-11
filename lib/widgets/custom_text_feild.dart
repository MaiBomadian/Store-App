import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  CustomTextField(
      {super.key,
      required this.hintText,
      this.onChanged,
      this.color,
      this.textInputType});
  String hintText;
  Function(String)? onChanged;
  TextInputType? textInputType;
  Color? color;

  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: textInputType,
      onChanged: onChanged,
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(),
        ),
        hintText: hintText,
        hintStyle: TextStyle(color: color),
      ),
    );
  }
}
