import 'package:get_it/get_it.dart';

final GetIt locator = GetIt.instance;

Future<void> setupLocator() async {
  _registerSingletons();
  _registerLazySingletons();
  _registerFactories();
  await _initializeServices();
}

Future<void> _initializeServices() async {}

void _registerSingletons() {}

void _registerLazySingletons() {}

void _registerFactories() {}

extension ServiceLocator on GetIt {}
