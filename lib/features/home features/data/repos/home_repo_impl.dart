import 'package:booklyapp/core/errors/failure.dart';
import 'package:booklyapp/core/utils/api_service.dart';
import 'package:booklyapp/features/home%20features/data/models/books_model/books_model.dart';
import 'package:booklyapp/features/home%20features/data/repos/home_repo.dart';
import 'package:dartz/dartz.dart';

class HomeRepoImpl extends HomeRepo {
  final ApiService apiService;

  HomeRepoImpl(this.apiService);

  @override
  Future<Either<Failure, List<BooksModel>>> fetchBestSellerBooks() async {
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
      return left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, List<BooksModel>>> fetchFeaturedBooks() {
    // TODO: implement fetchFeaturedBooks
    throw UnimplementedError();
  }
}
