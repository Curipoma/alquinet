import 'package:flutter/material.dart';

class MyTheme {
  static bool stateTheme = false;
  static Color primaryLight = const Color(0xFFFFFFFF);
  static Color bgPrimaryLight = const Color(0xFFE98E31);

  static Color primaryDark = const Color(0xFFE98E31);
  static Color bgPrimaryDark = const Color(0xFF000000);

  static ThemeData getTheme() {
    print(stateTheme);
    return stateTheme ? getThemeLight() : getThemeDark();
  }

  static ThemeData getThemeLight() {
    return ThemeData.light().copyWith(
      primaryColor: primaryLight,
      backgroundColor: bgPrimaryLight,
      textTheme: TextTheme(
        headline1: TextStyle(
            color: primaryLight, fontSize: 34.0, fontWeight: FontWeight.bold),
        headline2: TextStyle(
            color: primaryLight, fontSize: 32.0, fontWeight: FontWeight.bold),
        headline3: TextStyle(color: primaryLight, fontSize: 32.0),
        bodyText1: TextStyle(
            color: primaryLight, fontSize: 16.0, fontWeight: FontWeight.bold),
        subtitle1: TextStyle(color: primaryLight, fontSize: 17.0),
      ),
      inputDecorationTheme: InputDecorationTheme(
        iconColor: primaryLight,
        floatingLabelStyle: TextStyle(color: primaryLight),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: primaryLight),
          borderRadius: const BorderRadius.only(
            bottomLeft: Radius.circular(10),
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: primaryLight),
          borderRadius: const BorderRadius.only(
            bottomLeft: Radius.circular(10),
          ),
        ),
        border: OutlineInputBorder(
          borderSide: BorderSide(color: primaryLight),
          borderRadius: const BorderRadius.only(
            bottomLeft: Radius.circular(10),
          ),
        ),
      ),
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(primary: primaryLight),
      ),
    );
  }

  static ThemeData getThemeDark() {
    return ThemeData.dark().copyWith(
      primaryColor: primaryDark,
      backgroundColor: bgPrimaryDark,
      textTheme: TextTheme(
        headline1: TextStyle(
            color: primaryDark, fontSize: 34.0, fontWeight: FontWeight.bold),
        headline2: TextStyle(
            color: primaryDark, fontSize: 32.0, fontWeight: FontWeight.bold),
        headline3: TextStyle(color: primaryDark, fontSize: 32.0),
        bodyText1: TextStyle(
            color: primaryDark, fontSize: 16.0, fontWeight: FontWeight.bold),
        subtitle1: TextStyle(color: primaryDark, fontSize: 17.0),
      ),
      inputDecorationTheme: InputDecorationTheme(
        iconColor: primaryDark,
        floatingLabelStyle: TextStyle(color: primaryDark),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: primaryDark),
          borderRadius: const BorderRadius.only(
            bottomLeft: Radius.circular(10),
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: primaryDark),
          borderRadius: const BorderRadius.only(
            bottomLeft: Radius.circular(10),
          ),
        ),
        border: OutlineInputBorder(
          borderSide: BorderSide(color: primaryDark),
          borderRadius: const BorderRadius.only(
            bottomLeft: Radius.circular(10),
          ),
        ),
      ),
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(primary: primaryDark),
      ),
    );
  }
}
