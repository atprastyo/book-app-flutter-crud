part of 'books_bloc.dart';

@freezed
class BooksEvent with _$BooksEvent {

  const factory BooksEvent.getAllBooks({SearchParam? param}) = GetAllBooksEvent;
}

class SearchParam extends DefaultParams{
  const SearchParam(this.query);

  final String query;
}
