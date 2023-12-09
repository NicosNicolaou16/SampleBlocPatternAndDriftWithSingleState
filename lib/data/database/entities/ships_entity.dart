import 'package:drift/drift.dart';
import 'package:sampleblocpatternanddriftwithsinglestate/data/database/database.dart';
import 'package:sampleblocpatternanddriftwithsinglestate/data/database/entities/missions_entity.dart';
import 'package:sampleblocpatternanddriftwithsinglestate/data/database/entities/position_entity.dart';
import 'package:sampleblocpatternanddriftwithsinglestate/utils/get_it_dependencies_injection.dart';

@UseRowClass(ShipsEntity)
class Ships extends Table {
  TextColumn get id => text()();

  TextColumn get shipName => text().nullable()();

  TextColumn get shipType => text().nullable()();

  TextColumn get shipModel => text().nullable()();

  BoolColumn get active => boolean().nullable()();

  IntColumn get imo => integer().nullable()();

  IntColumn get abs => integer().nullable()();

  IntColumn get clazz => integer().nullable()();

  IntColumn get weightLbs => integer().nullable()();

  IntColumn get yearBuild => integer().nullable()();

  TextColumn get homePort => text().nullable()();

  TextColumn get status => text().nullable()();

  TextColumn get courseDeg => text().nullable()();

  IntColumn get successfulLandings => integer().nullable()();

  IntColumn get attemptedLandings => integer().nullable()();

  TextColumn get url => text().nullable()();

  TextColumn get image => text().nullable()();

  @override
  Set<Column>? get primaryKey => {id};
}

class ShipsEntity {
  String? id;
  String? shipName;
  String? shipType;
  String? shipModel;
  bool? active;
  int? imo;
  int? abs;
  int? clazz;
  int? weightLbs;
  int? yearBuild;
  String? homePort;
  String? status;
  String? courseDeg;
  int? successfulLandings;
  int? attemptedLandings;
  String? url;
  String? image;
  PositionEntity? positionEntity;
  List<MissionsEntity>? missionsEntityList;

  ShipsEntity({
    this.id,
    this.shipName,
    this.shipType,
    this.shipModel,
    this.active,
    this.imo,
    this.abs,
    this.clazz,
    this.weightLbs,
    this.yearBuild,
    this.homePort,
    this.status,
    this.courseDeg,
    this.successfulLandings,
    this.attemptedLandings,
    this.url,
    this.image,
    this.positionEntity,
    this.missionsEntityList,
  });

  ShipsEntity.fromJson(Map<String, dynamic> json) {
    id = json["ship_id"];
    shipName = json["ship_name"];
    shipType = json["ship_type"];
    shipModel = json["ship_model"];
    active = json["active"];
    imo = json["imo"];
    abs = json["abs"];
    clazz = json["class"];
    weightLbs = json["weight_lbs"];
    yearBuild = json["year_built"];
    homePort = json["home_port"];
    status = json["status"];
    courseDeg = json["course_deg"];
    successfulLandings = json["successful_landings"];
    attemptedLandings = json["attempted_landings"];
    url = json["url"];
    image = json["image"];
    positionEntity = PositionEntity.fromJson(json["position"]);
    missionsEntityList = MissionsEntity.fromJsonList(json["missions"]);
  }

  static List<ShipsEntity> fromJsonList(List json) {
    List<ShipsEntity> shipEntityList;
    if (json != null) {
      shipEntityList =
          List<ShipsEntity>.from(json.map((e) => ShipsEntity.fromJson(e)))
              .toList();
    } else {
      return [];
    }
    return shipEntityList;
  }

  ShipsCompanion toCompanion() {
    return ShipsCompanion(
      id: Value(id ?? ""),
      shipName: Value(shipName ?? ""),
      shipType: Value(shipType ?? ""),
      shipModel: Value(shipModel ?? ""),
      active: Value(active ?? false),
      imo: Value(imo ?? -1),
      abs: Value(abs ?? -1),
      clazz: Value(clazz ?? -1),
      weightLbs: Value(weightLbs ?? -1),
      homePort: Value(homePort ?? ""),
      status: Value(status ?? ""),
      courseDeg: Value(courseDeg ?? ""),
      successfulLandings: Value(successfulLandings ?? -1),
      attemptedLandings: Value(attemptedLandings ?? -1),
      url: Value(url ?? ""),
      image: Value(image ?? ""),
    );
  }

  static Future<List<ShipsEntity>> saveShips(
      List<ShipsEntity> shipsEntityList) async {
    AppDb appDb = getIt.get<AppDb>();
    await PositionEntity.deleteAllPosition(appDb);
    await MissionsEntity.deleteAllMissions(appDb);
    await Future.forEach(shipsEntityList, (ShipsEntity shipEntity) async {
      PositionEntity? positionEntity = shipEntity.positionEntity;
      if (positionEntity != null) {
        await PositionEntity.savePosition(
            positionEntity, shipEntity.id ?? "-1");
      }
      List<MissionsEntity>? missionsEntityList = shipEntity.missionsEntityList;
      if (missionsEntityList != null) {
        await MissionsEntity.saveMissions(
            missionsEntityList, shipEntity.id ?? "-1");
      }
      await appDb
          .into(appDb.ships)
          .insertOnConflictUpdate(shipEntity.toCompanion());
    });
    return shipsEntityList;
  }

  static Future<List<ShipsEntity>> getAllShips() async {
    AppDb appDb = getIt.get<AppDb>();
    List<ShipsEntity>? shipsEntityList = await appDb.select(appDb.ships).get();
    await Future.forEach(shipsEntityList, (shipsEntity) async {
      shipsEntity.positionEntity =
          await PositionEntity.getPositionById(shipsEntity.id ?? "-1");
      shipsEntity.missionsEntityList =
          await MissionsEntity.getAllMissionsByShipId(shipsEntity.id ?? "-1");
    });
    return shipsEntityList;
  }

  static Future<ShipsEntity?> getShipById(String shipId) async {
    AppDb appDb = getIt.get<AppDb>();
    ShipsEntity? shipsEntity = await (appDb.select(appDb.ships)
          ..where((tbl) => tbl.id.equals(shipId)))
        .getSingleOrNull();
    shipsEntity?.positionEntity = await PositionEntity.getPositionById(shipId);
    shipsEntity?.missionsEntityList =
        await MissionsEntity.getAllMissionsByShipId(shipId);
    return shipsEntity;
  }

  static Future<List<ShipsEntity>> getShipsByName(String shipName) async {
    AppDb appDb = getIt.get<AppDb>();
    List<ShipsEntity>? shipsEntityList = await (appDb.select(appDb.ships)
          ..where((tbl) => tbl.shipName.like("%$shipName%")))
        .get();
    await Future.forEach(shipsEntityList, (shipsEntity) async {
      shipsEntity.positionEntity =
          await PositionEntity.getPositionById(shipsEntity.id ?? "-1");
      shipsEntity.missionsEntityList =
          await MissionsEntity.getAllMissionsByShipId(shipsEntity.id ?? "-1");
    });
    return shipsEntityList;
  }
}
