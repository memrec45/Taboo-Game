// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';

Color PRIMARY_COLOR = Colors.deepPurple.shade100;
Color CARD_COLOR = Colors.deepPurple.shade200;
Color buttonColor = Colors.deepPurple.shade500;
ThemeData appTheme = ThemeData(
  // General Theme
  brightness: Brightness.light,
  primaryColor: PRIMARY_COLOR,
  canvasColor: PRIMARY_COLOR,
  cardColor: CARD_COLOR,

  //App bar Theme
  appBarTheme: const AppBarTheme(
    centerTitle: true,
    backgroundColor: Colors.transparent,
    elevation: 0,
  ),

  //Button Themes
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ButtonStyle(
      backgroundColor:
          MaterialStateProperty.all<Color>(buttonColor),
      padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
        const EdgeInsets.symmetric(vertical: 15),
      ),
      overlayColor:
          MaterialStateProperty.all<Color>(Colors.deepPurple.shade100),
    ),
  ),

  snackBarTheme: SnackBarThemeData(
    backgroundColor: CARD_COLOR,
    behavior: SnackBarBehavior.floating,
    insetPadding: const EdgeInsets.all(16),
    showCloseIcon: true,
  ),

  inputDecorationTheme: InputDecorationTheme(
    filled: true,
    fillColor: CARD_COLOR.withOpacity(0.5),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(5),
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(5),
    ),
  ),

  // Text Theme
  textTheme: const TextTheme(
    titleLarge: TextStyle(
      fontSize: 24,
      fontWeight: FontWeight.bold,
      color: Colors.white,
    ),
    titleSmall: TextStyle(
      fontWeight: FontWeight.bold,
      fontStyle: FontStyle.italic,
    ),
    bodyLarge: TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.bold,
      color: Colors.white,
    ),
  ),
  
  sliderTheme: SliderThemeData(
    activeTrackColor: Colors.deepPurple.shade700,
    activeTickMarkColor: Colors.white,
    inactiveTrackColor: buttonColor,
    thumbColor: Colors.deepPurple.shade100,
  ),
  dividerColor: CARD_COLOR
);
