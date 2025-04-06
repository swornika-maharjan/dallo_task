import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutterproject/task2/components/piechart/piechart_data.dart';
import 'package:flutterproject/task2/controller/pie_chart_controller.dart';
import 'package:get/get.dart';

class PiechartComponent extends StatelessWidget {
  final PiechartData data;

  PiechartComponent({super.key, required this.data});
  final PieChartController controller = Get.put(PieChartController());

  @override
  Widget build(BuildContext context) {
    return PieChart(
      PieChartData(
        borderData: FlBorderData(show: false),
        centerSpaceRadius: 2,
        sectionsSpace: 2,
        sections: controller.piechartsectiondata,
      ),
    );
    // return Obx(
    //   () => PieChart(
    //     PieChartData(
    //       borderData: FlBorderData(show: false),
    //       centerSpaceRadius: 2,
    //       sectionsSpace: 2,
    //       sections: controller.piechart(),
    //     ),
    //   ),
    // );
  }
}
