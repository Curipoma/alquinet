import 'package:alquinet/contratos/widgets/widgets.dart';
import 'package:flutter/material.dart';

class ListaPreciosScreen extends StatelessWidget {
  const ListaPreciosScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: const [
          CardSwiper()
        ],
      ),
    );
  }
}
