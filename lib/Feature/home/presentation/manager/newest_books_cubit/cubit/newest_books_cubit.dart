import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../domain/entities/book_entity.dart';
import '../../../../domain/use_cases/fetch_newest_books_usecase.dart';

part 'newest_books_state.dart';

class NewestBooksCubit extends Cubit<NewestBooksState> {
  final FetchNewestBooksUseCase fetchNewestBooksUseCase;

  NewestBooksCubit(this.fetchNewestBooksUseCase) : super(NewestBooksInitial());

  Future<void> fetchNewestBooks() async {
    emit(NewestBooksLoading());
    var result = await fetchNewestBooksUseCase.call();
    result.fold((failure) {
      emit(NewestBooksFailure(failure.errMessage));
    }, (books) {
      emit(NewestBooksSuccess(books));
    });
  }
}
