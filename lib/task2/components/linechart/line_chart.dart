import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutterproject/theme/task_theme.dart';
import 'package:flutterproject/task2/controller/line_chart_controller.dart';
import 'package:get/get.dart';

class LineChartScreen extends StatelessWidget {
  LineChartScreen(LineChartData lineChartData, {super.key});
  final LineChartController controller = Get.put(LineChartController());

  @override
  Widget build(BuildContext context) {
    AspectRatio(aspectRatio: 1);
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: LineChart(
        LineChartData(
          lineBarsData: [
            LineChartBarData(
              spots: controller.lineChart,
              isCurved: true,

              dotData: FlDotData(show: true),
              color: AppColors.primary,
              barWidth: 2,
            ),
          ],
          titlesData: FlTitlesData(
            bottomTitles: AxisTitles(
              sideTitles: SideTitles(
                showTitles: true,
                reservedSize: 35,
                getTitlesWidget: (value, meta) {
                  return Text(
                    value.toInt().toString(),
                    style: TextStyle(color: AppColors.beginner),
                  );
                },
              ),
            ),
            leftTitles: AxisTitles(
              sideTitles: SideTitles(
                showTitles: true,
                reservedSize: 35,
                getTitlesWidget: (value, meta) {
                  return Text(
                    value.toInt().toString(),
                    style: TextStyle(color: AppColors.beginner),
                  );
                },
              ),
            ),
            topTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
            rightTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
          ),
          borderData: FlBorderData(
            show: true,
            border: Border(
              left: BorderSide(color: AppColors.description, width: 1),
              bottom: BorderSide(color: AppColors.description, width: 1),
              right: BorderSide.none,
              top: BorderSide.none,
            ),
          ),
          gridData: FlGridData(
            getDrawingHorizontalLine: (value) {
              return FlLine(color: AppColors.ringcolor);
            },
            getDrawingVerticalLine: (value) {
              return FlLine(
                color: AppColors.ringcolor,
                // strokeWidth: 0.5,
                // dashArray: [5, 5],
              );
            },
          ),
          minX: 0,
          maxX: 350,
          minY: 0,
          maxY: 100,
        ),
      ),
    );
  }
}
