// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';

class MyInputDecoration extends InputDecoration {

  final bool isMandatory;
  final double borderRadius;

  const MyInputDecoration({
    required this.isMandatory,
    required this.borderRadius,
  });

  Widget build(BuildContext context) {
    return InputDecorator(
      decoration: InputDecoration(
        suffixIcon: suffixIcon,
        contentPadding:
            const EdgeInsets.symmetric(vertical: 0.0, horizontal: 5.0),
        hintText: hintText,
        labelText: isMandatory ? '$labelText*' : labelText,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(borderRadius),
        ),
      ),
    );
  }
}
