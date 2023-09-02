import 'package:projects/Feature/home/data/models/book_model/book_model.dart';

import '../../../domain/entities/book_entity.dart';

abstract class HomeLocalDataSource {
  List<BookEntity> fetchFeaturedBooks({int pageNumber=0});
  List<BookModel> fetchNewestBooks();
}
