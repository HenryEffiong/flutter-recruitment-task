import 'package:filmguru/feature/movies_list/controller/movies_list_controller.dart';
import 'package:filmguru/feature/movies_list/widgets/movie_item_row.dart';
import 'package:filmguru/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MoviesListScreen extends GetView<MoviesListController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(S.of(context).mainAppBarTitle),
      ),
      body: Obx(
        () => controller.moviesList.isEmpty
            ? CircularProgressIndicator()
            : ListView.builder(
                itemCount: controller.moviesList.length,
                itemBuilder: (context, index) {
                  return MovieItemRow(controller.moviesList.elementAt(index));
                }),
      ),
    );
  }
}
