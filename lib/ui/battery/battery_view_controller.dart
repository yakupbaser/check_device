import 'package:battery_info/battery_info_plugin.dart';

import '../../app/locator.dart';
import '../../app/service/device_manager.dart';

class BatteryViewController {
  final deviceManager = locator<DeviceManager>();

  void checkBattery() {
    deviceManager.checBattery(BatteryInfoPlugin());
  }
}
