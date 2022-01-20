import 'package:alquinet/contratos/widgets/widgets.dart';
import 'package:flutter/material.dart';

class ListaPreciosScreen extends StatelessWidget {
  const ListaPreciosScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Alquinet', style: TextStyle(fontSize: 25,)),
        backgroundColor: const Color(0xFF1A1D2F),
        elevation: 0,
        actions:  [
          IconButton(
            icon: const Icon(Icons.settings),
            onPressed: (){

            },
          )
        ],
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
