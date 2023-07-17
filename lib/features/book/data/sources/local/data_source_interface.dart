import 'package:book_crud/features/book/data/models/book.dart';
import 'package:book_crud/features/book/presentation/home/bloc/books_bloc.dart';

abstract class DataSourceInterface {
  Future<List<Book>> getAllBooks(SearchParam? param);

  Future<bool> addBook(Book book);

  Future<bool> updateBook(Book book);

  Future<List<Book>> deleteBook(String id);

  Future<bool> deleteAllBooks();
}
