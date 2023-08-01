// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class DetailsmodelAdapter extends TypeAdapter<Detailsmodel> {
  @override
  final int typeId = 0;

  @override
  Detailsmodel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Detailsmodel(
      createdDate: fields[0] as DateTime,
      value: fields[1] as double,
    );
  }

  @override
  void write(BinaryWriter writer, Detailsmodel obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.createdDate)
      ..writeByte(1)
      ..write(obj.value);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is DetailsmodelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
