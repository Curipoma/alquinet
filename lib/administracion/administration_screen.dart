import 'package:alquinet/administracion/pages/auth_page.dart';
import 'package:alquinet/main.dart';
import 'package:flutter/material.dart';

class Administration extends StatelessWidget {
  const Administration({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    /*   return Scaffold(
      
        appBar: AppBar(
          
          title: const Text('Alquinet'),
          backgroundColor: Colors.black87,
           ),
        
        body: const AuthPage());
  }
   */
    return Stack(
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/bg_login_user.jpeg'),
                fit: BoxFit.cover),
          ),
          child: const AuthPage(),
        ),
      ],
    );
  }
}
