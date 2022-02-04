import 'package:alquinet/contratos/widgets/widgets.dart';
import 'package:flutter/material.dart';

class HomeScreenContratos extends StatelessWidget {
  final String imageUrl;
  const HomeScreenContratos({Key? key, required this.imageUrl})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Alquinet',
          style: Theme.of(context).textTheme.bodyText1),
        elevation: 0,
        actions: [
          IconButton(
            icon: const Icon(Icons.settings),
            onPressed: () {},
          )
        ],
      ),
      body: GridView.count(
        padding: const EdgeInsets.all(20),
        crossAxisSpacing: 15,
        mainAxisSpacing: 2,
        crossAxisCount: 2,
        children: [
          Column(
            children: <Widget>[
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Contrato1()),
                  );
                },
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20.0),
                  child: Image.asset(
                    'assets/images_contratos/casa_1.jpg',
                    fit: BoxFit.cover,
                    width: 200,
                    height: 140,
                  ),
                ),
              ),
              const Text(
                'Contrato Departamento1',
                style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          Column(
            children: <Widget>[
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Contrato1()),
                  );
                },
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20.0),
                  child: Image.asset(
                    'assets/images_contratos/casa_2.jpg',
                    fit: BoxFit.cover,
                    width: 200,
                    height: 140,
                  ),
                ),
              ),
              const Text(
                'Contrato Departamento2',
                style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          Column(
            children: <Widget>[
              ClipRRect(
                borderRadius: BorderRadius.circular(20.0),
                child: Image.asset(
                  'assets/images_contratos/casa_3.jpg',
                  fit: BoxFit.cover,
                  width: 200,
                  height: 140,
                ),
              ),
              const Text(
                "Contrato Departamento3",
                style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
              )
            ],
          ),
          Column(
            children: <Widget>[
              ClipRRect(
                borderRadius: BorderRadius.circular(20.0),
                child: Image.asset(
                  'assets/images_contratos/casa_4.jpg',
                  fit: BoxFit.cover,
                  width: 200,
                  height: 140,
                ),
              ),
              const Text(
                'Contrato Casa1 ',
                style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
              )
            ],
          ),
          Column(
            children: <Widget>[
              ClipRRect(
                borderRadius: BorderRadius.circular(20.0),
                child: Image.asset(
                  'assets/images_contratos/casa_5.jpg',
                  fit: BoxFit.cover,
                  width: 200,
                  height: 140,
                ),
              ),
              const Text(
                'Contrato Casa2',
                style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
              )
            ],
          ),
          Column(
            children: <Widget>[
              ClipRRect(
                borderRadius: BorderRadius.circular(20.0),
                child: Image.asset(
                  'assets/images_contratos/casa_6.jpg',
                  fit: BoxFit.cover,
                  width: 200,
                  height: 140,
                ),
              ),
              const Text(
                'Contrato casa3',
                style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
              )
            ],
          ),
        ],
      ),
    );
  }
}
