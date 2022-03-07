import 'package:flutter/material.dart';

extension CustomNavigate on BuildContext {
  void goTo(Widget page) {
    Navigator.push(
        this,
        MaterialPageRoute(
          builder: (context) => page,
        ));
  }

  void popIt() {
    Navigator.of(this).pop();
  }
}
