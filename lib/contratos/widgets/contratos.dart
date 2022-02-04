import 'package:flutter/material.dart';

class Contrato1 extends StatelessWidget {
  const Contrato1({
    Key? key,
  }) : super(key: key);

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
      body: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        margin: const EdgeInsets.all(15),
        elevation: 10,
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              ListTile(
                  contentPadding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  title: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text('CONTRATO DE ARRIENDO\n\n',
                            style: TextStyle(
                                fontSize: 25, fontWeight: FontWeight.bold)),
                      ],
                    ),
                  ),
                  subtitle: const Text(
                    'En la Ciudad de Quito Distrito Metropolitano, hoy ______________________, comparecen a la celebración del presente contrato de arrendamiento de conformidad con las siguientes clausulas.\n\n'
                    'PRIMERA.- COMPARECIENTES.- Comparecen por una parte la Señora ______________________, con Cedula de Ciudadanía ______________________ ecuatoriana, de estado civil ______________________, por sus propios derechos a quien en adelante podrá denominárselo simplemente como el ARRENDADOR; por otra parte la Señora ______________________ con Cedula de Ciudadanía ______________________ ecuatoriana, de estado civil ______________________, por sus propios derechos a quien en adelante podrá denominársela simplemente como el ARRENDATARIO; legalmente capaces para contratar y obligarse, en forma libre y voluntaria convienen en celebrar el presente CONTRATO DE ARRIENDO, contenido en las siguientes clausulas y estipulaciones.\n\n'
                    'SEGUNDA.- ANTECEDENTES.- El ARRENDADOR es legítimo propietario de un departamento de tres dormitorios de la primera planta dentro de la vivienda que se encuentra ubicada en la Calle Isla Rábida Oe5 - 327 e Isla Marchena, de la Cooperativa de Vivienda Salvador Celi, dentro del Distrito Metropolitano de Quito. Adquirido mediante escritura pública otorgada el 12 de Enero del 2010 ante la Notaria Vigésima Segunda del Cantón Quito Dr. Fabián Eduardo Solano Pazmiño e inscrita el 03 de Marzo 2010.\n\n'
                    'TERCERA.- OBJETO.- Con los antecedentes anotados, por medio de este instrumento, los arrendadores, libre y voluntariamente, tienen a bien constituir en arriendo, a favor de los arrendadores, el inmueble de su propiedad descrito en la cláusula anterior, para que este lo use y lo goce, bajo su absoluta responsabilidad, durante el tiempo de duración de este contrato. Dicho inmueble está compuesto de:\n\n'
                    ' Tres Dormitorios con closet- Su piso es de madera\n\n'
                    ' 1 Área de Sala Comedor\n\n'
                    ' 2 y medio Baños\n\n'
                    ' 1 Cocina\n\n'
                    ' Terraza con jardinera, piedra de lavar y tanque de agua, instalaciones para lavadora\n\n'
                    ' Ventanas de aluminio con vidrio\n\n'
                    ' Puertas de madera para ingreso al departamento\n\n'
                    ' Instalaciones eléctricas en perfecto estado\n\n'
                    ' Instalaciones de agua potable; tubería sanitaria, instalación de calefón\n\n'
                    ' Cocina recubierto los pisos de baldosa, muebles bajos y altos\n\n'
                    'Todo lo anotado en perfecto estado, así como con todos los accesorios eléctricos, como tomas corrientes, boquillas, focos (8).\n\n',
                    style: TextStyle(
                        fontStyle: FontStyle.italic,
                        fontSize: 15,
                        fontWeight: FontWeight.normal),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
