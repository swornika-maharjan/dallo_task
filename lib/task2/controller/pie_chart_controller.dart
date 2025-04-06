import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/painting.dart';
import 'package:flutterproject/task/theme/task_theme.dart';
import 'package:get/get.dart';

class PieChartController extends GetxController {
  final RxList<PieChartSectionData> _piechartsectiondata =
      <PieChartSectionData>[
        PieChartSectionData(
          title: "56%",
          titleStyle: TextStyle(color: AppColors.dentbox),
          value: 3,
          color: AppColors.primary,
          radius: 80,
        ),
        PieChartSectionData(
          title: "26%",
          titleStyle: TextStyle(color: AppColors.dentbox),
          value: 2,
          color: AppColors.newgreen,
          radius: 80,
        ),
        PieChartSectionData(
          title: "17%",
          titleStyle: TextStyle(color: AppColors.dentbox),
          value: 1,
          color: AppColors.incorrect,
          radius: 80,
        ),
      ].obs;

  // final RxList _piechartsection =
  //     [
  //       {"title": "56%", "value": 3, "color": AppColors.primary, "radius": 80},
  //       {"title": "26%", "value": 2, "color": AppColors.newgreen, "radius": 80},
  //       {
  //         "title": "17%",
  //         "value": 1,
  //         "color": AppColors.incorrect,
  //         "radius": 80,
  //       },
  //     ].obs;

  List<PieChartSectionData> get piechartsectiondata => _piechartsectiondata;
  // List get piechartsection => _piechartsection;

  // List<PieChartSectionData> piechart() {
  //   return _piechartsection.map((section) {
  //     return PieChartSectionData(
  //       value: section["value"].toDouble(),
  //       title: section["title"],
  //       color: section["color"],
  //       radius: section["radius"].toDouble(),
  //       titleStyle: const TextStyle(
  //         fontSize: 16,
  //         fontWeight: FontWeight.bold,
  //         color: Colors.white,
  //       ),
  //     );
  //   }).toList();
  // }
}
