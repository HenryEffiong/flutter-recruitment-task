import 'package:filmguru/data/api/movies_service_local.dart';
import 'package:filmguru/data/model/movie_item.dart';
import 'package:filmguru/repository/movies_repository.dart';
import 'package:get/get.dart';

class MoviesListController extends GetxController {
  final moviesList = <MovieItem>[].obs;
  late MoviesRepository _moviesRepository;
  late MoviesServiceLocal _moviesServiceLocal;

  @override
  void onInit() {
    _moviesServiceLocal = MoviesServiceLocal();
    _moviesRepository = MoviesRepository(_moviesServiceLocal);
    getMoviesFromRepository();
    super.onInit();
  }

  Future getMoviesFromRepository() async {
    _moviesRepository.getMovies().then((movieItemList) {
      moviesList.value = movieItemList;
    }).catchError((onError) {
      print(onError);
    });
  }
}
