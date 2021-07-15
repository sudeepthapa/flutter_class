import 'package:flutter/material.dart';
import 'package:flutter_class/components/MovieCard.dart';
import 'package:flutter_class/models/movie.dart';
import 'package:flutter_class/services/api_service.dart';
class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    ApiService apiService = ApiService();
    return Scaffold(
      appBar: AppBar(
        title: Text('IMDB Movies'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text('Trendings', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
            ),
            Container(
              padding: EdgeInsets.only(left: 10),
              height: 200,
              child: FutureBuilder(
                future: apiService.getTrendingMovies(),
                builder: (BuildContext context, AsyncSnapshot snap){
                  if(snap.hasData){
                    return ListView.builder(
                      itemCount: snap.data.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (BuildContext context, int index){
                        Movie movie = snap.data[index];
                        return MovieCard(movie: movie,);
                      }
                    );
                  }else {
                    return Center(
                      child: CircularProgressIndicator()
                    );
                  }
                }
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text('Populars', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
            ),
            Container(
              padding: EdgeInsets.only(left: 10),
              height: 200,
              child: FutureBuilder(
                future: apiService.getTrendingMovies(),
                builder: (BuildContext context, AsyncSnapshot snap){
                  if(snap.hasData){
                    return ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, int index){
                        Movie movie = snap.data[index];
                        return MovieCard(movie: movie,);
                      }
                    );
                  }else {
                    return Center(
                      child: CircularProgressIndicator()
                    );
                  }
                }
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text('Populars', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
            ),
            Container(
              padding: EdgeInsets.only(left: 10),
              height: 200,
              child: FutureBuilder(
                future: apiService.getTrendingMovies(),
                builder: (BuildContext context, AsyncSnapshot snap){
                  if(snap.hasData){
                    return ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, int index){
                        Movie movie = snap.data[index];
                        return MovieCard(movie: movie,);
                      }
                    );
                  }else {
                    return Center(
                      child: CircularProgressIndicator()
                    );
                  }
                }
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text('Populars', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
            ),
            Container(
              padding: EdgeInsets.only(left: 10),
              height: 200,
              child: FutureBuilder(
                future: apiService.getTrendingMovies(),
                builder: (BuildContext context, AsyncSnapshot snap){
                  if(snap.hasData){
                    return ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, int index){
                        Movie movie = snap.data[index];
                        return MovieCard(movie: movie,);
                      }
                    );
                  }else {
                    return Center(
                      child: CircularProgressIndicator()
                    );
                  }
                }
              ),
            )
          ],
        ),
      ),
    );
  }
}