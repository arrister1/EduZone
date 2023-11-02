import 'package:flutter/material.dart';

final ButtonStyle buttonWelcome = ElevatedButton.styleFrom(
  minimumSize: Size(275, 50),
  backgroundColor: Color.fromARGB(255, 255, 99, 117),
  elevation: 0,
  shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(50))),
);

final ButtonStyle buttonDetail = ElevatedButton.styleFrom(
  minimumSize: Size(90, 50),
  backgroundColor: Color.fromARGB(255, 255, 99, 117),
  elevation: 0,
  shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(50))),
);
