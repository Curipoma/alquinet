import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class CasasScreen extends StatelessWidget {
   
  const CasasScreen({Key? key}) : super(key: key);
  
 @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20)
        ),
      elevation: 50,
      child: Column(
        children: [
          const FadeInImage(
image: NetworkImage('https://media.istockphoto.com/photos/view-of-modern-house-in-australian-style-on-pine-forest-and-blue-sky-picture-id1166331518?k=20&m=1166331518&s=612x612&w=0&h=-9cDXPIuKNCWYjOJZTuD5XzmndnT0MWZ4MnvUvVrZck='), 
            placeholder: AssetImage('assets/Images/jar-loading.gif'),
            width: double.infinity,
            height: 230,
            fit: BoxFit.cover,
            fadeInDuration: Duration(milliseconds: 300),
            ),

            const ListTile(
            contentPadding: EdgeInsets.fromLTRB(15, 10, 25, 0),
            title: Text('Vivienda, 3 Habitaciones, 1 baño'),
            subtitle: Text('UBICACION: Juan León Mera Nro. 19-36 y Av. Patria'),
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
    );

    
  }
}