import 'package:bloc_test/app.dart';
import 'package:bloc_test/service_locator/service_locator.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await initDependency();
  runApp(
    App(),
  );
}
