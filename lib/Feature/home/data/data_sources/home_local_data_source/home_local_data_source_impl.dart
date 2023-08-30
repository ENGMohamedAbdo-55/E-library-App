import 'package:hive/hive.dart';
import 'package:projects/Feature/home/domain/entities/book_entity.dart';
import 'package:projects/constants.dart';

import 'home_local_data_source.dart';

class HomeLocalDataSourceImpl extends HomeLocalDataSource {
  @override
  List<BookEntity> fetchFeaturedBooks({int pageNumber = 0}) {
    final int startIndex = pageNumber * 10;
   final  int endIndex = (pageNumber + 1) * 10;
    var box = Hive.box<BookEntity>(KFeaturedBox);
    int length = box.values.length;
    if (startIndex >= length || endIndex > length) {
      return [];
    }
    return box.values.toList().sublist(startIndex, endIndex);
  }

  @override
  List<BookEntity> fetchNewestBooks() {
    var box = Hive.box<BookEntity>(kNeewstBox);
    return box.values.toList();
  }
}
