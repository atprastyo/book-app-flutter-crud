part of 'add_book_bloc.dart';

@freezed
class AddBookState with _$AddBookState {
  const factory AddBookState.initial() = _Initial;
  const factory AddBookState.loading() = _Loading;
  const factory AddBookState.success() = _Success;
  const factory AddBookState.failed() = _Failed;
}
