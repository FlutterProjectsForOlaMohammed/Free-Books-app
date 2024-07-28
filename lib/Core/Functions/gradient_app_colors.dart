import 'package:flutter/material.dart';

LinearGradient griadientAppColors() {
  return const LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [
      Colors.white,
      Color.fromRGBO(238, 238, 238, 1),
      Color.fromRGBO(255, 253, 231, 1),
      Color.fromRGBO(232, 245, 233, 1),
      Color.fromRGBO(238, 238, 238, 1),
    ],
  );
}
