import 'package:flutter/material.dart';

class MyTheme {
  static bool stateTheme = false;
  static const Color _primaryLight = Color(0xFFFFFFFF);
  static const Color _bgPrimaryLight = Color(0xFFE98E31);

  static const Color _primaryDark = Color(0xFFE98E31);
  static const Color _bgPrimaryDark = Color(0xFF000000);

  static ThemeData getTheme() {
    return stateTheme ? _getThemeLight() : _getThemeDark();
  }

  static ThemeData _getThemeLight() {
    return ThemeData.light().copyWith(
      primaryColor: _primaryLight,
      backgroundColor: _bgPrimaryLight,
      textTheme: const TextTheme(
        headline1: TextStyle(
            color: _primaryLight, fontSize: 34.0, fontWeight: FontWeight.bold),
        headline2: TextStyle(
            color: _primaryLight, fontSize: 32.0, fontWeight: FontWeight.bold),
        headline3: TextStyle(color: _primaryLight, fontSize: 32.0),
        bodyText1: TextStyle(
            color: _primaryLight, fontSize: 16.0, fontWeight: FontWeight.bold),
        subtitle1: TextStyle(color: _primaryLight, fontSize: 17.0),
      ),
      inputDecorationTheme: const InputDecorationTheme(
        iconColor: _primaryLight,
        floatingLabelStyle: TextStyle(color: _primaryLight),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: _primaryLight),
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(10),
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: _primaryLight),
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(10),
          ),
        ),
        border: OutlineInputBorder(
          borderSide: BorderSide(color: _primaryLight),
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(10),
          ),
        ),
      ),
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(primary: _primaryLight),
      ),
    );
  }

  static ThemeData _getThemeDark() {
    return ThemeData.dark().copyWith(
      primaryColor: _primaryDark,
      backgroundColor: _bgPrimaryDark,
      textTheme: const TextTheme(
        headline1: TextStyle(
            color: _primaryDark, fontSize: 34.0, fontWeight: FontWeight.bold),
        headline2: TextStyle(
            color: _primaryDark, fontSize: 32.0, fontWeight: FontWeight.bold),
        headline3: TextStyle(color: _primaryDark, fontSize: 32.0),
        bodyText1: TextStyle(
            color: _primaryDark, fontSize: 16.0, fontWeight: FontWeight.bold),
        subtitle1: TextStyle(color: _primaryDark, fontSize: 17.0),
      ),
      inputDecorationTheme: const InputDecorationTheme(
        iconColor: _primaryDark,
        floatingLabelStyle: TextStyle(color: _primaryDark),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: _primaryDark),
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(10),
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: _primaryDark),
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(10),
          ),
        ),
        border: OutlineInputBorder(
          borderSide: BorderSide(color: _primaryDark),
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(10),
          ),
        ),
      ),
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(primary: _primaryDark),
      ),
    );
  }
}
