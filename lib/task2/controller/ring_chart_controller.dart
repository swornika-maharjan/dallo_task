import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutterproject/theme/task_theme.dart';
import 'package:get/get.dart';

class RingChartController extends GetxController {
  final RxList<PieChartSectionData> _piechartsectiondata =
      <PieChartSectionData>[
        PieChartSectionData(
          color: AppColors.primary,
          value: 2,
          showTitle: false,
          radius: 20,
          titleStyle: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        PieChartSectionData(
          color: AppColors.ringcolor,
          value: 3,
          radius: 20,
          showTitle: false,
          titleStyle: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ].obs;

  final RxInt _ringText = 0.obs;

  List<PieChartSectionData> get pieChartSectionData => _piechartsectiondata;
  int get ringText => _ringText.value;
}
