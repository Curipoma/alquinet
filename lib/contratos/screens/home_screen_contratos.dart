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
        foregroundColor: Theme.of(context).primaryColor,
        backgroundColor: Theme.of(context).backgroundColor,
        centerTitle: true,
        title: Text(
          'Alquinet',
          style: TextStyle(color: Theme.of(context).primaryColor),
        ),
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
              Text(
                'Contrato Departamento1',
                style: TextStyle(color: Theme.of(context).backgroundColor),
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
              Text(
                'Contrato Departamento2',
                style: TextStyle(color: Theme.of(context).backgroundColor),
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
              Text(
                "Contrato Departamento3",
                style: TextStyle(color: Theme.of(context).backgroundColor),
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
              Text(
                'Contrato Casa1 ',
                style: TextStyle(color: Theme.of(context).backgroundColor),
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
              Text(
                'Contrato Casa2',
                style: TextStyle(color: Theme.of(context).backgroundColor),
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
              Text(
                'Contrato casa3',
                style: TextStyle(color: Theme.of(context).backgroundColor),
              )
            ],
          ),
        ],
      ),
    );
  }
}
