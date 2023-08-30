import '../../../domain/entities/book_entity.dart';

abstract class HomeRemoteDataSource
{
  Future< List<BookEntity>>  fetchFeaturedBooks({int pageNumber=0});
  Future< List<BookEntity>> fetchNewestBooks();
  Future< List<BookEntity>> fetchSimilarBooks();
}   
