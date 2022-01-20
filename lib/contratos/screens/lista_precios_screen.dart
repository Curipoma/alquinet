import 'package:alquinet/contratos/providers/movies_provider.dart';
import 'package:alquinet/contratos/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ListaPreciosScreen extends StatelessWidget {
  const ListaPreciosScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

     final preciosProvider = Provider.of<PreciosProvider>(context);
  

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
          children:  [
            //Tarjetas precios
            CardSwiper(movies: preciosProvider.onDisplayPrecios),
      
            //Slider terminos y condiciones
           const CondicionesSlider(),
      
          ],
        ),
      ),
    );
  }
}
