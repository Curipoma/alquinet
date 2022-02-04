import 'package:alquinet/screens/screens.dart';
import 'package:flutter/material.dart';

// PRIMER NIVEL DE NAVEGACIÓN
class MyRoutes {
  static const initialRoute = 'home';
  static final menuOptions = <MenuOpction>[
    MenuOpction(
      route: '/',
      name: 'Home Screen',
      screen: const HomeScreen(
        title: 'Alquinet',
      ),
      icon: Icons.home_max_outlined,
    ),
    MenuOpction(
      route: 'home',
      name: 'Home Screen',
      screen: const HomeScreen(
        title: 'Alquinet',
      ),
      icon: Icons.home_max_outlined,
    ),
    MenuOpction(
      route: 'interfaz',
      name: 'Interfaz Screen',
      screen: const InterfazScreen(),
      icon: Icons.home_max_outlined,
    ),
    MenuOpction(
      route: 'homeContratos',
      name: 'Visualizar Contrato',
      screen: const HomeScreenContratos(
        imageUrl: '',
      ),
      icon: Icons.assignment,
    ),
    MenuOpction(
      route: 'homeComprobante',
      name: 'Comprobante de pagos',
      screen: const ComprobanteScreen(),
      icon: Icons.fact_check_rounded,
    ),
    MenuOpction(
      route: 'homeCatalogos',
      name: 'Lista de precios',
      screen: const ListaPreciosScreen(),
      icon: Icons.apartment_rounded,
    ),
    MenuOpction(
      route: 'homeTerminos',
      name: 'Terminos y Condiciones',
      screen: const TerminosScreen(),
      icon: Icons.auto_stories_outlined,
    ),
  ];
  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};
    for (final option in menuOptions) {
      appRoutes.addAll({option.route: (BuildContext context) => option.screen});
    }
    return appRoutes;
  }
}

// SEGUNDO NIVEL DE NAVEGACIÓN
class ChildrenRoutesHome {
  final List<MyRoute> appRoutes = [
    MyRoute(
        nameText: 'Alquinet',
        widget: const WelcomeScreen(),
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
        nameText: 'Contratos',
        widget: const MenuOptionScreen(),
        icon: Icons.apartment_outlined),
    MyRoute(
      nameText: 'Customer Tracking',
      widget: const CustomerTracking(),
      icon: Icons.auto_stories_outlined,
    ),
  ];
}
