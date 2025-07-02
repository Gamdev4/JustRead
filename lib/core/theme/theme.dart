import 'package:flutter/material.dart';

ThemeData lightMode = ThemeData(
  brightness: Brightness.light,
  colorScheme: ColorScheme.light(
      primary: Colors.white,
      onPrimary: Colors.black,
      secondary: Colors.grey.shade100,
      onSecondary: Colors.grey.shade200,
    onTertiary: Colors.grey.shade600,
  )
);

ThemeData darkMode = ThemeData(
  brightness: Brightness.dark,
    colorScheme: ColorScheme.dark(
      primary: Colors.black,
      onPrimary: Colors.white,
      secondary: Color(0xFF121212),
      onSecondary: Colors.grey.shade900,
      onTertiary: Colors.grey,
    )
);