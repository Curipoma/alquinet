import 'package:alquinet/screens/screens.dart';
import 'package:alquinet/seguimiento/screens/casas_screen.dart';
import 'package:alquinet/seguimiento/screens/inquilinos_screen.dart';
import 'package:flutter/material.dart';

class CustomerTracking extends StatelessWidget {
  const CustomerTracking({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/fondo_seg.jpg'),
          fit: BoxFit.cover,
        ),
      ),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30)),
              margin: const EdgeInsets.all(30),
              elevation: 10,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(50),
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const CasasScreen(),
                        ));
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.8),
                    child: Column(
                      children: <Widget>[
                        const Image(
                          image:
                              AssetImage('assets/images/seguimiento_casa.png'),
                          width: 200,
                        ),
                        Container(
                          padding: const EdgeInsets.all(8),
                          child: const Text('Arrendadores',
                              style: TextStyle(fontWeight: FontWeight.bold)),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30)),
              margin: const EdgeInsets.all(15),
              elevation: 10,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(50),
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const InquilinosScreen(),
                        ));
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.8),
                    child: Column(
                      children: <Widget>[
                        const Image(
                          image: AssetImage(
                              'assets/images/seguimiento_inquilino.png'),
                          width: 200,
                        ),
                        Container(
                          padding: const EdgeInsets.all(8),
                          child: const Text('Arrendatarios',
                              style: TextStyle(fontWeight: FontWeight.bold)),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30)),
              margin: const EdgeInsets.all(15),
              elevation: 10,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(50),
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const ComentScreen(),
                        ));
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.8),
                    child: Column(
                      children: <Widget>[
                        const Image(
                          image: AssetImage(
                              'assets/images/coment.png'),
                          width: 200,
                        ),
                        Container(
                          padding: const EdgeInsets.all(8),
                          child: const Text('Comentarios',
                              style: TextStyle(fontWeight: FontWeight.bold)),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
