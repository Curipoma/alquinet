import 'package:flutter/material.dart';

class MyTheme {
  static Color primary = const Color(0xFF000000);
  static Color bgPrimary = const Color(0xFFC08E31); // 0xFFE7C904  #c08E31

  static ThemeData getTheme() {
    return getThemeLight();
  }

  static ThemeData getThemeLight() {
    return ThemeData(
      primaryColor: primary,
      backgroundColor: bgPrimary,
      textTheme: TextTheme(
        headline1: TextStyle(color: primary, fontSize: 32.0),
        bodyText1: TextStyle(color: primary, fontSize: 16.0),
        subtitle1: TextStyle(color: primary,fontSize: 17.0),
      ),
      inputDecorationTheme: InputDecorationTheme(
        iconColor: primary,
        floatingLabelStyle: TextStyle(color: primary),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: primary),
          borderRadius: const BorderRadius.only(
            bottomLeft: Radius.circular(10),
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: primary),
          borderRadius: const BorderRadius.only(
            bottomLeft: Radius.circular(10),
          ),
        ),
        border: OutlineInputBorder(
          borderSide: BorderSide(color: primary),
          borderRadius: const BorderRadius.only(
            bottomLeft: Radius.circular(10),
          ),
        ),
      ),
    );
  }

  static ThemeData getThemeDataDark(bool onThemeDark) {
    return ThemeData(
      backgroundColor:
          onThemeDark ? const Color(0xFFFFFFFF) : const Color(0xFF1A1D2F),
      primaryColor: onThemeDark
          ? const Color(0xFF1B1F2F)
          : const Color(0xFFFFFFFF), // color de fondo
      highlightColor: onThemeDark
          ? const Color(0xFFFFFFFF)
          : const Color(0xFF6F6FFF), // color de iconos...
      hintColor: onThemeDark
          ? const Color(0xFFFFFFFF)
          : const Color(0xFF1A1A2F), // color de un *form
      textTheme: TextTheme(
        headline1: TextStyle(
          // titulo con fondo
          fontSize: 32.0,
          fontWeight: FontWeight.bold,
          color:
              onThemeDark ? const Color(0xFF0D0F1D) : const Color(0xFFFFFFFF),
        ),
        headline2: TextStyle(
          // titulo sin fondo
          fontSize: 32.0,
          fontWeight: FontWeight.bold,
          color:
              onThemeDark ? const Color(0xFF0D0F1D) : const Color(0xFF0D0F1D),
        ),
        headline3: TextStyle(
          // subtitulo con fondo
          fontSize: 24.0,
          fontWeight: FontWeight.bold,
          color:
              onThemeDark ? const Color(0xFFFFFFFF) : const Color(0xFF0D0F1D),
        ),
        headline4: TextStyle(
          // subtitulo sin fondo
          fontSize: 24.0,
          fontWeight: FontWeight.bold,
          color:
              onThemeDark ? const Color(0xFF0D0F1D) : const Color(0xFFFFFFFF),
        ),
        bodyText1: TextStyle(
          // parafos  con fondo
          fontSize: 16.0,
          fontWeight: FontWeight.normal,
          color:
              onThemeDark ? const Color(0xFF000000) : const Color(0xFFFFFFFF),
        ),
        bodyText2: TextStyle(
          // parafos  sin fondo -----
          fontSize: 16.0,
          fontWeight: FontWeight.normal,
          color:
              onThemeDark ? const Color(0xFFFFFFFF) : const Color(0xFF000000),
        ),
      ),
    );
  }
}
