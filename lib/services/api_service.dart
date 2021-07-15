import 'dart:convert';

import 'package:flutter_class/constants/keys.dart';
import 'package:flutter_class/models/movie.dart';
import 'package:http/http.dart';
class ApiService {

  Future<List<Movie>?> getTrendingMovies() async{
    try {
      Response response = await get(Uri.parse('$baseUrl/trending/movie/week?api_key=$movieDbApiKey'));
      var result = jsonDecode(response.body);
      List res = result['results'];
      List<Movie> movies = res.map((movie) => Movie.fromMap(movie)).toList();
      return movies;
    } catch (e) {
      print(e);
    }
    
  }
  Future<Movie?> getMovieDetail(int id) async{
    try {
      Response response = await get(Uri.parse('$baseUrl/movie/$id?api_key=$movieDbApiKey'));
      var result = jsonDecode(response.body);
      Movie movie = Movie.fromMap(result);
      return movie;
    } catch (e) {
      print(e);
    }
  }

}