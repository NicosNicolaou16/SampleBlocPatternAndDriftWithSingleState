import 'package:drift/drift.dart';
import 'package:sampleblocpatternanddriftwithsinglestate/data/database/database.dart';
import 'package:sampleblocpatternanddriftwithsinglestate/data/database/entities/ships_entity.dart';

class Position extends Table {
  IntColumn get id => integer().autoIncrement()();

  RealColumn get latitude => real().nullable()();

  RealColumn get longitude => real().nullable()();

  TextColumn get shipId => text().references(Ships, #id)();
}

class PositionEntity {
  double? latitude;
  double? longitude;
  String? shipId;

  PositionEntity({
    this.latitude,
    this.longitude,
    this.shipId,
  });

  PositionEntity.fromJson(Map<String, dynamic> json) {
    latitude = json["latitude"];
    longitude = json["longitude"];
  }

  PositionCompanion toCompanion(String shipId) {
    return PositionCompanion(
      latitude: Value(latitude ?? -1),
      longitude: Value(longitude ?? -1),
      shipId: Value(shipId),
    );
  }

  static Future<void> deleteAllPosition(AppDb appDb) async {
    await appDb.delete(appDb.position).go();
  }

  static Future<PositionEntity> savePosition(
      PositionEntity positionEntity, String shipId) async {
    AppDb appDb = AppDb.instance;
    await appDb
        .into(appDb.position)
        .insertOnConflictUpdate(positionEntity.toCompanion(shipId));
    return positionEntity;
  }

  static Future<PositionEntity?> getPositionById(String shipId) async {
    AppDb appDb = AppDb.instance;
    PositionEntity? positionEntity = await (appDb.select(appDb.position)
      ..where((tbl) => tbl.shipId.equals(shipId)))
        .getSingleOrNull();
    return positionEntity;
  }
}
