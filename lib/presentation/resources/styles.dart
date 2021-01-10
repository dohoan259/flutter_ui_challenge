import 'package:flutter/material.dart';

InputDecoration getInputStyle(String label) {
  return InputDecoration(
    labelText: label,
    border: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(5.0)),
        borderSide: BorderSide(
          color: Colors.black,
          width: 5.0,
        )),
  );
}

TextStyle getTextLinkStyle(double fontSize) {
  return TextStyle(
    fontSize: fontSize,
    color: Colors.red,
    decoration: TextDecoration.underline,
    fontWeight: FontWeight.w500,
  );
}

final appTitleStyle = TextStyle(
  color: Colors.white,
  fontSize: 24.0,
  fontWeight: FontWeight.bold
);
