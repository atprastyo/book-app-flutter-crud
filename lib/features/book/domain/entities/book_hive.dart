import 'package:hive/hive.dart';

part 'book_hive.g.dart';

@HiveType(typeId: 0)
class BookHive {
  BookHive({
    required this.id,
    required this.code,
    required this.isbn,
    required this.title,
    required this.price,
    required this.category,
    this.description,
    this.publishedAt,
    this.hardCover = false,
    required this.createdAt,
  });

  @HiveField(0)
  final String id;
  @HiveField(1)
  final String code;
  @HiveField(2)
  final String isbn;
  @HiveField(3)
  final String title;
  @HiveField(4)
  final int price;
  @HiveField(5)
  final String category;
  @HiveField(6)
  final String? description;
  @HiveField(7)
  final DateTime? publishedAt;
  @HiveField(8)
  final bool hardCover;
  @HiveField(9, defaultValue: 1)
  final int createdAt;
}
