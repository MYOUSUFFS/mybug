// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';

class ColorPrint {
  String colorToAnsi(Color hexCode) {
    Color color = hexCode;
    final colorValue = '\x1B[38;2;${color.red};${color.green};${color.blue}m';
    return colorValue;
  }

  void colorPrint(String printStatement, Color hexCode) {
    debugPrint('${colorToAnsi(hexCode)} $printStatement \x1B[0m');
  }
   colorPrintHex(String printStatement, String hexCode){
     Color color = Color(int.parse(hexCode.substring(1), radix: 16));
    final colorValue = '\x1B[38;2;${color.red};${color.green};${color.blue}m';
    return colorValue;
  }
}