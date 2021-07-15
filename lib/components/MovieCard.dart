import 'package:flutter/material.dart';
import 'package:flutter_class/constants/keys.dart';
import 'package:flutter_class/models/movie.dart';
import 'package:flutter_class/screens/DetailScreen.dart';

class MovieCard extends StatelessWidget {
  final Movie movie;
  MovieCard({required this.movie});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (_)=> DetailScreen(
            id: movie.id,
            title: movie.title
          )));
        },
        child: Container(
        key: Key(movie.id.toString()),
        margin: EdgeInsets.only(right: 10),
        alignment: Alignment.bottomCenter,

        decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
                image: NetworkImage('$imageBaseUrl${movie.posterPath}'))),
        height: 200,
        width: 130,
        child: Container(
          height: 60,
          width: double.infinity,
          padding: EdgeInsets.all(10),
          color: Colors.black54.withOpacity(0.5),
          child: Text(movie.title, style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white),),
        ),
      ),
    );
  }
}
