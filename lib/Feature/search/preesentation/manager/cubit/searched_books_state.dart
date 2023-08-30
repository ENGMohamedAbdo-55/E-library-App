part of 'searched_books_cubit.dart';

abstract class SearchedBooksState {}

class SearchedBooksCubitInitial extends SearchedBooksState {}

class SearchedBooksCubitSuccess extends SearchedBooksState {
  final List<BookEntity> books;

  SearchedBooksCubitSuccess(this.books);
}

class SearchedBooksCubitFailure extends SearchedBooksState {
  final String errMessage;

  SearchedBooksCubitFailure(this.errMessage);
}

class SearchedBooksCubitLoading extends SearchedBooksState {}
