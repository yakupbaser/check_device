import 'package:battery_info/battery_info_plugin.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:local_auth/local_auth.dart';

import '../../datamodel/device.dart';

class DeviceManager {
  final device = ValueNotifier(Device());

  void checBattery(BatteryInfoPlugin batteryInfoPlugin) {
    batteryInfoPlugin.androidBatteryInfoStream.listen((event) {
      final charging =
          event?.chargingStatus.toString().split(".")[1] == "Charging";

      device.value = device.value.copyWith(
          batteryHealth: BatteryHealth(
            scale: event?.scale,
            health: event?.health,
          ),
          chargingsocket: charging);
    });
  }

  Future<void> checkBiometrics(LocalAuthentication localAuth) async {
    bool authenticated = false;
    try {
      authenticated = await localAuth.authenticate(
          localizedReason:
              'Scan your fingerprint (or face or whatever) to authenticate',
          useErrorDialogs: true,
          stickyAuth: true,
          biometricOnly: true);
    } on PlatformException catch (e) {
      // ignore: avoid_print
      print(e);
    }
    device.value = device.value.copyWith(fingerPrint: authenticated);
  }
}
