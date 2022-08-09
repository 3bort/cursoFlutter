import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:peliculas/models/movie.dart';
import 'package:peliculas/models/now_playing_response.dart';

import '../models/models.dart';

class MoviesProvider extends ChangeNotifier {
  final String _baseUrl = 'api.themoviedb.org';
  final String _apiKey = '1e785600709f153c897d97197bd0dc26';
  final String _language = 'es-ES';

  List<Movie> onDisplayMovies = [];
  List<Movie> popularMovies = [];

  MoviesProvider() {
    //print('MoviesProvider inicializado');
    getOnDisplayMovies();
    getPopularMovies();
  }
  getOnDisplayMovies() async {
    var url = Uri.https(_baseUrl, '3/movie/now_playing', {
      'api_key': _apiKey,
      'language': _language,
      'page': '1',
    });

    // Await the http get response, then decode the json-formatted response.
    final response = await http.get(url);

    final nowPlayingResponse = NowPlayingResponse.fromJson(response.body);

    // print(nowPlayingResponse.results[1].title);
    onDisplayMovies = nowPlayingResponse.results;
    notifyListeners(); //redibujar los cambios y notificar a los widgets
  }

  getPopularMovies() async {
    var url = Uri.https(_baseUrl, '3/movie/popular', {
      'api_key': _apiKey,
      'language': _language,
      'page': '1',
    });

    // Await the http get response, then decode the json-formatted response.
    final response = await http.get(url);

    final popularResponse = PopularResponse.fromJson(response.body);

    // print(nowPlayingResponse.results[1].title);
    popularMovies = [...popularMovies, ...popularResponse.results];
    // print(popularMovies[1]);
    notifyListeners();
  }
}
