
part of 'books_bloc.dart';


@freezed
class BooksState with _$BooksState {
  const factory BooksState.initial() = _Initial;
  const factory BooksState.loading() = _Loading;
  const factory BooksState.loaded(List<Book> book) = _Loaded;
  const factory BooksState.error() = _Failed;
}
