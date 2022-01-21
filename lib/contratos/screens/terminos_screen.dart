import 'package:flutter/material.dart';

class TerminosScreen extends StatelessWidget {
  const TerminosScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          const _CustomAppBar(),
          SliverList(
            delegate: SliverChildListDelegate([
              const _PosterAndTitle(),
              const _Overview(),
            ])
          )
        ],
      ),
    );
  }
}

class _CustomAppBar extends StatelessWidget {
  const _CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: const Color(0xFF1A1D2F),
      expandedHeight: 200,
      pinned: true,
      flexibleSpace: FlexibleSpaceBar(
        centerTitle: true,
        titlePadding: const EdgeInsets.all(0),
        title: Container(
          width: double.infinity,
          alignment: Alignment.bottomCenter,
          color: Colors.black45,
          child: const Text('Detalles del titulo', style: TextStyle(fontSize: 16, color: Colors.white),),
        ),
        background: const FadeInImage(
          placeholder: AssetImage('assets/images/jar-loading.gif'), 
          image: AssetImage('assets/images_contratos/casa_defecto.jpg'),
          fit: BoxFit.cover,
          ),
      ),
    );
  }
}


class _PosterAndTitle extends StatelessWidget {

  const _PosterAndTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final TextTheme textTheme = Theme.of(context).textTheme;

    return Container(
      margin: const EdgeInsets.only(top: 20),
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: const FadeInImage(
              placeholder: AssetImage('assets/images/jar-loading.gif'), 
              image: AssetImage('assets/images_contratos/casa_defecto.jpg'),
              height: 120,
            ),
          ),

          const SizedBox(width: 20),

          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Titulo ', style: textTheme.headline5,overflow: TextOverflow.ellipsis, maxLines: 2,),
              // Esta linea es por si se quiere poner un subtitulo debajo del Titulo
              //Text('Titulo ', style: Theme.of(context).textTheme.headline5,overflow: TextOverflow.ellipsis, maxLines: 2,),
            ],
          )
        ],
      ),
    );
  }
}


class _Overview extends StatelessWidget {
  const _Overview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      child: Text('Officia nisi amet sit sunt adipisicing Lorem nostrud nisi nostrud.',
      textAlign: TextAlign.justify,
      style: Theme.of(context).textTheme.subtitle1,
      ),
    );
  }
}