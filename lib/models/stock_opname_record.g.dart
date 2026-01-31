// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stock_opname_record.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class StockOpnameRecordAdapter extends TypeAdapter<StockOpnameRecord> {
  @override
  final int typeId = 11;

  @override
  StockOpnameRecord read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return StockOpnameRecord(
      date: fields[0] as DateTime,
      userId: fields[1] as String,
      userName: fields[2] as String,
      items: (fields[3] as List).cast<StockOpnameItem>(),
    );
  }

  @override
  void write(BinaryWriter writer, StockOpnameRecord obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.date)
      ..writeByte(1)
      ..write(obj.userId)
      ..writeByte(2)
      ..write(obj.userName)
      ..writeByte(3)
      ..write(obj.items);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is StockOpnameRecordAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class StockOpnameItemAdapter extends TypeAdapter<StockOpnameItem> {
  @override
  final int typeId = 12;

  @override
  StockOpnameItem read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return StockOpnameItem(
      productId: fields[0] as String,
      productName: fields[1] as String,
      stockBefore: fields[2] as int,
      stockAfter: fields[3] as int,
      difference: fields[4] as int,
    );
  }

  @override
  void write(BinaryWriter writer, StockOpnameItem obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.productId)
      ..writeByte(1)
      ..write(obj.productName)
      ..writeByte(2)
      ..write(obj.stockBefore)
      ..writeByte(3)
      ..write(obj.stockAfter)
      ..writeByte(4)
      ..write(obj.difference);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is StockOpnameItemAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
