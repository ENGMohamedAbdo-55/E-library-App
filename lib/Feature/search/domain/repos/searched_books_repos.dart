import 'package:dartz/dartz.dart';
import 'package:projects/Core/errors/failures.dart';
import 'package:projects/Feature/home/domain/entities/book_entity.dart';

abstract class SearchedBooksRepos{
  
  Future<Either<Failure,List<BookEntity>>> fetchSearchedBooks();
}