import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';


class CardSwiper extends StatelessWidget {
  const CardSwiper({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.of(context).size;

    return SizedBox(
      width: double.infinity,
      height: size.height * 0.5,
      child: Swiper(
        itemCount: 10,
        layout: SwiperLayout.STACK,
        itemWidth: size.width * 0.6,
        itemHeight: size.height * 0.9,
        itemBuilder: (_, int index) {
          return ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: const FadeInImage(
              placeholder: AssetImage ('assets/images/jar-loading.gif'),
              image: AssetImage ('assets/images_contratos/casa_1.jpg'),
              fit: BoxFit.cover,
            ),
          );
        },
      )
    );
  }
}
