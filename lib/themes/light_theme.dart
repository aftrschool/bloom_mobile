import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

ThemeData lightTheme = ThemeData(
  colorScheme: const ColorScheme.light(
    primary: Colors.white,
    secondary: Colors.teal,
  ),
  appBarTheme: const AppBarTheme(
    foregroundColor: Colors.black,
    elevation: 0,
    systemOverlayStyle: SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark,
    ),
  ),
  canvasColor: Colors.white,
  cardTheme: const CardTheme(color: Color.fromRGBO(245, 245, 245, 1)),
  textTheme: const TextTheme(
    headline6: TextStyle(color: Colors.black),
    caption: TextStyle(height: 1.5),
    subtitle2: TextStyle(color: Colors.black54),
  ),
  fontFamily: 'NotoSansJP',
  textSelectionTheme: const TextSelectionThemeData(
    cursorColor: Colors.teal,
    selectionColor: Colors.teal,
    selectionHandleColor: Colors.teal,
  ),
  bottomNavigationBarTheme: const BottomNavigationBarThemeData(
    selectedIconTheme: IconThemeData(color: Colors.teal),
  ),
);
