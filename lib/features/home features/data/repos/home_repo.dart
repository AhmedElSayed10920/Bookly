import 'package:booklyapp/core/errors/failure.dart';
import 'package:booklyapp/features/home%20features/data/models/books_model/books_model.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
  Future<Either<Failure, List<BooksModel>>> fetchNewestBooks();
  Future<Either<Failure, List<BooksModel>>> fetchFeaturedBooks();
}
