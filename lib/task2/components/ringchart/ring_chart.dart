import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutterproject/task/theme/task_theme.dart';
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
          // PieChartData(
          //   centerSpaceRadius: 65,
          //   sections: [
          //     PieChartSectionData(
          //       color: AppColors.primary,
          //       value: 2,
          //       showTitle: false,
          //       radius: 20,
          //       titleStyle: TextStyle(
          //         fontSize: 14,
          //         fontWeight: FontWeight.bold,
          //         color: Colors.white,
          //       ),
          //     ),
          //     PieChartSectionData(
          //       color: AppColors.ringcolor,
          //       value: 1,
          //       radius: 20,
          //       showTitle: false,
          //       titleStyle: TextStyle(
          //         fontSize: 14,
          //         fontWeight: FontWeight.bold,
          //         color: Colors.white,
          //       ),
          //     ),
          //   ],
          // ),
        ),
        Flexible(
          child: Text(
            centerText,
            style: const TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.bold,
              color: AppColors.beginner,
            ),
          ),
        ),
      ],
    );
  }
}
