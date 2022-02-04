import 'package:alquinet/contratos/screens/screens.dart';
import 'package:flutter/material.dart';
import 'package:alquinet/contratos/models/models.dart';

class AppRoutesContratos {
  static final menuOption = <MenuOption>[
    MenuOption(
      route: 'homeContratos',
      name: 'Visualizar Contrato',
      screen: const HomeScreenContratos(
        imageUrl: '',
      ),
      icon: Icons.assignment,
    ),
    MenuOption(
      route: 'homeComprobante',
      name: 'Comprobante de pagos',
      screen: const ComprobanteScreen(),
      icon: Icons.fact_check_rounded,
    ),
    MenuOption(
      route: 'homeCatalogos',
      name: 'Lista de precios',
      screen: const ListaPreciosScreen(),
      icon: Icons.apartment_rounded,
    ),
    MenuOption(
      route: 'homeTerminos',
      name: 'Terminos y Condiciones',
      screen: const TerminosScreen(),
      icon: Icons.auto_stories_outlined,
    ),
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};

    for (final option in menuOption) {
      appRoutes.addAll({option.route: (BuildContext context) => option.screen});
    }
    return appRoutes;
  }
}
