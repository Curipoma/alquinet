import 'dart:convert';

import 'package:alquinet/contratos/models/models.dart';
import 'package:alquinet/main.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:http/http.dart' as http;

class PreciosProvider  extends ChangeNotifier{
  String _apiKey= '0d4ec087a734852b980a3360853d281e';
  String _baseUrl= 'api.themoviedb.org';
  String _lenguage= 'es_ES';

  List<Movie> onDisplayPrecios = [];

  PreciosProvider() {
    print('MoviesProvider Iniciallizado');

    this.getOnDisplayPrecios();
  }

  getOnDisplayPrecios() async {
    var url = Uri.https(_baseUrl, '3/movie/now_playing', {
      'api_key' : _apiKey,
      'lenguage':_lenguage,
      'page': '1'
      });

  // Await the http get response, then decode the json-formatted response.
  final response = await http.get(url);
  final nowplayingResponse= NowplayingResponse.fromJson(response.body);

  onDisplayPrecios = nowplayingResponse.results;
  }
}



















/*Provider main
class Appstate extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers:[
        ChangeNotifierProvider(create: (_)=> PreciosProvider(), lazy: false,)
      ]
      child: MyApp(),
      );
  }
}*/