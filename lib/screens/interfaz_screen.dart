import 'package:alquinet/screens/home_screen.dart';
import 'package:flutter/material.dart';

class InterfazScreen extends StatelessWidget {
  const InterfazScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [],
        title: const Text('Alquinet'),
      ),
      backgroundColor: Theme.of(context).backgroundColor,
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CircleAvatar(
              backgroundImage: AssetImage('assets/images/interfaz_1.jpeg'),
              radius: 100,
            ),
            TextButton(
              onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const HomeScreen(
                            title: 'Alquinet',
                            selectedIndex: 3,
                          ))),
              child: Text('Registrar casa',
                  style: Theme.of(context).textTheme.subtitle1),
            ),
            const CircleAvatar(
              backgroundImage: AssetImage('assets/images/interfaz_2.jpeg'),
              radius: 100,
            ),
            TextButton(
              onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const HomeScreen(
                            title: 'Alquinet',
                            selectedIndex: 1,
                          ))),
              child: Text(
                'Registrar usuario',
                style: Theme.of(context).textTheme.subtitle1,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
