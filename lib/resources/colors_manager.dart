import 'package:flutter/material.dart';

class ColorManager {
  static Color white = HexColor.fromHex('#FFFFFF');
  static Color green = HexColor.fromHex('#00ff00');
}

extension HexColor on Color {
  static Color fromHex(String hexColor) {
    hexColor = hexColor.replaceAll('#', '');
    if (hexColor.length == 6) {
      hexColor = 'FF$hexColor';
    }
    return Color(int.parse(hexColor, radix: 16));
  }
}
