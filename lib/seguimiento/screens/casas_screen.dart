import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class CasasScreen extends StatelessWidget {
  const CasasScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Arrendadores', style: Theme.of(context).textTheme.bodyText1),
        ),
      body: Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/fondo_seg.jpg'),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
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
                        'https://media.istockphoto.com/photos/view-of-modern-house-in-australian-style-on-pine-forest-and-blue-sky-picture-id1166331518?k=20&m=1166331518&s=612x612&w=0&h=-9cDXPIuKNCWYjOJZTuD5XzmndnT0MWZ4MnvUvVrZck='),
                    placeholder: AssetImage('assets/images/jar-loading.gif'),
                    width: 300,
                    fit: BoxFit.cover,
                    fadeInDuration: Duration(milliseconds: 300),
                  ),
                ),
                const ListTile(
                  contentPadding: EdgeInsets.fromLTRB(3, 2, 3, 2),
                  title: Text('Vivienda, 3 Habitaciones, 1 baño'),
                  subtitle:
                      Text('UBICACION: Juan León Mera Nro. 19-36 y Av. Patria'),
                  leading: Icon(Icons.home),
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
    ) 
      ,
    );
  }
}
