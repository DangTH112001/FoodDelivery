import 'package:flutter/material.dart';

class ShadowEffect {
  static List<BoxShadow> apply() {
    return const <BoxShadow>[
      BoxShadow(
        color: Color(0xFFe8e8e8),
        blurRadius: 5.0,
        offset: Offset(0, 5),
      ),
      BoxShadow(
        color: Colors.white,
        offset: Offset(-5, 0),
      ),
      BoxShadow(
        color: Colors.white,
        offset: Offset(5, 0),
      ),
    ];
  }
}
