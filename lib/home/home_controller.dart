import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';
import 'package:sheets_flutter/utilities/model.dart';
import 'package:sheets_flutter/utilities/networking.dart';

class HomeController extends GetxController {
  void onInit() {
    super.onInit();
    getMovies();
  }

  NetworkHelper networkHelper = NetworkHelper();
  List<MovieModel> moviesList = [];

  void getMovies() async {
    moviesList = await networkHelper.getData();
    update();
  }

  Widget getMoviesList() {
    if (moviesList.length == 0)
      return Center(child: CircularProgressIndicator());
    else {
      return ListView.builder(
          itemCount: moviesList.length,
          itemBuilder: (context, index) {
            var data = moviesList[index];
            return ListTile(
              leading: Text((index + 1).toString()),
              title: Text(data.movie),
              subtitle: Text(data.date.toString()),
              trailing: Text("✰ " + data.rating.toString()),
            );
          });
    }
  }
}
