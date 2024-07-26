import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

ThemeData lightMode = ThemeData(
  colorScheme: ColorScheme.light(
    surface: Colors.grey.shade300,
    primary: Colors.grey.shade500,
    secondary: Colors.grey.shade200,
    tertiary: Colors.white,
    secondaryContainer: CupertinoColors.systemGreen,
    inversePrimary: Colors.grey.shade900,
  )
);