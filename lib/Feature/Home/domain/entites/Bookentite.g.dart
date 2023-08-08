// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Bookentite.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class BookEntitesAdapter extends TypeAdapter<BookEntites> {
  @override
  final int typeId = 0;

  @override
  BookEntites read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return BookEntites(
      image: fields[0] as String?,
      titel: fields[2] as String?,
      authrname: fields[3] as String?,
      price: fields[4] as num?,
      rate: fields[5] as num?,
      bookid: fields[1] as String,
    );
  }

  @override
  void write(BinaryWriter writer, BookEntites obj) {
    writer
      ..writeByte(6)
      ..writeByte(0)
      ..write(obj.image)
      ..writeByte(1)
      ..write(obj.bookid)
      ..writeByte(2)
      ..write(obj.titel)
      ..writeByte(3)
      ..write(obj.authrname)
      ..writeByte(4)
      ..write(obj.price)
      ..writeByte(5)
      ..write(obj.rate);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is BookEntitesAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
