import 'package:alquinet/contratos/widgets/widgets.dart';
import 'package:flutter/material.dart';

class ListaPreciosScreen extends StatelessWidget {
  const ListaPreciosScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Theme.of(context).primaryColor,
        backgroundColor: Theme.of(context).backgroundColor,
        centerTitle: true,
        title: Text(
          'Alquinet',
          style: TextStyle(color: Theme.of(context).primaryColor),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: const [
            //Tarjetas precios
            CardSwiper(),
            //Slider terminos y condiciones
            CondicionesSlider(),
          ],
        ),
      ),
    );
  }
}
