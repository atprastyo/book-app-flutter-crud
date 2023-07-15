import 'package:book_crud/core/error/failure.dart';
import 'package:book_crud/features/book/data/models/book.dart';
import 'package:dartz/dartz.dart';

abstract class BooksRepository {
  Future<Either<Failure, List<Book>>> getAllBooks();

  Future<Either<Failure, Unit>> addBook(Book book);
}
