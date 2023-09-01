
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:projects/Feature/home/domain/repos/home_repo.dart';

import 'similar_books_state.dart';

class SimilarBooksCubit extends Cubit<SimilarBooksState> {
  SimilarBooksCubit(this.homeRepo)
      : super(SimilarBooksInitial());
  final HomeRepo homeRepo;
  Future<void> fetchSimilarBooks() async {
    emit(SimilarBooksLoading());
    var result = await homeRepo.fetchSimilarBooks();
    return result.fold((failure) {
      emit(
        SimilarBooksFailure(failure.errMessage),
      );
    }, (books) {
      emit(
        SimilarBooksSuccess(books),
      );
    });
  }
}
