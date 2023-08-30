import 'package:dartz/dartz.dart';

import '../../../../Core/errors/failures.dart';
import '../entities/book_entity.dart';

abstract class HomeRepo {
  Future<Either<Failure, List<BookEntity>>> fetchFeaturedBooks(
      {int pageNumber = 0});
  Future<Either<Failure, List<BookEntity>>> fetchNewestBooks();
  Future<Either<Failure, List<BookEntity>>> fetchSimilarBooks({required String category});
}
