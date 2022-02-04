import 'package:alquinet/contratos/router/app.routes.dart';
import 'package:flutter/material.dart';

class MenuOptionScreen extends StatelessWidget {
  const MenuOptionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final menuOption = AppRoutesContratos.menuOption;

    return Stack(
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: (ListView.separated(
            itemBuilder: (context, i) => ListTile(
              leading: Icon(
                menuOption[i].icon,
                color: Theme.of(context).backgroundColor,
              ),
              title: Text(
                menuOption[i].name,
                style: TextStyle(color: Theme.of(context).backgroundColor),
              ),
              onTap: () {
                Navigator.pushNamed(context, menuOption[i].route);
              },
            ),
            separatorBuilder: (_, __) => const Divider(),
            itemCount: menuOption.length,
          )),
        ),
      ],
    );
  }
}
