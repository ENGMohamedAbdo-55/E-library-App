  import 'package:hive/hive.dart';
import 'package:projects/Feature/home/data/models/book_model/book_model.dart';

import '../../Feature/home/domain/entities/book_entity.dart';

void saveData(List<BookModel> books,String boxName) {
     var box= Hive.box<BookModel>(boxName);
    box.addAll(books);
  }