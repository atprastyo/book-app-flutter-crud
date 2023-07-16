part of 'books_bloc.dart';

@freezed
class BooksEvent with _$BooksEvent {

  const factory BooksEvent.getAllBooks({SearchParam? param}) = GetAllBooksEvent;
  const factory BooksEvent.deleteAllBooks() = DeleteAllBooksEvent;
  const factory BooksEvent.deleteBook(String bookId) = DeleteBooksEvent;
}

class SearchParam extends DefaultParams{
  const SearchParam(this.query);

  final String query;
}
