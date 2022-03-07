import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'app/locator.dart';
import 'firebase_options.dart';
import 'ui/authgate/authgate_view.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  setupLocator();
  await Firebase.initializeApp(
      name: 'checkdevicedemo', options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Check Device',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const AuthGateView());
  }
}
