import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text('alvarocuripoma@gmail.com'),
                Text('alvaro'),
                Text('admin'),
              ],
            ),
            SizedBox(
              width: 75.0,
              height: 75.0,
              child: Image.asset('assets/images/alquinet_logo.jpeg'),
            ),
          ],
        ),
      ],
    );
  }
}
