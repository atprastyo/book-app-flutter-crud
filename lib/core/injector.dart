import 'package:book_crud/features/book/data/repositories/books_repository_impl.dart';
import 'package:book_crud/features/book/data/sources/local/book_hive_source.dart';
import 'package:book_crud/features/book/data/sources/local/books_local_source.dart';
import 'package:book_crud/features/book/domain/repositories/books_repository.dart';
import 'package:book_crud/features/book/domain/use_cases/add_book_use_case.dart';
import 'package:book_crud/features/book/domain/use_cases/get_all_books_use_case.dart';
import 'package:book_crud/features/book/domain/use_cases/update_book_use_case.dart';
import 'package:book_crud/features/book/presentation/book/bloc/book_bloc.dart';
import 'package:book_crud/features/book/presentation/home/bloc/books_bloc.dart';
import 'package:get_it/get_it.dart';

final injector = GetIt.instance;

Future<void> initDependencies() async {
  /// Data Source ///
  injector.registerLazySingleton<BooksLocalSource>(() => BookHiveSource());

  /// Repository ///
  injector.registerLazySingleton<BooksRepository>(
    () => BooksRepositoryImpl(booksLocalDataSource: injector()),
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

  /// BloC ///
  injector.registerFactory(() => BooksBloc(getAllBooksUseCase: injector()));
  injector.registerFactory(
    () => BookBloc(
      addBookUseCase: injector(),
      updateBookUseCase: injector(),
    ),
  );

  await injector<BooksLocalSource>().initDb();
}
