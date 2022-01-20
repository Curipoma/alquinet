import 'package:flutter/material.dart';

class ComprobanteScreen extends StatelessWidget {
  const ComprobanteScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
      title: const Center(child: Text('Alquinet')),
      backgroundColor: const Color(0xFF1A1D2F),
      elevation: 0,
    ));
  }
}
