import 'dart:io';

import 'package:book_crud/features/book/data/repositories/books_repository_impl.dart';
import 'package:book_crud/features/book/data/sources/local/data_source.dart';
import 'package:book_crud/features/book/domain/entities/book_hive.dart';
import 'package:book_crud/features/book/domain/repositories/books_repository.dart';
import 'package:book_crud/features/book/domain/use_cases/add_book_use_case.dart';
import 'package:book_crud/features/book/domain/use_cases/delete_all_book_use_case.dart';
import 'package:book_crud/features/book/domain/use_cases/delete_book_use_case.dart';
import 'package:book_crud/features/book/domain/use_cases/get_all_books_use_case.dart';
import 'package:book_crud/features/book/domain/use_cases/update_book_use_case.dart';
import 'package:book_crud/features/book/presentation/book/bloc/book_bloc.dart';
import 'package:book_crud/features/book/presentation/home/bloc/books_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart' as path;

final injector = GetIt.instance;

Future<void> initDependencies() async {
  /// Data Source ///
  Directory directory = await path.getApplicationDocumentsDirectory();

  injector.registerLazySingleton<HiveInterface>(() {
    final HiveInterface hive = Hive;
    hive.init(directory.path);
    hive.registerAdapter(BookHiveAdapter());
    return hive;
  });

  final Box<BookHive> booksBox =
      await injector<HiveInterface>().openBox(DataSource.bookBoxKey);

  injector.registerLazySingleton<DataSource>(
    () => DataSource(hive: injector(), booksBox: booksBox),
  );

  /// Repository ///
  injector.registerLazySingleton<BooksRepository>(
    () => BooksRepositoryImpl(dataSource: injector()),
  );

  /// UseCase ///
  injector.registerLazySingleton(
    () => GetAllBooksUseCase(bookRepository: injector()),
  );
  injector.registerLazySingleton(
    () => AddBookUseCase(booksRepository: injector()),
  );
  injector.registerLazySingleton(
    () => UpdateBookUseCase(booksRepository: injector()),
  );
  injector.registerLazySingleton(
    () => DeleteBookUseCase(booksRepository: injector()),
  );
  injector.registerLazySingleton(
    () => DeleteAllBookUseCase(booksRepository: injector()),
  );

  /// BloC ///
  injector.registerFactory(
    () => BooksBloc(
      getAllBooksUseCase: injector(),
      deleteBookUseCase: injector(),
      deleteAllBookUseCase: injector(),
    ),
  );
  injector.registerFactory(
    () => BookBloc(
      addBookUseCase: injector(),
      updateBookUseCase: injector(),
    ),
  );
}
