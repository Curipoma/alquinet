import 'package:flutter/material.dart';

class TerminosScreen extends StatelessWidget {
  const TerminosScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Theme.of(context).primaryColor,
        backgroundColor: Theme.of(context).backgroundColor,
        centerTitle: true,
        title: Text(
          'Alquinet',
          style: TextStyle(color: Theme.of(context).primaryColor),
        ),
      ),
      body: CustomScrollView(
        slivers: [
          const _CustomAppBar(),
          SliverList(
              delegate: SliverChildListDelegate([
            const _PosterAndTitle(),
            const _Overview(),
          ]))
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
          child: const Text(
            'Terminos y condiciones',
            style: TextStyle(fontSize: 16, color: Colors.white),
          ),
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
      padding: const EdgeInsets.symmetric(horizontal: 25),
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
              Text(
                'Inmueble',
                style: textTheme.headline5,
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
              ),
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
      child: Text(
        'Es requisito necesario para la adquisición de el bien inmueble que se ofrecen en este sitio, que lea y acepte los siguientes Términos y Condiciones que a continuación se redactan\n\n'
        '• PAGO DE ARRIENDO: El ARRENDATARIO se reserva el derecho de realizar cobros por anticipado cuando lo considere conveniente. Así también cualquier cuenta deberá ser pagada al momento de ser solicitada por recepción, para lo cual el huésped deberá contar con su entera predisposición\n\n'
        '• FORMAS DE PAGO: El pago puede ser realizado en efectivo en moneda nacional o dólares americanos”.\n\n'
        '• ESTACIONAMIENTO: El arrendamiento  puede incluir el estacionamiento mediante el pago de una cuota y/o una cantidad justa.\n\n'
        '• PRIVACIDAD : Se garantiza la privacidad de el ARRENDADOR en todos sus aspectos (información personal, detalles de pago, numero de celular , cuentas bancarias etc.) el ARRENDATARIO no podrá dar esta información salvo que deba ser revelada en cumplimiento a una orden judicial o requerimientos legales en caso de ello se tomara acciones en el ámbito legal.\n\n',
        textAlign: TextAlign.justify,
        style: TextStyle(color: Theme.of(context).backgroundColor),
      ),
    );
  }
}
