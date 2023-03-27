import 'package:flutter/material.dart';
import 'package:flutter_responsive_ui/FittedBoxExample.dart';
import 'package:flutter_responsive_ui/FlexibleExample.dart';
import 'package:flutter_responsive_ui/LoginExample.dart';
import 'package:flutter_responsive_ui/MediaQueryExample.dart';
import 'package:flutter_responsive_ui/OrientationExample.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: OrientationExample(),
    ),
  );
}
