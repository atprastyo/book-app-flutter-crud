import 'package:book_crud/core/error/failure.dart';
import 'package:book_crud/features/book/data/models/book.dart';
import 'package:book_crud/features/book/presentation/home/bloc/books_bloc.dart';
import 'package:dartz/dartz.dart';

abstract class BooksRepository {
  Future<Either<Failure, List<Book>>> getAllBooks(SearchParam? param);

  Future<Either<Failure, bool>> addBook(Book book);

  Future<Either<Failure, bool>> updateBook(Book book);

  Future<Either<Failure, List<Book>>> deleteBook(String bookId);

  Future<Either<Failure, bool>> deleteAllBook();
}
