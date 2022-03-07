import 'package:flutter/material.dart';
import 'package:tuling_music_app/utils/sizes.dart';

const int _primaryColor = 0xFF00BDDC;

const MaterialColor primaryColors = MaterialColor(
  _primaryColor, 
  <int, Color> {
    50: Color(0xFFE0F7FC),
    100: Color(0xFFB2EBF6),
    200: Color(0xFF80DEF0),
    300: Color(0xFF4DD2E8),
    400: Color(0xFF24C6E2),
    500: Color(_primaryColor),
    600: Color(0xFF00ADC8),
    700: Color(0xFF0098AE),
    800: Color(0xFF008495),
    900: Color(0xFF006169)
  }
);

const TabBarTheme tabBarTheme = TabBarTheme(
  labelColor: primaryColors,
  unselectedLabelColor: Colors.blueGrey,
);

const LinearGradient linearGradient = LinearGradient(
  colors: <Color>[
    Color(0xFF4DD2E8),
    primaryColors,
    Color(0xFF4DD2E8),
  ],
);

TextStyle primaryText = TextStyle(
  fontSize: Sizes.size32,
  color: Colors.black87,
);

TextStyle secondaryText = TextStyle(
  fontSize: Sizes.size24,
  color: Colors.black45
);