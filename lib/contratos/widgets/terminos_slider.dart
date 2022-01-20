import 'package:flutter/material.dart';

class CondicionesSlider extends StatelessWidget {
  const CondicionesSlider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 260,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          const Padding(padding: EdgeInsets.symmetric(horizontal: 20),
          child: Text('Terminos y condiciones', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          ),

          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 20,
              itemBuilder: (_, int index) => const _CondicionesPoster()
            ),
          )
        ],
      ),
    );
  }
}

class _CondicionesPoster extends StatelessWidget {
  const _CondicionesPoster({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
    width: 130,
    height: 190,
    margin: const EdgeInsets.symmetric(horizontal: 10),
    child: Column(
      children: [

        GestureDetector(
          onTap: () => Navigator.pushNamed(context, 'homeTerminos', arguments: 'Terminos y condiciones'),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: const FadeInImage(
              placeholder: AssetImage('assets/images/jar-loading.gif'), 
              image: AssetImage('assets/images_contratos/casa_1.jpg'),
              width: 130,
              height: 190,
              fit: BoxFit.cover,
            ),
          ),
        ),

        const SizedBox(
          height: 5,
        ),

        const Text('soy una prueba :v',
        maxLines: 2,
        overflow: TextOverflow.ellipsis,
        textAlign: TextAlign.center,
        ),  

      ],
    ),
    );
  }
}