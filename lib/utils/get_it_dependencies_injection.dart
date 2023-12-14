import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:sampleblocpatternanddriftwithsinglestate/data/database/database.dart';
import 'package:sampleblocpatternanddriftwithsinglestate/data/repositories/ships_repository.dart';
import 'package:sampleblocpatternanddriftwithsinglestate/domain/remote/ships_service.dart';
import 'package:sampleblocpatternanddriftwithsinglestate/views/ship_details_screen/ship_details_bloc/ship_details_bloc.dart';
import 'package:sampleblocpatternanddriftwithsinglestate/views/ships_screen/ships_bloc/ships_bloc.dart';

final getIt = GetIt.instance;

class GetItDependenciesInjection {
  void getItSetup() {
    getIt.registerLazySingleton<Dio>(() => Dio());
    getIt.registerLazySingleton<AppDb>(() => AppDb());
    getIt.registerFactory<ShipsBloc>(() => ShipsBloc());
    getIt.registerFactory<ShipDetailsBloc>(() => ShipDetailsBloc());
    getIt.registerFactory<ShipsService>(() => ShipsService());
    getIt.registerFactory<ShipsRepository>(() => ShipsRepository());
  }
}
