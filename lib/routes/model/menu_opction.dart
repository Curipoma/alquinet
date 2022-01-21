import 'package:flutter/cupertino.dart' show IconData, Widget;

class MenuOpction {
  final String route;
  final IconData icon;
  final String name;
  final Widget screen;

  MenuOpction(
      {required this.route,
      required this.icon,
      required this.name,
      required this.screen});
}

class MyRoute {
  final String nameText;
  final Widget widget;
  final IconData icon;
  MyRoute({required this.nameText, required this.widget, required this.icon});
}
