import 'package:dartz/dartz.dart';
import 'package:projects/Feature/home/data/models/book_model/book_model.dart';

import '../../../../Core/errors/failures.dart';
import '../../../../Core/use_cases/use_case.dart';
import '../entities/book_entity.dart';
import '../repos/home_repo.dart';

class FetchNewestBooksUseCase extends UseCase<List<BookEntity>, NoParam> {
  final HomeRepo homeRepo;
  FetchNewestBooksUseCase(this.homeRepo);

  @override
  Future<Either<Failure, List<BookModel>>> call([NoParam? param]) async {
    return await homeRepo.fetchNewestBooks();
  }
}
