import 'package:comment_box/comment/comment.dart';
import 'package:flutter/material.dart';

class ComentScreen extends StatefulWidget {
  const ComentScreen({Key? key}) : super(key: key);

  @override
  _ComentScreen createState() => _ComentScreen();
}

class _ComentScreen extends State<ComentScreen> {
  final formKey = GlobalKey<FormState>();
  final TextEditingController commentController = TextEditingController();
  List filedata = [
    {
      'name': 'Juan Perez',
      'pic': 'https://picsum.photos/300/30',
      'message': 'Me encanto la atencion recibida por los arrendatarios'
    },
    {
      'name': 'Carla Hidalgo',
      'pic': 'https://picsum.photos/300/30',
      'message': 'Las casas en arriendo tienen un estilo muy encantador'
    },
    {
      'name': 'Marcos Narvaez',
      'pic': 'https://picsum.photos/300/30',
      'message': 'Voy a recomendar este servicio a mas personas'
    },
    {
      'name': 'Roberto Alvarez',
      'pic': 'https://picsum.photos/300/30',
      'message': 'Buena atencion'
    },
  ];

  Widget commentChild(data) {
    return ListView(
      children: [
        for (var i = 0; i < data.length; i++)
          Padding(
            padding: const EdgeInsets.fromLTRB(2.0, 8.0, 2.0, 0.0),
            child: ListTile(
              leading: GestureDetector(
                onTap: () async {
                  // Display the image in large form.
                  print("Comentario clickeado");
                },
                child: Container(
                  height: 50.0,
                  width: 50.0,
                  decoration: const BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.all(Radius.circular(50))),
                  child: CircleAvatar(
                    radius: 50,
                    backgroundImage: NetworkImage(data[i]['pic'] + "$i"),
                  ),
                ),
              ),
              title: Text(
                data[i]['name'],
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Text(data[i]['message']),
            ),
          )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:
            Text('Comentarios', style: Theme.of(context).textTheme.bodyText1),
      ),
      // body: CommentBox(
      //   userImage:
      //       "https://scontent.fuio21-1.fna.fbcdn.net/v/t39.30808-1/p240x240/271828939_1139892820081664_4734569930124435156_n.jpg?_nc_cat=107&ccb=1-5&_nc_sid=7206a8&_nc_eui2=AeHegRF6Fwi7gMl1CIa0WeXTocUL7Xe9R0ihxQvtd71HSD8QdpxY8LlYGr2fHFJti_W4Q2ZtlHUjy9KniPu0-pcS&_nc_ohc=A4Zgo_SwrTEAX-zlDzA&_nc_ht=scontent.fuio21-1.fna&oh=00_AT9lHXyVJ7WquoGCg3XwlqDMekOLauHpgQ1DcaCKWQTv2w&oe=61EF6230",
      //   child: commentChild(filedata),
      //   labelText: 'Escriba su comentario...',
      //   withBorder: false,
      //   errorText: 'El espacio no se puede quedar en blanco',
      //   sendButtonMethod: () {
      //     if (formKey.currentState!.validate()) {
      //       print(commentController.text);
      //       setState(() {
      //         var value = {
      //           'name': 'Nuevo usuario',
      //           'pic':
      //               'https://scontent.fuio21-1.fna.fbcdn.net/v/t39.30808-1/p240x240/271828939_1139892820081664_4734569930124435156_n.jpg?_nc_cat=107&ccb=1-5&_nc_sid=7206a8&_nc_eui2=AeHegRF6Fwi7gMl1CIa0WeXTocUL7Xe9R0ihxQvtd71HSD8QdpxY8LlYGr2fHFJti_W4Q2ZtlHUjy9KniPu0-pcS&_nc_ohc=A4Zgo_SwrTEAX-zlDzA&_nc_ht=scontent.fuio21-1.fna&oh=00_AT9lHXyVJ7WquoGCg3XwlqDMekOLauHpgQ1DcaCKWQTv2w&oe=61EF6230',
      //           'message': commentController.text
      //         };
      //         filedata.insert(0, value);
      //       });
      //       commentController.clear();
      //       FocusScope.of(context).unfocus();
      //     } else {
      //       print("No validado");
      //     }
      //   },
      //   formKey: formKey,
      //   commentController: commentController,
      //   backgroundColor: Colors.black,
      //   textColor: Colors.white,
      //   sendWidget: const Icon(Icons.send_sharp, size: 30, color: Colors.white),
      // ),
    );
  }
}
