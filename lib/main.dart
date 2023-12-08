import 'package:flutter/material.dart';
import 'package:sampleblocpatternanddriftwithsinglestate/utils/get_it_dependencies_injection.dart';
import 'package:sampleblocpatternanddriftwithsinglestate/views/my_app.dart';

Future<void> main() async {
  GetItDependenciesInjection().getItSetup();
  runApp(const MyApp());
}
