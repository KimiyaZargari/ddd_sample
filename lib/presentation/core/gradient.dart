import 'package:flutter/material.dart';

class AppGradient {
  AppGradient._();

  static const pinkGradient = LinearGradient(
    colors: [Color(0xffffffff), Color.fromARGB(255, 252, 187, 182)],
    stops: [.01, .95],
    begin: Alignment.bottomCenter,
    end: Alignment.topCenter,
  );
}
