import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class InquilinosScreen extends StatelessWidget {
   
  const InquilinosScreen({Key? key}) : super(key: key);
  
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
            image: NetworkImage('https://www.cuerpomente.com/medio/2019/07/03/relaja-tu-cara-cuadrada_cfa0022f_846x846.jpg'), 
            placeholder: AssetImage('assets/Images/jar-loading.gif'),
            width: double.infinity,
            height: 230,
            fit: BoxFit.cover,
            fadeInDuration: Duration(milliseconds: 30),
            ),

            const ListTile(
              contentPadding: EdgeInsets.fromLTRB(15, 10, 25, 0),
              title: Text('Agente de bienes raices raices: Ana Castro'),
              subtitle: Text('Formas de contacto: anacastrocasas@gmail.com'),
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
    );

    
  }
}