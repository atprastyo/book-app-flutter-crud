import 'package:book_crud/core/error/failure.dart';
import 'package:book_crud/core/use_case/base_use_case.dart';
import 'package:book_crud/features/book/data/models/book.dart';
import 'package:book_crud/features/book/domain/repositories/books_repository.dart';
import 'package:dartz/dartz.dart';

class UpdateBookUseCase extends BaseUseCase<bool, Book> {
  UpdateBookUseCase({required this.booksRepository});

  final BooksRepository booksRepository;

  @override
  Future<Either<Failure, bool>> call(Book param) async {
    return await booksRepository.updateBook(param);
  }
}
