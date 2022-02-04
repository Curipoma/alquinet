import 'package:alquinet/contratos/widgets/widgets.dart';
import 'package:flutter/material.dart';

class ListaPreciosScreen extends StatelessWidget {
  const ListaPreciosScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Alquinet', style: Theme.of(context).textTheme.bodyText1),
        elevation: 0,
        actions: [],
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
