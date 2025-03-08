import 'package:flutter/material.dart';
import 'package:my_flutter1/themes/group_colors.dart';

class AppTheme {
  static ThemeData lightTheme = ThemeData(
      fontFamily: 'Poppins',
      extensions: [ColorsGroup(backgroundCategory: Color(0xFFE4E0E1))]);
}
