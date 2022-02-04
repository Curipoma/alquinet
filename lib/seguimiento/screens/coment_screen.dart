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
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).backgroundColor),
              ),
              subtitle: Text(
                data[i]['message'],
                style: const TextStyle(color: Colors.black),
              ),
            ),
          )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Theme.of(context).primaryColor,
        backgroundColor: Theme.of(context).backgroundColor,
        centerTitle: true,
        title: Text(
          'Comentarios',
          style: TextStyle(color: Theme.of(context).primaryColor),
        ),
      ),
      body: CommentBox(
        userImage:
            "https://w7.pngwing.com/pngs/557/856/png-transparent-black-speech-bubble-computer-icons-facebook-like-button-like-share-comment-rectangle-black-silhouette.png",
        child: commentChild(filedata),
        labelText: 'Escriba su comentario...',
        withBorder: false,
        errorText: 'El espacio no se puede quedar en blanco',
        sendButtonMethod: () {
          if (formKey.currentState!.validate()) {
            setState(() {
              var value = {
                'name': 'Nuevo usuario',
                'pic': 'https://picsum.photos/300/30',
                'message': commentController.text
              };
              filedata.insert(filedata.length, value);
            });
            commentController.clear();
            FocusScope.of(context).unfocus();
          }
        },
        formKey: formKey,
        commentController: commentController,
        backgroundColor: Theme.of(context).backgroundColor,
        textColor: Theme.of(context).primaryColor,
        sendWidget: const Icon(Icons.send_sharp, size: 30, color: Colors.white),
      ),
    );
  }
}
