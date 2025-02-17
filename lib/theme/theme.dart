import 'package:flutter/material.dart';

const lightColorScheme = ColorScheme(
  brightness: Brightness.light,
  primary: Color(0xFF416FDF),
  onPrimary: Color(0xFFFFFFFF),
  secondary: Color(0xFF6EAEE7),
  onSecondary: Color(0xFFFFFFFF),
  error: Color(0xFFBA1A1A),
  onError: Color(0xFFFFFFFF),
  background: Color(0xFFFCFDF6),
  onBackground: Color(0xFF1A1C18),
  shadow: Color(0xFF000000),
  outlineVariant: Color(0xFFC2C8BC),
  surface: Color(0xFFF9FAF3),
  onSurface: Color(0xFF1A1C18),
);

ThemeData lightMode = ThemeData(
  useMaterial3: true,
  brightness: Brightness.light,
  colorScheme: lightColorScheme,
  appBarTheme: const AppBarTheme(
    backgroundColor: Color(0xFF416FDF),
    foregroundColor: Color(0xFFFFFFFF),
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: lightColorScheme.primary,
      foregroundColor: Colors.white,
      elevation: 5.0,
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 18,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      minimumSize: const Size(double.infinity, 20),
    ),
  ),
);

// ThemeData darkMode = ThemeData(
//   useMaterial3: true,
//   brightness: Brightness.dark,
//   colorScheme: darkColorScheme,
// );

// const darkColorScheme = ColorScheme(
//   brightness: Brightness.dark,
//   primary: Color(0xFF416FDF),
//   onPrimary: Color(0xFFFFFFFF),
//   secondary: Color(0xFF6EAEE7),
//   onSecondary: Color(0xFFFFFFFF),
//   error: Color(0xFFBA1A1A),
//   onError: Color(0xFFFFFFFF),
//   background: Color(0xFFFCFDF6),
//   onBackground: Color(0xFF1A1C18),
//   shadow: Color(0xFF000000),
//   outlineVariant: Color(0xFFC2C8BC),
//   surface: Color(0xFFF9FAF3),
//   onSurface: Color(0xFF1A1C18),
// );
