import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class InquilinosScreen extends StatelessWidget {
  const InquilinosScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo[900],
        title: const Text('Arrendatarios'),
      ),
      body: Column(
        children: [
          Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
            margin: const EdgeInsets.all(30),
            elevation: 10,
            child: Column(
              children: [
                const Padding(
                  padding: EdgeInsets.all(8.8),
                  child: FadeInImage(
                    image: NetworkImage(
                        'https://media.istockphoto.com/photos/happy-millennial-hispanic-teen-girl-checking-social-media-holding-at-picture-id1225782571?k=20&m=1225782571&s=612x612&w=0&h=SRN4aF24gu17Gt5CZQ1Rnzq1NFeqsrzzZ7bZWwO9wqI='),
                    placeholder: AssetImage('assets/images/jar-loading.gif'),
                    width: 300,
                    fit: BoxFit.cover,
                    fadeInDuration: Duration(milliseconds: 300),
                  ),
                ),
                const ListTile(
                  contentPadding: EdgeInsets.fromLTRB(3, 2, 3, 2),
                  title: Text('Agente de bienes raices raices: Ana Castro'),
                  subtitle:
                      Text('Formas de contacto: anacastrocasas@gmail.com'),
                  leading: Icon(Icons.person),
                ),
                RatingBar.builder(
                  initialRating: 3,
                  minRating: 1,
                  direction: Axis.horizontal,
                  allowHalfRating: true,
                  itemCount: 5,
                  itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
                  itemBuilder: (context, _) => const Icon(
                    Icons.star,
                    color: Colors.amber,
                  ),
                  onRatingUpdate: (rating) {
                    print(rating);
                  },
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
