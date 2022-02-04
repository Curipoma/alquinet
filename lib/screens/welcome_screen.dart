import 'package:flutter/material.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 19.0),
          decoration: const BoxDecoration(color: Colors.black),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 34.0),
                  child: Text(
                    'alquinet'.toUpperCase(),
                    style: Theme.of(context).textTheme.headline1,
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 10.0),
                  decoration: const BoxDecoration(
                    border: Border.symmetric(
                      horizontal: BorderSide(width: 1.0, color: Colors.white),
                    ),
                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: const[
                           FadeInImage(
                            width: 200.0,
                            height: 150.0,
                            image: AssetImage('assets/images/house_home_1.jpg'),
                            placeholder:
                                AssetImage('assets/images/loading.gif'),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: const [
                          FadeInImage(
                            width: 250.0,
                            height: 150.0,
                            image: AssetImage('assets/images/house_home_2.jpg'),
                            placeholder:
                                AssetImage('assets/images/loading.gif'),
                          ),
                        ],
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(vertical: 20.0),
                        child: Column(
                          children: [
                            Text(
                                'con alquinet ofrece y recibe lo mejor'
                                    .toUpperCase(),
                                style: Theme.of(context).textTheme.headline2,
                                textAlign: TextAlign.center),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(vertical: 20.0),
                      decoration: const BoxDecoration(
                        border: Border.symmetric(
                          horizontal:
                              BorderSide(width: 0.5, color: Colors.white),
                        ),
                      ),
                      child: Column(
                        children: const [
                          Text(
                            'La problemática que se genera al arrendar una vivienda se da por que no se sabe como es la persona quien alquila y la persona que va a alquilar la vivienda, es por eso que en Alquinet nos preocupamos por la seguridad de todos.',
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(vertical: 25.0),
                      decoration: const BoxDecoration(
                        border: Border.symmetric(
                          horizontal:
                              BorderSide(width: 0.5, color: Colors.white),
                        ),
                      ),
                      child: Row(
                        children: const [
                          SizedBox(
                            width: 200.0,
                            child: Text(
                              '1,000+',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 32.0,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          SizedBox(
                            width: 150.0,
                            child: Text(
                              'Viviendas que esperamos registrar en este 2023',
                              style: TextStyle(color: Colors.white),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(vertical: 25.0),
                      decoration: const BoxDecoration(
                        border: Border.symmetric(
                          horizontal:
                              BorderSide(width: 1.0, color: Colors.white),
                        ),
                      ),
                      child: Row(
                        children: const [
                          SizedBox(
                            width: 200.0,
                            child: Text(
                              '500+',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 32.0,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          SizedBox(
                            width: 150.0,
                            child: Text(
                              'Usuarios registrados en nuestras plataformas hasta el 2023',
                              style: TextStyle(color: Colors.white),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      padding: const EdgeInsets.symmetric(vertical: 15.0),
                      decoration: const BoxDecoration(
                        border: Border.symmetric(
                          horizontal:
                              BorderSide(width: 1.0, color: Colors.white),
                        ),
                      ),
                      child: Column(
                        children: [
                          Text(
                            'Alquinet',
                            style: Theme.of(context).textTheme.headline1,
                          ),
                          Column(
                            children: [
                              Text(
                                'Información al alcance de tus manos',
                                style: Theme.of(context).textTheme.bodyText1,
                              ),
                            ],
                          ),
                          TextButton(
                            onPressed: () =>
                                Navigator.pushNamed(context, 'interfaz'),
                            child: const Text('Conocenos'),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
