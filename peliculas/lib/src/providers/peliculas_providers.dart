
import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:peliculas/src/models/pelicula_model.dart';

class PeliculasProvider {

  String _apikey    = '3f436c3497963eb042c9b07a82f03e00';
  String _url       = 'https://api.themoviedb.org';
  String _language  = 'es-ES';

  Future<List<Pelicula>> getEnCines() async{
    
    final url = Uri.https(_url, '3/movie/now_playing', {
      'apikey': _apikey,
      'language': _language
    });

    final resp = await http.get( url );
    final decodedData = json.decode(resp.body);
    final peliculas = new Peliculas.fromJsonList(decodedData['results']);

    
    return peliculas.items;
  }

}