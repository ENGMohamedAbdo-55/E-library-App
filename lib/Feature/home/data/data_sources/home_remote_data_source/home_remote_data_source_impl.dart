import '../../../../../Core/utiles/api_service.dart';
import '../../../../../Core/utiles/saved_data_fun.dart';
import '../../../../../constants.dart';
import '../../../domain/entities/book_entity.dart';
import '../../models/book_model/book_model.dart';
import 'home_remote_data_source.dart';

class HomeRemoteDataSourceImpl extends HomeRemoteDataSource {
  final ApiService apiService;

  HomeRemoteDataSourceImpl(this.apiService);

  @override
  Future<List<BookEntity>> fetchFeaturedBooks({int pageNumber = 0}) async {
    var data = await apiService.get(
        endPoint:
            'volumes?Filtering=free-ebooks&q=programming&startIndex=${pageNumber * 10}');
    List<BookEntity> books = [];
    for (var bookMap in data['items']) {
      books.add(BookModel.fromJson(bookMap));
    }
    saveData(books, KFeaturedBox);
    return books;
  }

  @override
  Future<List<BookEntity>> fetchNewestBooks() async {
    var data = await apiService.get(
        endPoint:
            'volumes?q=computer-science&filtering=free-ebooks&sorting=newest');
    List<BookEntity> books = [];
    for (var bookMap in data['items']) {
      books.add(BookModel.fromJson(bookMap));
    }
    saveData(books, kNeewstBox);
    return books;
  }
  
  @override
  Future<List<BookEntity>> fetchSimilarBooks() async{

 var data=await apiService.get(endPoint: 'volumes?q=computer-science,programming&filtering=free-ebooks' );
 List <BookEntity> books=[];
 for(var bookMap in data['items'])
 {
  books.add(BookModel.fromJson(bookMap),);
 }
return books;
  }
}













