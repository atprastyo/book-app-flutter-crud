part of 'add_book_bloc.dart';

@freezed
class AddBookEvent with _$AddBookEvent {
  const factory AddBookEvent.addNewBook(Book book) = AddNewBookEvent;
}
