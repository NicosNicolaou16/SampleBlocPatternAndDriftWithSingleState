import 'dart:io';

import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as p;
import 'package:sampleblocpatternanddriftwithsinglestate/data/database/entities/missions_entity.dart';
import 'package:sampleblocpatternanddriftwithsinglestate/data/database/entities/position_entity.dart';
import 'package:sampleblocpatternanddriftwithsinglestate/data/database/entities/ships_entity.dart';

part 'database.g.dart';

@DriftDatabase(tables: [Ships, Position, Missions])
class AppDb extends _$AppDb {
  AppDb() : super(_openConnection());
  static final instance = AppDb();

  @override
  int get schemaVersion => 1;
}

LazyDatabase _openConnection() {
  return LazyDatabase(() async {
    final dbFolder = await getApplicationDocumentsDirectory();
    final file = File(p.join(dbFolder.path, 'db.sqlite'));

    return NativeDatabase.createInBackground(file);
  });
}
