import 'package:flutter/material.dart';

class MyTheme {
  static bool stateTheme = true;
  static const Color _primary = Color(0xFFFF8E31);

  static const Color _primaryLight = Color(0xFFFFFFFF);
  static const Color _bgPrimaryLight = _primary;

  static const Color _primaryDark = _primary;
  static const Color _bgPrimaryDark = Color(0xFF000000);

  static ThemeData getTheme() {
    return stateTheme ? _getThemeLight() : _getThemeDark();
  }

  static Map<int, Color> color = {
    50: const Color.fromRGBO(136, 14, 79, .1),
    100: const Color.fromRGBO(136, 14, 79, .2),
    200: const Color.fromRGBO(136, 14, 79, .3),
    300: const Color.fromRGBO(136, 14, 79, .4),
    400: const Color.fromRGBO(136, 14, 79, .5),
    500: const Color.fromRGBO(136, 14, 79, .6),
    600: const Color.fromRGBO(136, 14, 79, .7),
    700: const Color.fromRGBO(136, 14, 79, .8),
    800: const Color.fromRGBO(136, 14, 79, .9),
    900: const Color.fromRGBO(136, 14, 79, 1),
  };

  static ThemeData _getThemeLight() {
    return ThemeData(
      primaryColor: _primaryLight,
      backgroundColor: _bgPrimaryLight,
      primarySwatch: MaterialColor(0xFFFF8E31, color),
      textTheme: const TextTheme(
        headline1: TextStyle(
            color: _primaryLight, fontSize: 34.0, fontWeight: FontWeight.bold),
        headline2: TextStyle(
            color: _primaryLight, fontSize: 32.0, fontWeight: FontWeight.bold),
        headline3: TextStyle(color: _primaryLight, fontSize: 32.0),
        bodyText1: TextStyle(
            color: _primaryLight, fontSize: 16.0, fontWeight: FontWeight.bold),
        bodyText2: TextStyle(
            color: _primaryLight,
            fontSize: 14.0,
            fontWeight: FontWeight.normal),
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
    return ThemeData(
      primaryColor: _primaryDark,
      backgroundColor: _bgPrimaryDark,
      primarySwatch: MaterialColor(0xFFFF8E31, color),
      textTheme: const TextTheme(
        headline1: TextStyle(
            color: _primaryDark, fontSize: 34.0, fontWeight: FontWeight.bold),
        headline2: TextStyle(
            color: _primaryDark, fontSize: 32.0, fontWeight: FontWeight.bold),
        headline3: TextStyle(color: _primaryDark, fontSize: 32.0),
        bodyText1: TextStyle(
            color: _primaryDark, fontSize: 16.0, fontWeight: FontWeight.bold),
        bodyText2: TextStyle(
            color: _primaryDark, fontSize: 14.0, fontWeight: FontWeight.normal),
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
