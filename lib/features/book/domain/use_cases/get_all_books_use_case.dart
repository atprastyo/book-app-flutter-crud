import 'package:book_crud/core/error/failure.dart';
import 'package:book_crud/core/use_case/base_use_case.dart';
import 'package:book_crud/features/book/data/models/book.dart';
import 'package:book_crud/features/book/domain/repositories/books_repository.dart';
import 'package:dartz/dartz.dart';

class GetAllBooksUseCase extends BaseUseCase<List<Book>, DefaultParams> {
  GetAllBooksUseCase({required this.bookRepository});

  final BooksRepository bookRepository;

  @override
  Future<Either<Failure, List<Book>>> call(DefaultParams param) async {
    return await bookRepository.getAllBooks();
  }
}
