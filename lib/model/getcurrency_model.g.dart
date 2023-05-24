// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'getcurrency_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class CurrencyModelAdapter extends TypeAdapter<CurrencyModel> {
  @override
  final int typeId = 0;

  @override
  CurrencyModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return CurrencyModel()
      .._id = fields[0] as int?
      .._name = fields[1] as String?
      .._username = fields[2] as String?
      .._email = fields[3] as String?
      .._address = fields[4] as Address?
      .._phone = fields[5] as String?
      .._website = fields[6] as String?
      .._company = fields[7] as Company?;
  }

  @override
  void write(BinaryWriter writer, CurrencyModel obj) {
    writer
      ..writeByte(8)
      ..writeByte(0)
      ..write(obj._id)
      ..writeByte(1)
      ..write(obj._name)
      ..writeByte(2)
      ..write(obj._username)
      ..writeByte(3)
      ..write(obj._email)
      ..writeByte(4)
      ..write(obj._address)
      ..writeByte(5)
      ..write(obj._phone)
      ..writeByte(6)
      ..write(obj._website)
      ..writeByte(7)
      ..write(obj._company);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CurrencyModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class AddressAdapter extends TypeAdapter<Address> {
  @override
  final int typeId = 1;

  @override
  Address read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Address()
      .._street = fields[0] as String?
      .._suite = fields[1] as String?
      .._city = fields[2] as String?
      .._zipcode = fields[3] as String?
      .._geo = fields[4] as Geo?;
  }

  @override
  void write(BinaryWriter writer, Address obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj._street)
      ..writeByte(1)
      ..write(obj._suite)
      ..writeByte(2)
      ..write(obj._city)
      ..writeByte(3)
      ..write(obj._zipcode)
      ..writeByte(4)
      ..write(obj._geo);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AddressAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class GeoAdapter extends TypeAdapter<Geo> {
  @override
  final int typeId = 2;

  @override
  Geo read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Geo()
      .._lat = fields[0] as String?
      .._lng = fields[1] as String?;
  }

  @override
  void write(BinaryWriter writer, Geo obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj._lat)
      ..writeByte(1)
      ..write(obj._lng);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is GeoAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class CompanyAdapter extends TypeAdapter<Company> {
  @override
  final int typeId = 3;

  @override
  Company read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Company()
      .._name = fields[0] as String?
      .._catchPhrase = fields[1] as String?
      .._bs = fields[2] as String?;
  }

  @override
  void write(BinaryWriter writer, Company obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj._name)
      ..writeByte(1)
      ..write(obj._catchPhrase)
      ..writeByte(2)
      ..write(obj._bs);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CompanyAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
