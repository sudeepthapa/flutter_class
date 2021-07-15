class Movie {
  String backdropPath;
  String title;
  int id;
  String posterPath;
  String overview;

  Movie({
    required this.id,
    required this.backdropPath,
    required this.overview,
    required this.posterPath,
    required this.title
  });

  static Movie fromMap(Map<String, dynamic> data){
    return Movie(
      title: data['title'],
      id: data['id'],
      posterPath: data['poster_path'],
      overview: data['overview'],
      backdropPath: data['backdrop_path']
    );
  }

}