import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutterfire_ui/auth.dart';

import '../home/home_view.dart';

class AuthGateView extends StatelessWidget {
  const AuthGateView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          if (!snapshot.hasData) {
            return const SignInScreen(
              providerConfigs: [EmailProviderConfiguration()],
            );
          }

          return HomeView(
            user: snapshot.data!,
          );
        });
  }
}
