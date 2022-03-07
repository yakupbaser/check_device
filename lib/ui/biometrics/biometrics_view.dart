import '../../app/extension/navigate.dart';
import 'biometrics_view_controller.dart';
import 'package:flutter/material.dart';

import '../../datamodel/device.dart';

class BioMetricsView extends StatefulWidget {
  const BioMetricsView({Key? key}) : super(key: key);

  @override
  State<BioMetricsView> createState() => _BioMetricsViewState();
}

class _BioMetricsViewState extends State<BioMetricsView> {
  late BiometricsViewController _controller;

  @override
  void initState() {
    _controller = BiometricsViewController();
    _controller.checkBiometrics();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Text(
                  'Verify with finger print recognition. After waiting a few seconds, press the complete test button.'),
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
                        'Biometrics Working = ${_controller.deviceManager.device.value.fingerPrint ?? false}'),
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
