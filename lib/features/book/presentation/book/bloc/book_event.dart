part of 'book_bloc.dart';

@freezed
class BookEvent with _$BookEvent {
  const factory BookEvent.addNewBook(Book book) = AddNewBookEvent;
  const factory BookEvent.updateBook(Book book) = UpdateBookEvent;
}