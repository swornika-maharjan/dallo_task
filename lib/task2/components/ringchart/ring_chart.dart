import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutterproject/theme/task_theme.dart';
import 'package:flutterproject/task2/components/piechart/piechart_data.dart';
import 'package:flutterproject/task2/controller/ring_chart_controller.dart';
import 'package:get/get.dart';

class RingChart extends StatelessWidget {
  RingChart({super.key, required this.data, this.centerText = ""});
  final PiechartData data;
  final String centerText;
  final RingChartController controller = Get.put(RingChartController());

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        PieChart(
          PieChartData(
            centerSpaceRadius: 65,
            sections: controller.pieChartSectionData,
          ),
        ),
        Text(
          centerText,
          style: const TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.bold,
            color: AppColors.beginner,
          ),
        ),
      ],
    );
  }
}
