import 'package:filmguru/feature/movies_list/controller/movies_list_controller.dart';
import 'package:get/get.dart';

class MoviesListBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MoviesListController>(() => MoviesListController());
  }
}
