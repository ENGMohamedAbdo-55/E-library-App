import 'package:projects/Feature/home/data/models/book_model/book_model.dart';

import '../../../domain/entities/book_entity.dart';

abstract class HomeRemoteDataSource
{
  Future< List<BookModel>>  fetchFeaturedBooks({int pageNumber=0});
  Future< List<BookModel>> fetchNewestBooks();
  Future< List<BookEntity>> fetchSimilarBooks();
}   
