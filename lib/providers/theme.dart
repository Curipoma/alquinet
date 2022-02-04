import 'package:alquinet/screens/screens.dart';
import 'package:flutter/material.dart';

class ThemeChanger with ChangeNotifier {
  late ThemeData _themeData;
  ThemeChanger(this._themeData);

  getTheme() => _themeData != null ? MyTheme.getTheme() : _themeData;
  setTheme(ThemeData theme) {
    _themeData = theme;
    notifyListeners();
  }
}
