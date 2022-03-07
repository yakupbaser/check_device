import 'package:local_auth/local_auth.dart';

import '../../app/locator.dart';
import '../../app/service/device_manager.dart';

class BiometricsViewController {
  final deviceManager = locator<DeviceManager>();

  void checkBiometrics() {
    deviceManager.checkBiometrics(LocalAuthentication());
  }
}
