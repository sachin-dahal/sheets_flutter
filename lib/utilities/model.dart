class MovieModel {
  String movie;
  int date;
  double rating;

  MovieModel({this.movie, this.date, this.rating});

  MovieModel.fromJson(Map<String, dynamic> json) {
    movie = json['movie'] as String;
    date = json['date'] as int;
    rating = json['rating'].toDouble();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['movie'] = this.movie;
    data['date'] = this.date;
    data['rating'] = this.rating;
    return data;
  }
}