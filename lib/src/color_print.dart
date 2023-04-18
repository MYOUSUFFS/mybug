import 'package:flutter/material.dart';

class ColorPrint {
  String colorToAnsi(Color hexCode) {
    Color color = hexCode;
    final colorValue = '\x1B[38;2;${color.red};${color.green};${color.blue}m';
    return colorValue;
  }

  void print(String printStatement, Color hexCode) {
    debugPrint('${colorToAnsi(hexCode)} $printStatement \x1B[0m');
  }

  String colorToAnsiHex(String hexCode) {
    Color color = Color(int.parse(hexCode.substring(1), radix: 16));
    final colorValue = '\x1B[38;2;${color.red};${color.green};${color.blue}m';
    return colorValue;
  }

  void printHex(String printStatement, String hexCode) {
    debugPrint('${colorToAnsiHex(hexCode)} $printStatement \x1B[0m');
  }
}