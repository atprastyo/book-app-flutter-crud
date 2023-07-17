import 'package:bloc/bloc.dart';
import 'package:book_crud/features/book/data/models/book.dart';
import 'package:book_crud/features/book/domain/use_cases/add_book_use_case.dart';
import 'package:book_crud/features/book/domain/use_cases/update_book_use_case.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'book_bloc.freezed.dart';

part 'book_event.dart';

part 'book_state.dart';

class BookBloc extends Bloc<BookEvent, BookState> {
  final AddBookUseCase addBookUseCase;
  final UpdateBookUseCase updateBookUseCase;

  BookBloc({
    required this.addBookUseCase,
    required this.updateBookUseCase,
  }) : super(const BookState.initial()) {
    on<BookEvent>(
      (event, emit) async {
        if (event is AddNewBookEvent) {
          emit(const BookState.loading());
          final result = await addBookUseCase(event.book);
          result.fold(
            (l) => emit(const BookState.failed()),
            (r) => emit(const BookState.success()),
          );
        }
        if (event is UpdateBookEvent) {
          emit(const BookState.loading());
          final result = await updateBookUseCase(event.book);
          result.fold(
            (l) => emit(const BookState.failed()),
            (r) => emit(const BookState.success()),
          );
        }
      },
    );
  }
}
