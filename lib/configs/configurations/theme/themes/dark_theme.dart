import 'package:ecell_app/configs/configs.dart';
import 'package:flutter/material.dart';

ThemeData darkTheme = ThemeData(
  useMaterial3: true,
  colorScheme: const ColorScheme.dark(
    primary: dark,
    secondary: ecellBlue,
  ),
  fontFamily: "Poppins",
);
