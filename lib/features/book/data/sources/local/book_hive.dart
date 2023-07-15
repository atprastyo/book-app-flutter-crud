import 'package:hive/hive.dart';

part 'book_hive.g.dart';

@HiveType(typeId: 0)
class BookHive {
  BookHive({
    required this.id,
    required this.isbn,
    required this.title,
    required this.price,
    required this.category,
    this.description,
    this.publishedAt,
    this.hardCover = false,
  });

  @HiveField(0)
  final String id;
  @HiveField(1)
  final String isbn;
  @HiveField(2)
  final String title;
  @HiveField(3)
  final int price;
  @HiveField(4)
  final String category;
  @HiveField(5)
  final String? description;
  @HiveField(6)
  final DateTime? publishedAt;
  @HiveField(7)
  final bool hardCover;
}
