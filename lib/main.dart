import 'package:covid19_tracker/constants.dart';
import 'package:flutter/material.dart';
import 'package:covid19_tracker/home.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      fontFamily: 'Circular',
      primaryColor: primaryBlack
    ),
    home: Home(),
  ));
}