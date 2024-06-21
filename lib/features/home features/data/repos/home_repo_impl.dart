import 'package:booklyapp/core/errors/failure.dart';
import 'package:booklyapp/core/utils/api_service.dart';
import 'package:booklyapp/features/home%20features/data/models/books_model/books_model.dart';
import 'package:booklyapp/features/home%20features/data/repos/home_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HomeRepoImpl extends HomeRepo {
  final ApiService apiService;

  HomeRepoImpl(this.apiService);

  @override
  Future<Either<Failure, List<BooksModel>>> fetchNewestBooks() async {
    try {
      var data = await apiService.get(
          endPoints:
              'volumes?Filtering=free-ebooks&q=subject:programming&Sorting=newest');
      List<BooksModel> books = [];
      for (var item in data['items']) {
        books.add(BooksModel.fromJson(item));
      }
      return right(books);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioError(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<BooksModel>>> fetchFeaturedBooks() {
    // TODO: implement fetchFeaturedBooks
    throw UnimplementedError();
  }
}
