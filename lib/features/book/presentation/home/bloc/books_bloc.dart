import 'package:bloc/bloc.dart';
import 'package:book_crud/core/use_case/base_use_case.dart';
import 'package:book_crud/features/book/data/models/book.dart';
import 'package:book_crud/features/book/domain/use_cases/delete_all_book_use_case.dart';
import 'package:book_crud/features/book/domain/use_cases/delete_book_use_case.dart';
import 'package:book_crud/features/book/domain/use_cases/get_all_books_use_case.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'books_bloc.freezed.dart';

part 'books_event.dart';

part 'books_state.dart';

class BooksBloc extends Bloc<BooksEvent, BooksState> {
  final GetAllBooksUseCase getAllBooksUseCase;
  final DeleteAllBookUseCase deleteAllBookUseCase;
  final DeleteBookUseCase deleteBookUseCase;

  BooksBloc({
    required this.getAllBooksUseCase,
    required this.deleteAllBookUseCase,
    required this.deleteBookUseCase,
  }) : super(const BooksState.initial()) {
    on<BooksEvent>((event, emit) async {
      if (event is GetAllBooksEvent) {
        emit(const BooksState.loading());
        final response = await getAllBooksUseCase(event.param);
        response.fold(
          (l) => emit(const BooksState.error()),
          (r) {
            total = r.length;
            return emit(BooksState.loaded(r));
          },
        );
      }
      if (event is DeleteBooksEvent) {
        emit(const BooksState.loading());
        final response = await deleteBookUseCase(event.bookId);
        response.fold(
          (l) => emit(const BooksState.error()),
          (r) => emit(BooksState.loaded(r)),
        );
      }
      if (event is DeleteAllBooksEvent) {
        emit(const BooksState.loading());
        final response = await deleteAllBookUseCase(const DefaultParams());
        response.fold(
          (l) => emit(const BooksState.error()),
          (r) => emit(const BooksState.loaded([])),
        );
      }
    });
  }

  int total = 0;
}
