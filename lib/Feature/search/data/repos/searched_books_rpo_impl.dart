import 'package:dartz/dartz.dart';
import 'package:projects/Core/errors/failures.dart';
import 'package:projects/Feature/home/domain/entities/book_entity.dart';
import '../../domain/repos/searched_books_repos.dart';

class SearhedBooksRepoImpl extends SearchedBooksRepos {
  @override
  Future<Either<Failure, List<BookEntity>>> fetchSearchedBooks() {
    throw UnimplementedError();
  }
}
