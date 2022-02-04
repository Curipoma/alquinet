import 'package:alquinet/contratos/widgets/widgets.dart';
import 'package:flutter/material.dart';

class ComprobanteScreen extends StatelessWidget {
  const ComprobanteScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Alquinet', style: Theme.of(context).textTheme.bodyText1),
        elevation: 0,
        actions: [
          IconButton(
            icon: const Icon(Icons.settings),
            onPressed: () {},
          )
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        children: const [CustomCardTemp()],
      ),
    );
  }
}
