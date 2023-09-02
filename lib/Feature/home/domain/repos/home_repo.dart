import 'package:dartz/dartz.dart';
import 'package:projects/Feature/home/data/models/book_model/book_model.dart';

import '../../../../Core/errors/failures.dart';
import '../entities/book_entity.dart';

abstract class HomeRepo {
  Future<Either<Failure, List<BookEntity>>> fetchFeaturedBooks(
      {int pageNumber = 0});
  Future<Either<Failure, List<BookModel>>> fetchNewestBooks();
  Future<Either<Failure, List<BookEntity>>> fetchSimilarBooks({required String category});
}
