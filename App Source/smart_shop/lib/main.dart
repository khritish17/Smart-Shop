import 'package:flutter/material.dart';
import 'package:smart_shop/screens/home/home.dart';
import 'package:smart_shop/screens/scan/scanner.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    // home: Home(),
    home: Scanner(),
  ));
}

