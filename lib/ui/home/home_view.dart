import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutterfire_ui/auth.dart';

import '../../app/extension/navigate.dart';
import '../battery/battery_view.dart';
import '../biometrics/biometrics_view.dart';
import '../report/report_view.dart';

class HomeView extends StatefulWidget {
  final User user;
  const HomeView({Key? key, required this.user}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Check Device App'),
      ),
      body: SafeArea(
          child: Center(
        child: SingleChildScrollView(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  context.goTo(const BatteryView());
                },
                child: const Text('Check Battery')),
            ElevatedButton(
                onPressed: () {
                  context.goTo(const BioMetricsView());
                },
                child: const Text('Check Biometrics')),
            ElevatedButton(
                onPressed: () {
                  context.goTo(const ReportView());
                },
                child: const Text('Get Report')),
            const SizedBox(
              height: 50,
            ),
            const SignOutButton()
          ],
        )),
      )),
    );
  }
}
