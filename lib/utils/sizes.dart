import 'dart:ui';
import 'package:flutter/material.dart';

class Sizes {
  static MediaQueryData mediaQuery = MediaQueryData.fromWindow(window);
  static final double _width = mediaQuery.size.width;
  static double unit = _width / 750.0;

  static final double size10 = 10 * unit;
  static final double size12 = 12 * unit;
  static final double size14 = 14 * unit;
  static final double size16 = 16 * unit;
  static final double size18 = 18 * unit;
  static final double size20 = 20 * unit;
  static final double size24 = 24 * unit;
  static final double size28 = 28 * unit;
  static final double size32 = 32 * unit;
  static final double size36 = 36 * unit;
  static final double size42 = 42 * unit;
  static final double size48 = 48 * unit;
  static final double size54 = 54 * unit;
}