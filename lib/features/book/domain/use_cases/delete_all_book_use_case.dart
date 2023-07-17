import 'package:book_crud/core/error/failure.dart';
import 'package:book_crud/core/use_case/base_use_case.dart';
import 'package:book_crud/features/book/domain/repositories/books_repository.dart';
import 'package:dartz/dartz.dart';

class DeleteAllBookUseCase extends BaseUseCase<bool, DefaultParams> {
  DeleteAllBookUseCase({required this.booksRepository});

  final BooksRepository booksRepository;

  @override
  Future<Either<Failure, bool>> call(param) async {
    return await booksRepository.deleteAllBook();
  }
}
