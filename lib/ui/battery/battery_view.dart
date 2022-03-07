import 'package:flutter/material.dart';

import '../../app/extension/navigate.dart';
import '../../datamodel/device.dart';
import 'battery_view_controller.dart';

class BatteryView extends StatefulWidget {
  const BatteryView({Key? key}) : super(key: key);

  @override
  State<BatteryView> createState() => _BatteryViewState();
}

class _BatteryViewState extends State<BatteryView> {
  late BatteryViewController _controller;

  @override
  void initState() {
    _controller = BatteryViewController();
    _controller.checkBattery();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Text(
                  'Connect your device to charge. Then wait a few seconds and press the test complete button.'),
            ),
            const SizedBox(
              height: 50,
            ),
            ValueListenableBuilder(
              valueListenable: _controller.deviceManager.device,
              builder: (BuildContext context, Device value, Widget? child) {
                return Column(
                  children: [
                    Text(
                        'Battery Healt = ${_controller.deviceManager.device.value.batteryHealth?.health ?? ""}'),
                    Text(
                        'Battery Scale = ${_controller.deviceManager.device.value.batteryHealth?.scale ?? 0}'),
                    Text(
                        'Charging Status = ${_controller.deviceManager.device.value.chargingsocket ?? ""}'),
                  ],
                );
              },
            ),
            const SizedBox(
              height: 50,
            ),
            ElevatedButton(
                onPressed: () {
                  context.popIt();
                },
                child: const Text('Complete Battery Test!'))
          ],
        ),
      )),
    );
  }
}
