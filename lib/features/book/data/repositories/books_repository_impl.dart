import 'package:book_crud/core/error/exceptions.dart';
import 'package:book_crud/core/error/failure.dart';
import 'package:book_crud/features/book/data/models/book.dart';
import 'package:book_crud/features/book/data/sources/local/books_local_source.dart';
import 'package:book_crud/features/book/domain/repositories/books_repository.dart';
import 'package:book_crud/features/book/presentation/home/bloc/books_bloc.dart';
import 'package:dartz/dartz.dart';

class BooksRepositoryImpl implements BooksRepository {
  const BooksRepositoryImpl({required this.booksLocalDataSource});

  final BooksLocalSource booksLocalDataSource;

  @override
  Future<Either<Failure, Unit>> addBook(Book book) async {
    try {
      final response = await booksLocalDataSource.addBook(book);
      return Right(response);
    } on ConnectionException {
      return Left(DatabaseFailure());
    }
  }

  @override
  Future<Either<Failure, List<Book>>> getAllBooks(SearchParam? param) async {
    try {
      final response = await booksLocalDataSource.getAllBooks(param);
      return Right(response);
    } on NoDataException {
      return Left(NoDataFailure());
    }
  }

  @override
  Future<Either<Failure, bool>> updateBook(Book book) async {
    try {
      final response = await booksLocalDataSource.updateBook(book);
      return Right(response);
    } on ConnectionException {
      return Left(DatabaseFailure());
    }
  }

  @override
  Future<Either<Failure, List<Book>>> deleteBook(String id) async {
    try {
      final response = await booksLocalDataSource.deleteBook(id);
      return Right(response);
    } on ConnectionException {
      return Left(DatabaseFailure());
    }
  }

  @override
  Future<Either<Failure, Unit>> deleteAllBook() async {
    try {
      final response = await booksLocalDataSource.deleteAllBooks();
      return Right(response);
    } on ConnectionException {
      return Left(DatabaseFailure());
    }
  }
}
