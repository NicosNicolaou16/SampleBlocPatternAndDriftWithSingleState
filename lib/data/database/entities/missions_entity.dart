import 'package:drift/drift.dart';
import 'package:sampleblocpatternanddriftwithsinglestate/data/database/database.dart';
import 'package:sampleblocpatternanddriftwithsinglestate/data/database/entities/ships_entity.dart';

@UseRowClass(MissionsEntity)
class Missions extends Table {
  IntColumn get id => integer().autoIncrement()();

  TextColumn get name => text().nullable()();

  IntColumn get flight => integer().nullable()();

  TextColumn get shipId => text().references(Ships, #id)();
}

class MissionsEntity {
  String? name;
  int? flight;
  String? shipId;

  MissionsEntity({
    this.name,
    this.flight,
    this.shipId,
  });

  MissionsEntity.fromJson(Map<String, dynamic> json) {
    name = json["name"];
    flight = json["flight"];
  }

  static List<MissionsEntity> fromJsonList(List json) {
    List<MissionsEntity> missionsEntityList;
    if (json != null) {
      missionsEntityList =
          List<MissionsEntity>.from(json.map((e) => MissionsEntity.fromJson(e)))
              .toList();
    } else {
      return [];
    }
    return missionsEntityList;
  }

  MissionsCompanion toCompanion(String shipId) {
    return MissionsCompanion(
      name: Value(name ?? ""),
      flight: Value(flight ?? -1),
      shipId: Value(shipId),
    );
  }

  static Future<void> deleteAllMissions(AppDb appDb) async {
    await appDb.delete(appDb.missions).go();
  }

  static Future<List<MissionsEntity>> saveMissions(
      List<MissionsEntity> missionsEntityList, String shipId) async {
    AppDb appDb = AppDb.instance;
    await Future.forEach(missionsEntityList,
        (MissionsEntity missionsEntity) async {
      await appDb
          .into(appDb.missions)
          .insertOnConflictUpdate(missionsEntity.toCompanion(shipId));
    });
    return missionsEntityList;
  }

  static Future<List<MissionsEntity>> getAllMissionsByShipId(
      String shipId) async {
    AppDb appDb = AppDb.instance;
    List<MissionsEntity>? missionsEntityList = await (appDb.select(appDb.missions)
      ..where((tbl) => tbl.shipId.equals(shipId)))
        .get();
    return missionsEntityList;
  }
}
