import 'dart:developer';

import 'package:book_crud/core/error/exceptions.dart';
import 'package:book_crud/features/book/data/models/book.dart';
import 'package:book_crud/features/book/data/sources/local/data_source_interface.dart';
import 'package:book_crud/features/book/domain/entities/book_hive.dart';
import 'package:book_crud/features/book/presentation/home/bloc/books_bloc.dart';
import 'package:hive/hive.dart';

class DataSource implements DataSourceInterface {
  static const String bookBoxKey = 'books_box';
  final HiveInterface hive;
  final Box<BookHive> booksBox;

  DataSource({required this.hive, required this.booksBox});

  @override
  Future<bool> addBook(Book book) async {
    try {
      await booksBox.put(book.id, book);
      return Future.value(true);
    } catch (e) {
      log('addBook $e');
      throw ConnectionException();
    }
  }

  @override
  Future<List<Book>> getAllBooks(SearchParam? param) async {
    try {
      List<Book> result = _bookMapper(booksBox.values);

      if (param != null && param.query.trim().isNotEmpty) {
        result = result.where(
          (element) {
            final savedTitle = element.title.toLowerCase();
            final searchTitle = param.query.toLowerCase();
            return savedTitle.contains(searchTitle);
          },
        ).toList();
      }

      return Future.value(result);
    } catch (e) {
      log('getAllBooks $e');
      throw NoDataException();
    }
  }

  @override
  Future<bool> deleteAllBooks() async {
    try {
      await booksBox.clear();
      return Future.value(true);
    } catch (e) {
      log('deleteAllBooks $e');
      throw ConnectionException();
    }
  }

  @override
  Future<List<Book>> deleteBook(String id) async {
    try {
      await booksBox.delete(id);
      final List<Book> result = _bookMapper(booksBox.values);

      return Future.value(result);
    } catch (e) {
      log('deleteBook $e');
      throw ConnectionException();
    }
  }

  @override
  Future<bool> updateBook(Book book) async {
    try {
      await booksBox.put(book.id, book);
      return Future.value(true);
    } catch (e) {
      log('updateBook $e');
      throw ConnectionException();
    }
  }

  List<Book> _bookMapper(Iterable<BookHive> values) {
    List<Book> books = values
        .map<Book>(
          (e) => Book(
            id: e.id,
            code: e.code,
            isbn: e.isbn,
            title: e.title,
            description: e.description,
            price: e.price,
            category: e.category,
            publishedAt: e.publishedAt,
            hardCover: e.hardCover,
            createdAt: e.createdAt,
          ),
        )
        .toList();
    books.sort((a, b) => a.createdAt.compareTo(b.createdAt));
    return books;
  }
}
