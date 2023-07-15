import 'package:book_crud/core/error/exceptions.dart';
import 'package:book_crud/features/book/data/models/book.dart';
import 'package:book_crud/features/book/data/sources/local/book_hive.dart';
import 'package:book_crud/features/book/data/sources/local/books_local_source.dart';
import 'package:dartz/dartz.dart';
import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';

class BookHiveSource implements BooksLocalSource {
  final _bookBoxKey = 'books_box';

  @override
  Future<bool> initDb() async {
    try {
      final appDocumentDir = await getApplicationDocumentsDirectory();
      Hive.init(appDocumentDir.path);
      Hive.registerAdapter(BookHiveAdapter());
      await Hive.openBox<BookHive>(_bookBoxKey);
      return true;
    } catch (_) {
      throw ConnectionException();
    }
  }

  @override
  Future<Unit> addBook(Book book) async {
    try {
      final booksBox = Hive.box<BookHive>(_bookBoxKey);
      final convertedTask = BookHive(
        id: book.id,
        isbn: book.isbn,
        title: book.title,
        price: book.price,
        category: book.category,
        description: book.description,
        hardCover: book.hardCover,
        publishedAt: book.publishedAt,
      );
      await booksBox.add(convertedTask);
      return Future.value(unit);
    } catch (_) {
      throw ConnectionException();
    }
  }

  @override
  Future<List<Book>> getAllBooks() async {
    try {
      final booksBox = Hive.box<BookHive>(_bookBoxKey);
      final result = booksBox.values
          .map<Book>(
            (e) => Book(
              id: e.id,
              isbn: e.isbn,
              title: e.title,
              description: e.description,
              price: e.price,
              category: e.category,
              publishedAt: e.publishedAt,
              hardCover: e.hardCover,
            ),
          )
          .toList();
      return result;
    } catch (_) {
      throw NoDataException();
    }
  }

  @override
  Future<Unit> deleteAllBooks() async {
    final booksBox = Hive.box<BookHive>(_bookBoxKey);
    await booksBox.clear();
    return Future.value(unit);
  }

  @override
  Future<Unit> deleteBook(String id) async {
    final booksBox = Hive.box<BookHive>(_bookBoxKey);
    await booksBox.delete(id);
    return Future.value(unit);
  }
}
