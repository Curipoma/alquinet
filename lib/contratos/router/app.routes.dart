import 'package:flutter/material.dart';
import 'package:alquinet/contratos/models/models.dart';
import 'package:alquinet/contratos/screens/home_screen_contratos.dart';

class AppRoutesContratos{
    static final menuOption = <MenuOption>[
    MenuOption(route: 'home_contratos', name: 'Contratos Screen', screen: const HomeScreenContratos(), icon: Icons.home_filled,),
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes(){
    Map<String, Widget Function(BuildContext)> appRoutes = {};
    
    for (final option in menuOption) {
      appRoutes.addAll({option.route: (BuildContext context) => option.screen});
      
    }
    return appRoutes;
  }
}