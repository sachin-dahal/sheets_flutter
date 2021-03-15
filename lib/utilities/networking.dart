import 'package:dio/dio.dart';
import 'package:sheets_flutter/utilities/model.dart';

const url =
    "https://script.googleusercontent.com/macros/echo?user_content_key=SGkYdgsv4Rz9jMla9AxAPr5tfKDmxGHE2jgOGu1nQLDQvwEkjvLFSURXbdbW8aNl1LXET23OTiaEiyXFjNumocBDLNNAHsBMm5_BxDlH2jW0nuo2oDemN9CCS2h10ox_1xSncGQajx_ryfhECjZEnL_DCh1UlDjns9ohud1pTF5dOOVHVhhAcU3WVKTSIW9rNcjSrbAlzb5ffGiack8_7P12morhzjIkzZw0RE5vLU09HAelqyy4LQ&lib=MNaz9E8WB-OAkpwazDy5dngsZdVE0xiob";

class NetworkHelper {
  getData() async {
    try {
      List<MovieModel> movies = [];
      var response = await Dio().get(url);
      print(response.data);
      response.data.forEach((movie) {
        movies.add(MovieModel.fromJson(movie));
      });
      return movies;
    } catch (e) {
      print("ERROR: $e");
    }
  }
}
