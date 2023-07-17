// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'book.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Book _$$_BookFromJson(Map<String, dynamic> json) => _$_Book(
      id: json['id'] as String,
      code: json['code'] as String,
      isbn: json['isbn'] as String,
      title: json['title'] as String,
      price: json['price'] as int,
      category: json['category'] as String,
      createdAt: json['createdAt'] as int,
      description: json['description'] as String?,
      publishedAt: json['publishedAt'] == null
          ? null
          : DateTime.parse(json['publishedAt'] as String),
      hardCover: json['hardCover'] as bool? ?? false,
    );

Map<String, dynamic> _$$_BookToJson(_$_Book instance) => <String, dynamic>{
      'id': instance.id,
      'code': instance.code,
      'isbn': instance.isbn,
      'title': instance.title,
      'price': instance.price,
      'category': instance.category,
      'createdAt': instance.createdAt,
      'description': instance.description,
      'publishedAt': instance.publishedAt?.toIso8601String(),
      'hardCover': instance.hardCover,
    };
