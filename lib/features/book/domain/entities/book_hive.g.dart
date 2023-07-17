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
      code: fields[1] as String,
      isbn: fields[2] as String,
      title: fields[3] as String,
      price: fields[4] as int,
      category: fields[5] as String,
      description: fields[6] as String?,
      publishedAt: fields[7] as DateTime?,
      hardCover: fields[8] as bool,
      createdAt: fields[9] == null ? 1 : fields[9] as int,
    );
  }

  @override
  void write(BinaryWriter writer, BookHive obj) {
    writer
      ..writeByte(10)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.code)
      ..writeByte(2)
      ..write(obj.isbn)
      ..writeByte(3)
      ..write(obj.title)
      ..writeByte(4)
      ..write(obj.price)
      ..writeByte(5)
      ..write(obj.category)
      ..writeByte(6)
      ..write(obj.description)
      ..writeByte(7)
      ..write(obj.publishedAt)
      ..writeByte(8)
      ..write(obj.hardCover)
      ..writeByte(9)
      ..write(obj.createdAt);
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
