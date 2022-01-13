import 'package:flutter/material.dart';

class MyTheme {
  static ThemeData getThemeData(bool onThemeDark) {
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
        color: onThemeDark ? const Color(0xFF0D0F1D) : const Color(0xFFFFFFFF),
      ),
      headline2: TextStyle(
        // titulo sin fondo
        fontSize: 32.0,
        fontWeight: FontWeight.bold,
        color: onThemeDark ? const Color(0xFF0D0F1D) : const Color(0xFF0D0F1D),
      ),
      headline3: TextStyle(
        // subtitulo con fondo
        fontSize: 24.0,
        fontWeight: FontWeight.bold,
        color: onThemeDark ? const Color(0xFFFFFFFF) : const Color(0xFF0D0F1D),
      ),
      headline4: TextStyle(
        // subtitulo sin fondo
        fontSize: 24.0,
        fontWeight: FontWeight.bold,
        color: onThemeDark ? const Color(0xFF0D0F1D) : const Color(0xFFFFFFFF),
      ),
      bodyText1: TextStyle(
        // parafos  con fondo
        fontSize: 16.0,
        fontWeight: FontWeight.normal,
        color: onThemeDark ? const Color(0xFF000000) : const Color(0xFFFFFFFF),
      ),
      bodyText2: TextStyle(
        // parafos  sin fondo -----
        fontSize: 16.0,
        fontWeight: FontWeight.normal,
        color: onThemeDark ? const Color(0xFFFFFFFF) : const Color(0xFF000000),
      ),
    ),
  );
  } 
}
