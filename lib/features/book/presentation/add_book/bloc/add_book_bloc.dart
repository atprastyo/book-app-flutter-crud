import 'package:bloc/bloc.dart';
import 'package:book_crud/features/book/data/models/book.dart';
import 'package:book_crud/features/book/domain/use_cases/add_book_use_case.dart';

import 'package:freezed_annotation/freezed_annotation.dart';
part 'add_book_event.dart';
part 'add_book_state.dart';
part 'add_book_bloc.freezed.dart';

class AddBookBloc extends Bloc<AddBookEvent, AddBookState> {

  final AddBookUseCase addBookUseCase;

  AddBookBloc({required this.addBookUseCase}) : super(const AddBookState.initial()) {
    on<AddBookEvent>((event, emit) async {
      if(event is AddBookEvent){
        emit(const AddBookState.loading());
        final result = await addBookUseCase(event.book);
        result.fold(
                (l) => emit(const AddBookState.failed()),
                (r) => emit(const AddBookState.success())
        );
      }
    });
  }
}
