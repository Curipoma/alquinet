import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';

class CardSwiper extends StatelessWidget {
  const CardSwiper({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final List<String> images = [
      'assets/images_contratos/casa_1.jpg',
      'assets/images_contratos/casa_2.jpg',
      'assets/images_contratos/casa_3.jpg',
      'assets/images_contratos/casa_4.jpg',
      'assets/images_contratos/casa_5.jpg',
      'assets/images_contratos/casa_6.jpg',
    ];

    final size = MediaQuery.of(context).size;

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
          width: size.width * 0.9,
          height: size.height * 0.5,
          child: Swiper(
            itemCount: images.length,
            viewportFraction: 0.8,
            scale: 0.9,
            itemBuilder: (_, int index) {
              return ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(
                  images[index],
                  fit: BoxFit.cover,
                ),
              );
            },
          )
      ),
    );
  }
}
