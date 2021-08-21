import 'package:flutter/material.dart';

class ThemeHelper{
  static ThemeData lightTheme =ThemeData.light().copyWith(
    primaryColor: Colors.blue,
    accentColor: Colors.grey,
    buttonTheme: ButtonThemeData(
      buttonColor: Colors.green,
      textTheme: ButtonTextTheme.primary,

    ),
    textTheme: TextTheme(
      headline1: TextStyle(color: Colors.blue)
    ),
  );
  static ThemeData DarkTheme =ThemeData.light().copyWith(
    primaryColor: Colors.black,
    accentColor: Colors.grey,
    buttonTheme: ButtonThemeData(
      buttonColor: Colors.orangeAccent,
      textTheme: ButtonTextTheme.primary,

    ),
    textTheme: TextTheme(
        headline1: TextStyle(color: Colors.white)
    ),
  );

}