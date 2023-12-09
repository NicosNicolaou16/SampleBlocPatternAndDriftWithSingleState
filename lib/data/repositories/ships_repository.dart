
import 'package:sampleblocpatternanddriftwithsinglestate/data/database/entities/ships_entity.dart';
import 'package:sampleblocpatternanddriftwithsinglestate/domain/remote/ships_service.dart';
import 'package:sampleblocpatternanddriftwithsinglestate/utils/get_it_dependencies_injection.dart';

class ShipsRepository {
  final ShipsService _shipsService = getIt.get<ShipsService>();

  Future<ShipsServiceResponse> requestAndSaveDataLocal() async {
    ShipsServiceResponse? shipsServiceResponse = await _shipsService.getShips();
    if (shipsServiceResponse.shipsEntityList != null) {
      await saveShipOnLocalDatabase(shipsServiceResponse.shipsEntityList);
    }
    return shipsServiceResponse;
  }

  Future<void> saveShipOnLocalDatabase(
      List<ShipsEntity>? shipsEntityList) async {
    if (shipsEntityList != null) {
      await ShipsEntity.saveShips(shipsEntityList);
    }
  }
}
