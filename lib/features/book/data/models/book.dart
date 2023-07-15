import 'package:freezed_annotation/freezed_annotation.dart';
part 'book.freezed.dart';
part 'book.g.dart';

@freezed
class Book with _$Book {
  factory Book({
    required String id,
    required String isbn,
    required String title,
    required int price,
    required String category,
    String? description,
    DateTime? publishedAt,
    @Default(false)
    bool hardCover,
  }) = _Book;

 factory Book.fromJson(Map<String, dynamic> json) => _$BookFromJson(json);
}