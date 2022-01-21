import 'package:flutter/material.dart';

class CondicionesSlider extends StatelessWidget {
  const CondicionesSlider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 260,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Text('Terminos y condiciones',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          ),
          Expanded(
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 1,
                itemBuilder: (_, int index) => const _CondicionesPoster()),
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
      padding: const EdgeInsets.symmetric(horizontal: 110),
      child: Row(
        children: [
          GestureDetector(
            onTap: () => Navigator.pushNamed(context, 'homeTerminos',
                arguments: 'Terminos y condiciones'),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: const FadeInImage(
                placeholder: AssetImage('assets/images/jar-loading.gif'),
                image: AssetImage(
                    'assets/images_contratos/terminos_condiciones.png'),
                height: 160,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
