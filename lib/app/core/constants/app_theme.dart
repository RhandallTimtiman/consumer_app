import 'package:consumer_app/app/core/constants/app_color.dart';
import 'package:consumer_app/app/data/interface/interface.dart';
import 'package:flutter/material.dart';

class AppTheme {
  ThemeData light = _theme(LightColors());
  ThemeData dark = _theme(DarkColors());
}

ThemeData _theme(ThemeColors color) => ThemeData.light().copyWith(
      primaryColor: color.primary,
      scaffoldBackgroundColor: color.mainBackground,
      backgroundColor: color.mainBackground,
      textTheme: TextTheme(
        headline6: TextStyle(
          color: color.primary,
          fontSize: 70,
          fontFamily: 'Montserrat',
          fontWeight: FontWeight.bold,
        ),
        headline5: const TextStyle(
          fontSize: 50,
          fontFamily: 'Montserrat',
          fontWeight: FontWeight.bold,
        ),
        headline1: const TextStyle(
          fontSize: 12,
          fontFamily: 'Montserrat',
          fontWeight: FontWeight.bold,
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(color.primary),
        ),
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: color.background,
      ),
    );
