import 'package:alquinet/screens/screens.dart';
import 'package:flutter/material.dart';

class MyRoute {
  final String nameText;
  final Widget widget;
  final IconData icon;
  MyRoute({required this.nameText, required this.widget, required this.icon});
}

class AppRoutes {
  final List<MyRoute> appRoutes = [
    MyRoute(
        nameText: 'Alquinet',
        widget: const HomeScreen(),
        icon: Icons.house_outlined),
    MyRoute(
        nameText: 'Log user',
        widget: const LogUser(),
        icon: Icons.app_registration_outlined),
    MyRoute(
        nameText: 'Login user',
        widget: const LoginUser(),
        icon: Icons.login_outlined),
    MyRoute(
        nameText: 'Log rental housing',
        widget: const RentalHousingScreen(),
        icon: Icons.app_registration_outlined),
    MyRoute(
        nameText: 'Administration',
        widget: const Administration(),
        icon: Icons.admin_panel_settings_outlined),
    MyRoute(
        nameText: 'Comentarios',
        widget: const CustomerTracking(),
        icon: Icons.question_answer),
  ];
}
