import 'package:flutter/material.dart';

abstract class Fonts {
  static const nameSurname = TextStyle(
    color: Colors.black,
    fontWeight: FontWeight.bold,
    fontSize: 18,
    letterSpacing: 0.8,
  );
  static const date = TextStyle(
    color: Color.fromARGB(255, 7, 35, 161),
    fontSize: 14,
  );
  static const message = TextStyle(
    color: Colors.black,
    fontSize: 16,
    fontWeight: FontWeight.w400,
    letterSpacing: 0.4,
  );
  static const briefNotification = TextStyle(
    color: Colors.white,
    fontSize: 16,
    fontWeight: FontWeight.w400,
    letterSpacing: 0.4,
  );
}
