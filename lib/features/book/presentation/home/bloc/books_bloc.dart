import 'package:bloc/bloc.dart';
import 'package:book_crud/core/use_case/base_use_case.dart';
import 'package:book_crud/features/book/data/models/book.dart';
import 'package:book_crud/features/book/domain/use_cases/get_all_books_use_case.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'books_bloc.freezed.dart';

part 'books_event.dart';

part 'books_state.dart';

class BooksBloc extends Bloc<BooksEvent, BooksState> {
  final GetAllBooksUseCase getAllBooksUseCase;

  BooksBloc({required this.getAllBooksUseCase})
      : super(const BooksState.initial()) {
    on<BooksEvent>((event, emit) async {
      if (event is GetAllBooksEvent) {
        emit(const BooksState.loading());
        final response = await getAllBooksUseCase(const DefaultParams());
        response.fold((l) => emit(const BooksState.error()),
            (r) => emit(BooksState.loaded(r)));
      }
    });
  }
}
