import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sheets_flutter/home/home_controller.dart';

class HomePage extends StatelessWidget {
  final HomeController _homeController = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: () async => _homeController.getMovies(),
      child: Scaffold(
        body: Container(
            child: GetBuilder<HomeController>(
          builder: (_homeController) => _homeController.getMoviesList(),
        )),
      ),
    );
  }
}
