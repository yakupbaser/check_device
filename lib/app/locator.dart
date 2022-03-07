import 'package:get_it/get_it.dart';

import 'service/device_manager.dart';

var locator = GetIt.I;

void setupLocator() {
  locator.registerLazySingleton(() => DeviceManager());
}
