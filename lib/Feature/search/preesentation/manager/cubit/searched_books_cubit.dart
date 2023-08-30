import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:projects/Feature/home/domain/entities/book_entity.dart';

part 'searched_books_state.dart';

class SearchedBooksCubit extends Cubit<SearchedBooksState> {
  SearchedBooksCubit() : super(SearchedBooksCubitInitial());
}
