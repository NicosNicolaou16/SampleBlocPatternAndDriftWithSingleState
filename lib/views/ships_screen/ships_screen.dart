import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sampleblocpatternanddriftwithsinglestate/data/models/ships/ships_data_model.dart';
import 'package:sampleblocpatternanddriftwithsinglestate/utils/alerts_dialog/alerts_dialog.dart';
import 'package:sampleblocpatternanddriftwithsinglestate/utils/get_it_dependencies_injection.dart';
import 'package:sampleblocpatternanddriftwithsinglestate/views/ships_screen/ships_bloc/ships_bloc.dart';
import 'package:sampleblocpatternanddriftwithsinglestate/views/ships_screen/ships_bloc/ships_events.dart';
import 'package:sampleblocpatternanddriftwithsinglestate/views/ships_screen/ships_bloc/ships_states.dart';

import '../ship_details_screen/ship_details_screen.dart';

class ShipsScreen extends StatefulWidget {
  const ShipsScreen({Key? key}) : super(key: key);

  @override
  State<ShipsScreen> createState() => _ShipsScreenState();
}

class _ShipsScreenState extends State<ShipsScreen> {
  final ShipsBloc _shipsBloc = getIt.get<ShipsBloc>();

  @override
  void initState() {
    _init(context);
    super.initState();
  }

  _init(BuildContext context) {
    _shipsBloc.add(ShipsFetchData());
    _shipsBloc.add(ShipsFromLocalDatabase());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          elevation: 0,
          forceMaterialTransparency: true,
          title: const Text(
            "Ships List",
            style: TextStyle(
              fontSize: 21,
            ),
          ),
        ),
        body: BlocProvider(
          create: (_) => _shipsBloc,
          child: BlocConsumer<ShipsBloc, ShipsStates>(
            listener: (context, state) {
              if (state.shipStatus == ShipStatus.error) {
                AlertsDialog.showAlertDialog(state.error ?? "", context);
              }
            },
            builder: (context, state) {
              return _states(state, context);
            },
          ),
        ),
      ),
    );
  }

  Widget _states(ShipsStates state, BuildContext context) {
    if (state.shipStatus == ShipStatus.loaded) {
      return _mainView(state, context);
    } else if (state.shipStatus == ShipStatus.loading) {
      return Stack(
        children: [
          _mainView(state, context),
          const Center(
            child: CircularProgressIndicator(),
          ),
        ],
      );
    }
    return Stack(
      children: [
        _mainView(state, context),
      ],
    );
  }

  Widget _mainView(ShipsStates state, BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.only(
            top: 10,
            left: 3,
            right: 3,
          ),
          child: TextField(
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Searching...',
            ),
            onChanged: (value) {
              _shipsBloc.add(ShipsLocalSearch(value));
            },
          ),
        ),
        _listOfShips(state.shipsDataModelList),
      ],
    );
  }

  Widget _listOfShips(List<ShipsDataModel> shipsDataModelList) {
    return Expanded(
      child: ListView.builder(
          itemCount: shipsDataModelList.length,
          itemBuilder: (context, index) {
            ShipsDataModel shipsDataModel = shipsDataModelList[index];
            return _cardView(shipsDataModel);
          }),
    );
  }

  Widget _cardView(ShipsDataModel shipsDataModel) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => ShipDetailsScreen(
                    shipId: shipsDataModel.shipsEntity.id ?? "-1",
                  )),
        );
      },
      child: Container(
        margin: const EdgeInsets.all(3),
        height: 150,
        width: double.infinity,
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          color: Colors.grey,
          elevation: 9,
          child: Row(
            children: [
              ClipRRect(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(15),
                  bottomLeft: Radius.circular(15),
                ),
                child: CachedNetworkImage(
                  imageUrl: shipsDataModel.shipsEntity.image ?? "",
                  imageBuilder: (context, imageProvider) => Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: imageProvider,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  placeholder: (context, url) =>
                      const CircularProgressIndicator(),
                  errorWidget: (context, url, error) => const Icon(Icons.image),
                  height: 150,
                  width: 150,
                ),
              ),
              const SizedBox(
                width: 15,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 200,
                    child: Text(
                      shipsDataModel.shipsEntity.shipName ?? "",
                      maxLines: 2,
                      style: const TextStyle(
                        color: Colors.black,
                        fontSize: 17,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 200,
                    child: Text(
                      shipsDataModel.shipsEntity.shipType ?? "",
                      maxLines: 2,
                      style: const TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
