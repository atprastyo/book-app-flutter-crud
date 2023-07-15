// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'book_hive.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class BookHiveAdapter extends TypeAdapter<BookHive> {
  @override
  final int typeId = 0;

  @override
  BookHive read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return BookHive(
      id: fields[0] as String,
      isbn: fields[1] as String,
      title: fields[2] as String,
      price: fields[3] as int,
      category: fields[4] as String,
      description: fields[5] as String?,
      publishedAt: fields[6] as DateTime?,
      hardCover: fields[7] as bool,
    );
  }

  @override
  void write(BinaryWriter writer, BookHive obj) {
    writer
      ..writeByte(8)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.isbn)
      ..writeByte(2)
      ..write(obj.title)
      ..writeByte(3)
      ..write(obj.price)
      ..writeByte(4)
      ..write(obj.category)
      ..writeByte(5)
      ..write(obj.description)
      ..writeByte(6)
      ..write(obj.publishedAt)
      ..writeByte(7)
      ..write(obj.hardCover);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is BookHiveAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
