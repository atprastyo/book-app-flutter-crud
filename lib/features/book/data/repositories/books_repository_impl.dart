import 'package:book_crud/core/error/exceptions.dart';
import 'package:book_crud/core/error/failure.dart';
import 'package:book_crud/features/book/data/models/book.dart';
import 'package:book_crud/features/book/data/sources/local/books_local_source.dart';
import 'package:book_crud/features/book/domain/repositories/books_repository.dart';
import 'package:dartz/dartz.dart';

class BooksRepositoryImpl implements BooksRepository {
  const BooksRepositoryImpl({required this.booksLocalDataSource});

  final BooksLocalSource booksLocalDataSource;

  @override
  Future<Either<Failure, Unit>> addBook(Book book) async {
    try {
      final response = await booksLocalDataSource.addBook(
        Book(
          id: book.id,
          isbn: book.isbn,
          title: book.title,
          price: book.price,
          category: book.category,
          description: book.description,
          hardCover: book.hardCover,
          publishedAt: book.publishedAt,
        ),
      );
      return Right(response);
    } on ConnectionException {
      return Left(DatabaseFailure());
    }
  }

  @override
  Future<Either<Failure, List<Book>>> getAllBooks() async {
    try {
      final response = await booksLocalDataSource.getAllBooks();
      return Right(response);
    } on NoDataException {
      return Left(NoDataFailure());
    }
  }
}
