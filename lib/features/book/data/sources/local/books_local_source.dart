import 'package:book_crud/features/book/data/models/book.dart';
import 'package:book_crud/features/book/presentation/home/bloc/books_bloc.dart';
import 'package:dartz/dartz.dart';

abstract class BooksLocalSource {
  Future<bool> initDb();

  Future<List<Book>> getAllBooks(SearchParam? param);

  Future<Unit> addBook(Book book);

  Future<Unit> updateBook(Book book);

  Future<Unit> deleteBook(String id);

  Future<Unit> deleteAllBooks();
}
