import 'package:flutter/material.dart';

class MyThemes {
  // ? light Theme
  static ThemeData lightTheme() => ThemeData(
        brightness: Brightness.light,
        primarySwatch: Colors.cyan,
      );
  // ? Dark Theme
  static ThemeData darkTheme() => ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.red,
      );
}
