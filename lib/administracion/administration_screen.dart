import 'package:alquinet/administracion/pages/auth_page.dart';
import 'package:alquinet/main.dart';
import 'package:flutter/material.dart';

class Administration extends StatelessWidget {
  const Administration({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
        appBar: AppBar(
          
          title: const Text('Alquinet'),
          backgroundColor: Colors.black87,
           ),
        
        body: const AuthPage());
  }
}
