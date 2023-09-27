// ignore_for_file: use_key_in_widget_constructors, unused_import, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:uts/detailprodul.dart';
import 'package:uts/uts.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: UTS(),
    );
    }
    }