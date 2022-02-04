import 'package:flutter/material.dart';

class CustomCardTemp extends StatelessWidget {
  const CustomCardTemp({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      elevation: 50,
      child: Column(
        children: [
          const FadeInImage(
            image: NetworkImage(
                'https://ocnmt.org/wp-content/uploads/2015/12/pagina-en-construccion.png'),
            placeholder: AssetImage('assets/images/jar-loading.gif'),
            width: double.infinity,
            height: 230,
            fit: BoxFit.cover,
            fadeInDuration: Duration(milliseconds: 300),
          ),
          Container(
            alignment: AlignmentDirectional.center,
            padding: const EdgeInsets.only(right: 20, top: 10, bottom: 10),
            child: Text(
              'Estamos trabajando, ¡No moleste!',
              style: TextStyle(color: Theme.of(context).backgroundColor),
            ),
          ),
        ],
      ),
    );
  }
}
