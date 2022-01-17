import 'package:alquinet/contratos/router/app.routes.dart';
import 'package:flutter/material.dart';

class MenuOptionScreen extends StatelessWidget {
  const MenuOptionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final menuOption = AppRoutesContratos.menuOption;
    return Scaffold(
        body: ListView.separated(
          itemBuilder: (context, i) => ListTile(
            leading: Icon(menuOption[i].icon,),
            title: Text(menuOption[i].name),
            onTap: () {
              // final route = MaterialPageRoute(
              //     builder: (context) => const ListView1Screen());

              //pushReplacement: dirige a otra pagina pero no permite regresar. Validos para logins
              // Navigator.push(context, route);

              Navigator.pushNamed(context, menuOption[i].route);
            },
          ),
          separatorBuilder: (_, __) => const Divider(),
          itemCount: menuOption.length,
        ),
      );
  }
}
