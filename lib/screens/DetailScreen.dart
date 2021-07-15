import 'package:flutter/material.dart';
import 'package:flutter_class/constants/keys.dart';
import 'package:flutter_class/services/api_service.dart';
class DetailScreen extends StatelessWidget {
  final String title;
  final int id;

  DetailScreen({required this.title, required this.id});
  @override
  Widget build(BuildContext context) {
    ApiService apiService = ApiService();
    return Scaffold(
      body: FutureBuilder(
        future: apiService.getMovieDetail(id),
        builder: (BuildContext context, AsyncSnapshot snap){
          if(snap.hasData){
            print(snap.data);
            return ListView(
              children: [
                Container(
                  height: 200,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage('$imageBaseUrl${snap.data.backdropPath}')
                    )
                  )
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(snap.data.title, style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(snap.data.overview),
                ),
              ],
            );
          }else{
            return Center(
              child: CircularProgressIndicator(),
            );
          }
        }
      ),
    );
  }
}