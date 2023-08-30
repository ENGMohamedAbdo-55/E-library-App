import 'package:dartz/dartz.dart';

import 'package:projects/Feature/home/domain/entities/book_entity.dart';
import 'package:projects/Feature/home/domain/repos/home_repo.dart';

import '../../../../Core/errors/failures.dart';
import '../../../../Core/use_cases/use_case.dart';

class FetchFeaturedBooksUseCase extends UseCase<List<BookEntity>, int> {
  final HomeRepo homeRepo;
  FetchFeaturedBooksUseCase(this.homeRepo);

  @override
  Future<Either<Failure, List<BookEntity>>> call([int param=0]) async {
    return await homeRepo.fetchFeaturedBooks(
      pageNumber: param,
    );
  }
}
