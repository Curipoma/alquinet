import 'package:alquinet/contratos/widgets/widgets.dart';
import 'package:flutter/material.dart';

class ComprobanteScreen extends StatelessWidget {
  const ComprobanteScreen({Key? key}) : super(key: key);

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
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        children: const [CustomCardTemp()],
      ),
    );
  }
}
