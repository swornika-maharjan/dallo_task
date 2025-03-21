import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RandomController extends GetxController {
  var width = 100.0.obs;
  var height = 100.0.obs;
  var color = Color(0xFF0000FF).obs;
  var borderRadius = BorderRadius.circular(10).obs;

  void generateRandomValues() {
    final random = Random();
    width.value = random.nextInt(500).toDouble();
    height.value = random.nextInt(500).toDouble();
    color.value = Color.fromRGBO(
      random.nextInt(256),
      random.nextInt(256),
      random.nextInt(256),
      1,
    );
    borderRadius.value = BorderRadius.circular(random.nextInt(100).toDouble());
  }
}
