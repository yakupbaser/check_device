import '../../app/extension/navigate.dart';
import 'package:flutter/material.dart';

import '../../app/locator.dart';
import '../../app/service/device_manager.dart';

class ReportView extends StatelessWidget {
  const ReportView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Text(locator<DeviceManager>().device.value.toString()),
            ),
            const SizedBox(
              height: 50,
            ),
            ElevatedButton(
                onPressed: () {
                  context.popIt();
                },
                child: const Text('Back!'))
          ],
        ),
      )),
    );
  }
}
