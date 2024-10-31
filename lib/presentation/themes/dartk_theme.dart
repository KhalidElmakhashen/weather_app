



import 'package:flutter/material.dart';

ThemeData darkMode = ThemeData(
  brightness: Brightness.dark,
  switchTheme: SwitchThemeData(
    trackColor: WidgetStatePropertyAll(Colors.grey),
    thumbColor: WidgetStatePropertyAll(Colors.white)
  )
);