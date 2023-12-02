// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'database.dart';

// ignore_for_file: type=lint
class $ShipsTable extends Ships with TableInfo<$ShipsTable, ShipsEntity> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ShipsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
      'id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _shipNameMeta =
      const VerificationMeta('shipName');
  @override
  late final GeneratedColumn<String> shipName = GeneratedColumn<String>(
      'ship_name', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _shipTypeMeta =
      const VerificationMeta('shipType');
  @override
  late final GeneratedColumn<String> shipType = GeneratedColumn<String>(
      'ship_type', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _shipModelMeta =
      const VerificationMeta('shipModel');
  @override
  late final GeneratedColumn<String> shipModel = GeneratedColumn<String>(
      'ship_model', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _activeMeta = const VerificationMeta('active');
  @override
  late final GeneratedColumn<bool> active = GeneratedColumn<bool>(
      'active', aliasedName, true,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('CHECK ("active" IN (0, 1))'));
  static const VerificationMeta _imoMeta = const VerificationMeta('imo');
  @override
  late final GeneratedColumn<int> imo = GeneratedColumn<int>(
      'imo', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _absMeta = const VerificationMeta('abs');
  @override
  late final GeneratedColumn<int> abs = GeneratedColumn<int>(
      'abs', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _clazzMeta = const VerificationMeta('clazz');
  @override
  late final GeneratedColumn<int> clazz = GeneratedColumn<int>(
      'clazz', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _weightLbsMeta =
      const VerificationMeta('weightLbs');
  @override
  late final GeneratedColumn<int> weightLbs = GeneratedColumn<int>(
      'weight_lbs', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _yearBuildMeta =
      const VerificationMeta('yearBuild');
  @override
  late final GeneratedColumn<int> yearBuild = GeneratedColumn<int>(
      'year_build', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _homePortMeta =
      const VerificationMeta('homePort');
  @override
  late final GeneratedColumn<String> homePort = GeneratedColumn<String>(
      'home_port', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _statusMeta = const VerificationMeta('status');
  @override
  late final GeneratedColumn<String> status = GeneratedColumn<String>(
      'status', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _courseDegMeta =
      const VerificationMeta('courseDeg');
  @override
  late final GeneratedColumn<String> courseDeg = GeneratedColumn<String>(
      'course_deg', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _successfulLandingsMeta =
      const VerificationMeta('successfulLandings');
  @override
  late final GeneratedColumn<int> successfulLandings = GeneratedColumn<int>(
      'successful_landings', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _attemptedLandingsMeta =
      const VerificationMeta('attemptedLandings');
  @override
  late final GeneratedColumn<int> attemptedLandings = GeneratedColumn<int>(
      'attempted_landings', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _urlMeta = const VerificationMeta('url');
  @override
  late final GeneratedColumn<String> url = GeneratedColumn<String>(
      'url', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _imageMeta = const VerificationMeta('image');
  @override
  late final GeneratedColumn<String> image = GeneratedColumn<String>(
      'image', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        shipName,
        shipType,
        shipModel,
        active,
        imo,
        abs,
        clazz,
        weightLbs,
        yearBuild,
        homePort,
        status,
        courseDeg,
        successfulLandings,
        attemptedLandings,
        url,
        image
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'ships';
  @override
  VerificationContext validateIntegrity(Insertable<ShipsEntity> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('ship_name')) {
      context.handle(_shipNameMeta,
          shipName.isAcceptableOrUnknown(data['ship_name']!, _shipNameMeta));
    }
    if (data.containsKey('ship_type')) {
      context.handle(_shipTypeMeta,
          shipType.isAcceptableOrUnknown(data['ship_type']!, _shipTypeMeta));
    }
    if (data.containsKey('ship_model')) {
      context.handle(_shipModelMeta,
          shipModel.isAcceptableOrUnknown(data['ship_model']!, _shipModelMeta));
    }
    if (data.containsKey('active')) {
      context.handle(_activeMeta,
          active.isAcceptableOrUnknown(data['active']!, _activeMeta));
    }
    if (data.containsKey('imo')) {
      context.handle(
          _imoMeta, imo.isAcceptableOrUnknown(data['imo']!, _imoMeta));
    }
    if (data.containsKey('abs')) {
      context.handle(
          _absMeta, abs.isAcceptableOrUnknown(data['abs']!, _absMeta));
    }
    if (data.containsKey('clazz')) {
      context.handle(
          _clazzMeta, clazz.isAcceptableOrUnknown(data['clazz']!, _clazzMeta));
    }
    if (data.containsKey('weight_lbs')) {
      context.handle(_weightLbsMeta,
          weightLbs.isAcceptableOrUnknown(data['weight_lbs']!, _weightLbsMeta));
    }
    if (data.containsKey('year_build')) {
      context.handle(_yearBuildMeta,
          yearBuild.isAcceptableOrUnknown(data['year_build']!, _yearBuildMeta));
    }
    if (data.containsKey('home_port')) {
      context.handle(_homePortMeta,
          homePort.isAcceptableOrUnknown(data['home_port']!, _homePortMeta));
    }
    if (data.containsKey('status')) {
      context.handle(_statusMeta,
          status.isAcceptableOrUnknown(data['status']!, _statusMeta));
    }
    if (data.containsKey('course_deg')) {
      context.handle(_courseDegMeta,
          courseDeg.isAcceptableOrUnknown(data['course_deg']!, _courseDegMeta));
    }
    if (data.containsKey('successful_landings')) {
      context.handle(
          _successfulLandingsMeta,
          successfulLandings.isAcceptableOrUnknown(
              data['successful_landings']!, _successfulLandingsMeta));
    }
    if (data.containsKey('attempted_landings')) {
      context.handle(
          _attemptedLandingsMeta,
          attemptedLandings.isAcceptableOrUnknown(
              data['attempted_landings']!, _attemptedLandingsMeta));
    }
    if (data.containsKey('url')) {
      context.handle(
          _urlMeta, url.isAcceptableOrUnknown(data['url']!, _urlMeta));
    }
    if (data.containsKey('image')) {
      context.handle(
          _imageMeta, image.isAcceptableOrUnknown(data['image']!, _imageMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  ShipsEntity map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return ShipsEntity(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}id'])!,
      shipName: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}ship_name']),
      shipType: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}ship_type']),
      shipModel: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}ship_model']),
      active: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}active']),
      imo: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}imo']),
      abs: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}abs']),
      clazz: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}clazz']),
      weightLbs: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}weight_lbs']),
      yearBuild: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}year_build']),
      homePort: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}home_port']),
      status: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}status']),
      courseDeg: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}course_deg']),
      successfulLandings: attachedDatabase.typeMapping.read(
          DriftSqlType.int, data['${effectivePrefix}successful_landings']),
      attemptedLandings: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}attempted_landings']),
      url: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}url']),
      image: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}image']),
    );
  }

  @override
  $ShipsTable createAlias(String alias) {
    return $ShipsTable(attachedDatabase, alias);
  }
}

class ShipsCompanion extends UpdateCompanion<ShipsEntity> {
  final Value<String> id;
  final Value<String?> shipName;
  final Value<String?> shipType;
  final Value<String?> shipModel;
  final Value<bool?> active;
  final Value<int?> imo;
  final Value<int?> abs;
  final Value<int?> clazz;
  final Value<int?> weightLbs;
  final Value<int?> yearBuild;
  final Value<String?> homePort;
  final Value<String?> status;
  final Value<String?> courseDeg;
  final Value<int?> successfulLandings;
  final Value<int?> attemptedLandings;
  final Value<String?> url;
  final Value<String?> image;
  final Value<int> rowid;
  const ShipsCompanion({
    this.id = const Value.absent(),
    this.shipName = const Value.absent(),
    this.shipType = const Value.absent(),
    this.shipModel = const Value.absent(),
    this.active = const Value.absent(),
    this.imo = const Value.absent(),
    this.abs = const Value.absent(),
    this.clazz = const Value.absent(),
    this.weightLbs = const Value.absent(),
    this.yearBuild = const Value.absent(),
    this.homePort = const Value.absent(),
    this.status = const Value.absent(),
    this.courseDeg = const Value.absent(),
    this.successfulLandings = const Value.absent(),
    this.attemptedLandings = const Value.absent(),
    this.url = const Value.absent(),
    this.image = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  ShipsCompanion.insert({
    required String id,
    this.shipName = const Value.absent(),
    this.shipType = const Value.absent(),
    this.shipModel = const Value.absent(),
    this.active = const Value.absent(),
    this.imo = const Value.absent(),
    this.abs = const Value.absent(),
    this.clazz = const Value.absent(),
    this.weightLbs = const Value.absent(),
    this.yearBuild = const Value.absent(),
    this.homePort = const Value.absent(),
    this.status = const Value.absent(),
    this.courseDeg = const Value.absent(),
    this.successfulLandings = const Value.absent(),
    this.attemptedLandings = const Value.absent(),
    this.url = const Value.absent(),
    this.image = const Value.absent(),
    this.rowid = const Value.absent(),
  }) : id = Value(id);
  static Insertable<ShipsEntity> custom({
    Expression<String>? id,
    Expression<String>? shipName,
    Expression<String>? shipType,
    Expression<String>? shipModel,
    Expression<bool>? active,
    Expression<int>? imo,
    Expression<int>? abs,
    Expression<int>? clazz,
    Expression<int>? weightLbs,
    Expression<int>? yearBuild,
    Expression<String>? homePort,
    Expression<String>? status,
    Expression<String>? courseDeg,
    Expression<int>? successfulLandings,
    Expression<int>? attemptedLandings,
    Expression<String>? url,
    Expression<String>? image,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (shipName != null) 'ship_name': shipName,
      if (shipType != null) 'ship_type': shipType,
      if (shipModel != null) 'ship_model': shipModel,
      if (active != null) 'active': active,
      if (imo != null) 'imo': imo,
      if (abs != null) 'abs': abs,
      if (clazz != null) 'clazz': clazz,
      if (weightLbs != null) 'weight_lbs': weightLbs,
      if (yearBuild != null) 'year_build': yearBuild,
      if (homePort != null) 'home_port': homePort,
      if (status != null) 'status': status,
      if (courseDeg != null) 'course_deg': courseDeg,
      if (successfulLandings != null) 'successful_landings': successfulLandings,
      if (attemptedLandings != null) 'attempted_landings': attemptedLandings,
      if (url != null) 'url': url,
      if (image != null) 'image': image,
      if (rowid != null) 'rowid': rowid,
    });
  }

  ShipsCompanion copyWith(
      {Value<String>? id,
      Value<String?>? shipName,
      Value<String?>? shipType,
      Value<String?>? shipModel,
      Value<bool?>? active,
      Value<int?>? imo,
      Value<int?>? abs,
      Value<int?>? clazz,
      Value<int?>? weightLbs,
      Value<int?>? yearBuild,
      Value<String?>? homePort,
      Value<String?>? status,
      Value<String?>? courseDeg,
      Value<int?>? successfulLandings,
      Value<int?>? attemptedLandings,
      Value<String?>? url,
      Value<String?>? image,
      Value<int>? rowid}) {
    return ShipsCompanion(
      id: id ?? this.id,
      shipName: shipName ?? this.shipName,
      shipType: shipType ?? this.shipType,
      shipModel: shipModel ?? this.shipModel,
      active: active ?? this.active,
      imo: imo ?? this.imo,
      abs: abs ?? this.abs,
      clazz: clazz ?? this.clazz,
      weightLbs: weightLbs ?? this.weightLbs,
      yearBuild: yearBuild ?? this.yearBuild,
      homePort: homePort ?? this.homePort,
      status: status ?? this.status,
      courseDeg: courseDeg ?? this.courseDeg,
      successfulLandings: successfulLandings ?? this.successfulLandings,
      attemptedLandings: attemptedLandings ?? this.attemptedLandings,
      url: url ?? this.url,
      image: image ?? this.image,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (shipName.present) {
      map['ship_name'] = Variable<String>(shipName.value);
    }
    if (shipType.present) {
      map['ship_type'] = Variable<String>(shipType.value);
    }
    if (shipModel.present) {
      map['ship_model'] = Variable<String>(shipModel.value);
    }
    if (active.present) {
      map['active'] = Variable<bool>(active.value);
    }
    if (imo.present) {
      map['imo'] = Variable<int>(imo.value);
    }
    if (abs.present) {
      map['abs'] = Variable<int>(abs.value);
    }
    if (clazz.present) {
      map['clazz'] = Variable<int>(clazz.value);
    }
    if (weightLbs.present) {
      map['weight_lbs'] = Variable<int>(weightLbs.value);
    }
    if (yearBuild.present) {
      map['year_build'] = Variable<int>(yearBuild.value);
    }
    if (homePort.present) {
      map['home_port'] = Variable<String>(homePort.value);
    }
    if (status.present) {
      map['status'] = Variable<String>(status.value);
    }
    if (courseDeg.present) {
      map['course_deg'] = Variable<String>(courseDeg.value);
    }
    if (successfulLandings.present) {
      map['successful_landings'] = Variable<int>(successfulLandings.value);
    }
    if (attemptedLandings.present) {
      map['attempted_landings'] = Variable<int>(attemptedLandings.value);
    }
    if (url.present) {
      map['url'] = Variable<String>(url.value);
    }
    if (image.present) {
      map['image'] = Variable<String>(image.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ShipsCompanion(')
          ..write('id: $id, ')
          ..write('shipName: $shipName, ')
          ..write('shipType: $shipType, ')
          ..write('shipModel: $shipModel, ')
          ..write('active: $active, ')
          ..write('imo: $imo, ')
          ..write('abs: $abs, ')
          ..write('clazz: $clazz, ')
          ..write('weightLbs: $weightLbs, ')
          ..write('yearBuild: $yearBuild, ')
          ..write('homePort: $homePort, ')
          ..write('status: $status, ')
          ..write('courseDeg: $courseDeg, ')
          ..write('successfulLandings: $successfulLandings, ')
          ..write('attemptedLandings: $attemptedLandings, ')
          ..write('url: $url, ')
          ..write('image: $image, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $PositionTable extends Position
    with TableInfo<$PositionTable, PositionEntity> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $PositionTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _latitudeMeta =
      const VerificationMeta('latitude');
  @override
  late final GeneratedColumn<double> latitude = GeneratedColumn<double>(
      'latitude', aliasedName, true,
      type: DriftSqlType.double, requiredDuringInsert: false);
  static const VerificationMeta _longitudeMeta =
      const VerificationMeta('longitude');
  @override
  late final GeneratedColumn<double> longitude = GeneratedColumn<double>(
      'longitude', aliasedName, true,
      type: DriftSqlType.double, requiredDuringInsert: false);
  static const VerificationMeta _shipIdMeta = const VerificationMeta('shipId');
  @override
  late final GeneratedColumn<String> shipId = GeneratedColumn<String>(
      'ship_id', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('REFERENCES ships (id)'));
  @override
  List<GeneratedColumn> get $columns => [id, latitude, longitude, shipId];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'position';
  @override
  VerificationContext validateIntegrity(Insertable<PositionEntity> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('latitude')) {
      context.handle(_latitudeMeta,
          latitude.isAcceptableOrUnknown(data['latitude']!, _latitudeMeta));
    }
    if (data.containsKey('longitude')) {
      context.handle(_longitudeMeta,
          longitude.isAcceptableOrUnknown(data['longitude']!, _longitudeMeta));
    }
    if (data.containsKey('ship_id')) {
      context.handle(_shipIdMeta,
          shipId.isAcceptableOrUnknown(data['ship_id']!, _shipIdMeta));
    } else if (isInserting) {
      context.missing(_shipIdMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  PositionEntity map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return PositionEntity(
      latitude: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}latitude']),
      longitude: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}longitude']),
      shipId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}ship_id'])!,
    );
  }

  @override
  $PositionTable createAlias(String alias) {
    return $PositionTable(attachedDatabase, alias);
  }
}

class PositionCompanion extends UpdateCompanion<PositionEntity> {
  final Value<int> id;
  final Value<double?> latitude;
  final Value<double?> longitude;
  final Value<String> shipId;
  const PositionCompanion({
    this.id = const Value.absent(),
    this.latitude = const Value.absent(),
    this.longitude = const Value.absent(),
    this.shipId = const Value.absent(),
  });
  PositionCompanion.insert({
    this.id = const Value.absent(),
    this.latitude = const Value.absent(),
    this.longitude = const Value.absent(),
    required String shipId,
  }) : shipId = Value(shipId);
  static Insertable<PositionEntity> custom({
    Expression<int>? id,
    Expression<double>? latitude,
    Expression<double>? longitude,
    Expression<String>? shipId,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (latitude != null) 'latitude': latitude,
      if (longitude != null) 'longitude': longitude,
      if (shipId != null) 'ship_id': shipId,
    });
  }

  PositionCompanion copyWith(
      {Value<int>? id,
      Value<double?>? latitude,
      Value<double?>? longitude,
      Value<String>? shipId}) {
    return PositionCompanion(
      id: id ?? this.id,
      latitude: latitude ?? this.latitude,
      longitude: longitude ?? this.longitude,
      shipId: shipId ?? this.shipId,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (latitude.present) {
      map['latitude'] = Variable<double>(latitude.value);
    }
    if (longitude.present) {
      map['longitude'] = Variable<double>(longitude.value);
    }
    if (shipId.present) {
      map['ship_id'] = Variable<String>(shipId.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('PositionCompanion(')
          ..write('id: $id, ')
          ..write('latitude: $latitude, ')
          ..write('longitude: $longitude, ')
          ..write('shipId: $shipId')
          ..write(')'))
        .toString();
  }
}

class $MissionsTable extends Missions
    with TableInfo<$MissionsTable, MissionsEntity> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $MissionsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
      'name', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _flightMeta = const VerificationMeta('flight');
  @override
  late final GeneratedColumn<int> flight = GeneratedColumn<int>(
      'flight', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _shipIdMeta = const VerificationMeta('shipId');
  @override
  late final GeneratedColumn<String> shipId = GeneratedColumn<String>(
      'ship_id', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('REFERENCES ships (id)'));
  @override
  List<GeneratedColumn> get $columns => [id, name, flight, shipId];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'missions';
  @override
  VerificationContext validateIntegrity(Insertable<MissionsEntity> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    }
    if (data.containsKey('flight')) {
      context.handle(_flightMeta,
          flight.isAcceptableOrUnknown(data['flight']!, _flightMeta));
    }
    if (data.containsKey('ship_id')) {
      context.handle(_shipIdMeta,
          shipId.isAcceptableOrUnknown(data['ship_id']!, _shipIdMeta));
    } else if (isInserting) {
      context.missing(_shipIdMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  MissionsEntity map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return MissionsEntity(
      name: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}name']),
      flight: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}flight']),
      shipId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}ship_id'])!,
    );
  }

  @override
  $MissionsTable createAlias(String alias) {
    return $MissionsTable(attachedDatabase, alias);
  }
}

class MissionsCompanion extends UpdateCompanion<MissionsEntity> {
  final Value<int> id;
  final Value<String?> name;
  final Value<int?> flight;
  final Value<String> shipId;
  const MissionsCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.flight = const Value.absent(),
    this.shipId = const Value.absent(),
  });
  MissionsCompanion.insert({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.flight = const Value.absent(),
    required String shipId,
  }) : shipId = Value(shipId);
  static Insertable<MissionsEntity> custom({
    Expression<int>? id,
    Expression<String>? name,
    Expression<int>? flight,
    Expression<String>? shipId,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (flight != null) 'flight': flight,
      if (shipId != null) 'ship_id': shipId,
    });
  }

  MissionsCompanion copyWith(
      {Value<int>? id,
      Value<String?>? name,
      Value<int?>? flight,
      Value<String>? shipId}) {
    return MissionsCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
      flight: flight ?? this.flight,
      shipId: shipId ?? this.shipId,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (flight.present) {
      map['flight'] = Variable<int>(flight.value);
    }
    if (shipId.present) {
      map['ship_id'] = Variable<String>(shipId.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('MissionsCompanion(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('flight: $flight, ')
          ..write('shipId: $shipId')
          ..write(')'))
        .toString();
  }
}

abstract class _$AppDb extends GeneratedDatabase {
  _$AppDb(QueryExecutor e) : super(e);
  late final $ShipsTable ships = $ShipsTable(this);
  late final $PositionTable position = $PositionTable(this);
  late final $MissionsTable missions = $MissionsTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities =>
      [ships, position, missions];
}
