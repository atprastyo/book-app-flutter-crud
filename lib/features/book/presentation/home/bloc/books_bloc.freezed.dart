// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'books_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$BooksEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SearchParam? param) getAllBooks,
    required TResult Function() deleteAllBooks,
    required TResult Function(String bookId) deleteBook,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SearchParam? param)? getAllBooks,
    TResult? Function()? deleteAllBooks,
    TResult? Function(String bookId)? deleteBook,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SearchParam? param)? getAllBooks,
    TResult Function()? deleteAllBooks,
    TResult Function(String bookId)? deleteBook,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetAllBooksEvent value) getAllBooks,
    required TResult Function(DeleteAllBooksEvent value) deleteAllBooks,
    required TResult Function(DeleteBooksEvent value) deleteBook,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetAllBooksEvent value)? getAllBooks,
    TResult? Function(DeleteAllBooksEvent value)? deleteAllBooks,
    TResult? Function(DeleteBooksEvent value)? deleteBook,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetAllBooksEvent value)? getAllBooks,
    TResult Function(DeleteAllBooksEvent value)? deleteAllBooks,
    TResult Function(DeleteBooksEvent value)? deleteBook,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BooksEventCopyWith<$Res> {
  factory $BooksEventCopyWith(
          BooksEvent value, $Res Function(BooksEvent) then) =
      _$BooksEventCopyWithImpl<$Res, BooksEvent>;
}

/// @nodoc
class _$BooksEventCopyWithImpl<$Res, $Val extends BooksEvent>
    implements $BooksEventCopyWith<$Res> {
  _$BooksEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetAllBooksEventCopyWith<$Res> {
  factory _$$GetAllBooksEventCopyWith(
          _$GetAllBooksEvent value, $Res Function(_$GetAllBooksEvent) then) =
      __$$GetAllBooksEventCopyWithImpl<$Res>;
  @useResult
  $Res call({SearchParam? param});
}

/// @nodoc
class __$$GetAllBooksEventCopyWithImpl<$Res>
    extends _$BooksEventCopyWithImpl<$Res, _$GetAllBooksEvent>
    implements _$$GetAllBooksEventCopyWith<$Res> {
  __$$GetAllBooksEventCopyWithImpl(
      _$GetAllBooksEvent _value, $Res Function(_$GetAllBooksEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? param = freezed,
  }) {
    return _then(_$GetAllBooksEvent(
      param: freezed == param
          ? _value.param
          : param // ignore: cast_nullable_to_non_nullable
              as SearchParam?,
    ));
  }
}

/// @nodoc

class _$GetAllBooksEvent implements GetAllBooksEvent {
  const _$GetAllBooksEvent({this.param});

  @override
  final SearchParam? param;

  @override
  String toString() {
    return 'BooksEvent.getAllBooks(param: $param)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetAllBooksEvent &&
            (identical(other.param, param) || other.param == param));
  }

  @override
  int get hashCode => Object.hash(runtimeType, param);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetAllBooksEventCopyWith<_$GetAllBooksEvent> get copyWith =>
      __$$GetAllBooksEventCopyWithImpl<_$GetAllBooksEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SearchParam? param) getAllBooks,
    required TResult Function() deleteAllBooks,
    required TResult Function(String bookId) deleteBook,
  }) {
    return getAllBooks(param);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SearchParam? param)? getAllBooks,
    TResult? Function()? deleteAllBooks,
    TResult? Function(String bookId)? deleteBook,
  }) {
    return getAllBooks?.call(param);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SearchParam? param)? getAllBooks,
    TResult Function()? deleteAllBooks,
    TResult Function(String bookId)? deleteBook,
    required TResult orElse(),
  }) {
    if (getAllBooks != null) {
      return getAllBooks(param);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetAllBooksEvent value) getAllBooks,
    required TResult Function(DeleteAllBooksEvent value) deleteAllBooks,
    required TResult Function(DeleteBooksEvent value) deleteBook,
  }) {
    return getAllBooks(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetAllBooksEvent value)? getAllBooks,
    TResult? Function(DeleteAllBooksEvent value)? deleteAllBooks,
    TResult? Function(DeleteBooksEvent value)? deleteBook,
  }) {
    return getAllBooks?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetAllBooksEvent value)? getAllBooks,
    TResult Function(DeleteAllBooksEvent value)? deleteAllBooks,
    TResult Function(DeleteBooksEvent value)? deleteBook,
    required TResult orElse(),
  }) {
    if (getAllBooks != null) {
      return getAllBooks(this);
    }
    return orElse();
  }
}

abstract class GetAllBooksEvent implements BooksEvent {
  const factory GetAllBooksEvent({final SearchParam? param}) =
      _$GetAllBooksEvent;

  SearchParam? get param;
  @JsonKey(ignore: true)
  _$$GetAllBooksEventCopyWith<_$GetAllBooksEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteAllBooksEventCopyWith<$Res> {
  factory _$$DeleteAllBooksEventCopyWith(_$DeleteAllBooksEvent value,
          $Res Function(_$DeleteAllBooksEvent) then) =
      __$$DeleteAllBooksEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DeleteAllBooksEventCopyWithImpl<$Res>
    extends _$BooksEventCopyWithImpl<$Res, _$DeleteAllBooksEvent>
    implements _$$DeleteAllBooksEventCopyWith<$Res> {
  __$$DeleteAllBooksEventCopyWithImpl(
      _$DeleteAllBooksEvent _value, $Res Function(_$DeleteAllBooksEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$DeleteAllBooksEvent implements DeleteAllBooksEvent {
  const _$DeleteAllBooksEvent();

  @override
  String toString() {
    return 'BooksEvent.deleteAllBooks()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$DeleteAllBooksEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SearchParam? param) getAllBooks,
    required TResult Function() deleteAllBooks,
    required TResult Function(String bookId) deleteBook,
  }) {
    return deleteAllBooks();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SearchParam? param)? getAllBooks,
    TResult? Function()? deleteAllBooks,
    TResult? Function(String bookId)? deleteBook,
  }) {
    return deleteAllBooks?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SearchParam? param)? getAllBooks,
    TResult Function()? deleteAllBooks,
    TResult Function(String bookId)? deleteBook,
    required TResult orElse(),
  }) {
    if (deleteAllBooks != null) {
      return deleteAllBooks();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetAllBooksEvent value) getAllBooks,
    required TResult Function(DeleteAllBooksEvent value) deleteAllBooks,
    required TResult Function(DeleteBooksEvent value) deleteBook,
  }) {
    return deleteAllBooks(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetAllBooksEvent value)? getAllBooks,
    TResult? Function(DeleteAllBooksEvent value)? deleteAllBooks,
    TResult? Function(DeleteBooksEvent value)? deleteBook,
  }) {
    return deleteAllBooks?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetAllBooksEvent value)? getAllBooks,
    TResult Function(DeleteAllBooksEvent value)? deleteAllBooks,
    TResult Function(DeleteBooksEvent value)? deleteBook,
    required TResult orElse(),
  }) {
    if (deleteAllBooks != null) {
      return deleteAllBooks(this);
    }
    return orElse();
  }
}

abstract class DeleteAllBooksEvent implements BooksEvent {
  const factory DeleteAllBooksEvent() = _$DeleteAllBooksEvent;
}

/// @nodoc
abstract class _$$DeleteBooksEventCopyWith<$Res> {
  factory _$$DeleteBooksEventCopyWith(
          _$DeleteBooksEvent value, $Res Function(_$DeleteBooksEvent) then) =
      __$$DeleteBooksEventCopyWithImpl<$Res>;
  @useResult
  $Res call({String bookId});
}

/// @nodoc
class __$$DeleteBooksEventCopyWithImpl<$Res>
    extends _$BooksEventCopyWithImpl<$Res, _$DeleteBooksEvent>
    implements _$$DeleteBooksEventCopyWith<$Res> {
  __$$DeleteBooksEventCopyWithImpl(
      _$DeleteBooksEvent _value, $Res Function(_$DeleteBooksEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bookId = null,
  }) {
    return _then(_$DeleteBooksEvent(
      null == bookId
          ? _value.bookId
          : bookId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DeleteBooksEvent implements DeleteBooksEvent {
  const _$DeleteBooksEvent(this.bookId);

  @override
  final String bookId;

  @override
  String toString() {
    return 'BooksEvent.deleteBook(bookId: $bookId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteBooksEvent &&
            (identical(other.bookId, bookId) || other.bookId == bookId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, bookId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteBooksEventCopyWith<_$DeleteBooksEvent> get copyWith =>
      __$$DeleteBooksEventCopyWithImpl<_$DeleteBooksEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SearchParam? param) getAllBooks,
    required TResult Function() deleteAllBooks,
    required TResult Function(String bookId) deleteBook,
  }) {
    return deleteBook(bookId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SearchParam? param)? getAllBooks,
    TResult? Function()? deleteAllBooks,
    TResult? Function(String bookId)? deleteBook,
  }) {
    return deleteBook?.call(bookId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SearchParam? param)? getAllBooks,
    TResult Function()? deleteAllBooks,
    TResult Function(String bookId)? deleteBook,
    required TResult orElse(),
  }) {
    if (deleteBook != null) {
      return deleteBook(bookId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetAllBooksEvent value) getAllBooks,
    required TResult Function(DeleteAllBooksEvent value) deleteAllBooks,
    required TResult Function(DeleteBooksEvent value) deleteBook,
  }) {
    return deleteBook(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetAllBooksEvent value)? getAllBooks,
    TResult? Function(DeleteAllBooksEvent value)? deleteAllBooks,
    TResult? Function(DeleteBooksEvent value)? deleteBook,
  }) {
    return deleteBook?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetAllBooksEvent value)? getAllBooks,
    TResult Function(DeleteAllBooksEvent value)? deleteAllBooks,
    TResult Function(DeleteBooksEvent value)? deleteBook,
    required TResult orElse(),
  }) {
    if (deleteBook != null) {
      return deleteBook(this);
    }
    return orElse();
  }
}

abstract class DeleteBooksEvent implements BooksEvent {
  const factory DeleteBooksEvent(final String bookId) = _$DeleteBooksEvent;

  String get bookId;
  @JsonKey(ignore: true)
  _$$DeleteBooksEventCopyWith<_$DeleteBooksEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$BooksState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Book> book) loaded,
    required TResult Function() error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Book> book)? loaded,
    TResult? Function()? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Book> book)? loaded,
    TResult Function()? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Failed value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Failed value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Failed value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BooksStateCopyWith<$Res> {
  factory $BooksStateCopyWith(
          BooksState value, $Res Function(BooksState) then) =
      _$BooksStateCopyWithImpl<$Res, BooksState>;
}

/// @nodoc
class _$BooksStateCopyWithImpl<$Res, $Val extends BooksState>
    implements $BooksStateCopyWith<$Res> {
  _$BooksStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$BooksStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'BooksState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Book> book) loaded,
    required TResult Function() error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Book> book)? loaded,
    TResult? Function()? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Book> book)? loaded,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Failed value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Failed value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Failed value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements BooksState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$$_LoadingCopyWith<$Res> {
  factory _$$_LoadingCopyWith(
          _$_Loading value, $Res Function(_$_Loading) then) =
      __$$_LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoadingCopyWithImpl<$Res>
    extends _$BooksStateCopyWithImpl<$Res, _$_Loading>
    implements _$$_LoadingCopyWith<$Res> {
  __$$_LoadingCopyWithImpl(_$_Loading _value, $Res Function(_$_Loading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Loading implements _Loading {
  const _$_Loading();

  @override
  String toString() {
    return 'BooksState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Book> book) loaded,
    required TResult Function() error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Book> book)? loaded,
    TResult? Function()? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Book> book)? loaded,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Failed value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Failed value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Failed value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements BooksState {
  const factory _Loading() = _$_Loading;
}

/// @nodoc
abstract class _$$_LoadedCopyWith<$Res> {
  factory _$$_LoadedCopyWith(_$_Loaded value, $Res Function(_$_Loaded) then) =
      __$$_LoadedCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Book> book});
}

/// @nodoc
class __$$_LoadedCopyWithImpl<$Res>
    extends _$BooksStateCopyWithImpl<$Res, _$_Loaded>
    implements _$$_LoadedCopyWith<$Res> {
  __$$_LoadedCopyWithImpl(_$_Loaded _value, $Res Function(_$_Loaded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? book = null,
  }) {
    return _then(_$_Loaded(
      null == book
          ? _value._book
          : book // ignore: cast_nullable_to_non_nullable
              as List<Book>,
    ));
  }
}

/// @nodoc

class _$_Loaded implements _Loaded {
  const _$_Loaded(final List<Book> book) : _book = book;

  final List<Book> _book;
  @override
  List<Book> get book {
    if (_book is EqualUnmodifiableListView) return _book;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_book);
  }

  @override
  String toString() {
    return 'BooksState.loaded(book: $book)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Loaded &&
            const DeepCollectionEquality().equals(other._book, _book));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_book));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoadedCopyWith<_$_Loaded> get copyWith =>
      __$$_LoadedCopyWithImpl<_$_Loaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Book> book) loaded,
    required TResult Function() error,
  }) {
    return loaded(book);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Book> book)? loaded,
    TResult? Function()? error,
  }) {
    return loaded?.call(book);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Book> book)? loaded,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(book);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Failed value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Failed value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Failed value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _Loaded implements BooksState {
  const factory _Loaded(final List<Book> book) = _$_Loaded;

  List<Book> get book;
  @JsonKey(ignore: true)
  _$$_LoadedCopyWith<_$_Loaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_FailedCopyWith<$Res> {
  factory _$$_FailedCopyWith(_$_Failed value, $Res Function(_$_Failed) then) =
      __$$_FailedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_FailedCopyWithImpl<$Res>
    extends _$BooksStateCopyWithImpl<$Res, _$_Failed>
    implements _$$_FailedCopyWith<$Res> {
  __$$_FailedCopyWithImpl(_$_Failed _value, $Res Function(_$_Failed) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Failed implements _Failed {
  const _$_Failed();

  @override
  String toString() {
    return 'BooksState.error()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Failed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Book> book) loaded,
    required TResult Function() error,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Book> book)? loaded,
    TResult? Function()? error,
  }) {
    return error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Book> book)? loaded,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Failed value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Failed value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Failed value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Failed implements BooksState {
  const factory _Failed() = _$_Failed;
}
