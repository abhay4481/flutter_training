

import 'package:flutter_training/screen1.dart';
import 'package:flutter_training/screen2.dart';
import 'package:flutter_training/screen3.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: screen1(),
      routes: {
        's0':(context)=>screen2(),


      },
    ),
  );
}