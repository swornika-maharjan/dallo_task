import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutterproject/task/theme/task_theme.dart';
import 'package:flutterproject/task2/controller/barchart_controller.dart';
import 'package:get/get.dart';

class BarChartComponent extends StatelessWidget {
  const BarChartComponent({super.key});

  @override
  Widget build(BuildContext context) {
    final BarchartController controller = Get.put(BarchartController());

    return Padding(
      padding: const EdgeInsets.all(20),
      child: Obx(
        () => BarChart(
          BarChartData(
            maxY: 250,
            minY: 0,
            borderData: FlBorderData(
              show: true,
              border: Border(
                bottom: BorderSide(
                  color: AppColors.beginner.withOpacity(0.5),
                  width: 1,
                ),
                left: BorderSide(
                  color: AppColors.beginner.withOpacity(0.5),
                  width: 1,
                ),
              ),
            ),
            titlesData: FlTitlesData(
              bottomTitles: AxisTitles(
                sideTitles: SideTitles(
                  showTitles: true,
                  reservedSize: 40,
                  getTitlesWidget: (value, meta) {
                    final labels = [
                      'Sun',
                      'Mon',
                      'Tue',
                      'Wed',
                      'Thu',
                      'Fri',
                      'Sat',
                    ];
                    return Text(
                      labels[value.toInt()],
                      style: TextStyle(color: AppColors.beginner, fontSize: 12),
                    );
                  },
                ),
              ),
              rightTitles: AxisTitles(
                sideTitles: SideTitles(showTitles: false),
              ),
              topTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
              leftTitles: AxisTitles(
                sideTitles: SideTitles(
                  showTitles: true,
                  reservedSize: 40,
                  getTitlesWidget: (value, meta) {
                    return Text(
                      value.toInt().toString(),
                      style: const TextStyle(
                        color: AppColors.description,
                        fontSize: 12,
                      ),
                    );
                  },
                ),
              ),
            ),
            gridData: FlGridData(
              show: true,
              drawHorizontalLine: true,
              drawVerticalLine: false,
              getDrawingHorizontalLine: (value) {
                return FlLine(color: AppColors.barline, strokeWidth: 1);
              },
            ),

            barGroups:
                controller.barData
                    .map(
                      (data) => BarChartGroupData(
                        x: data.x,
                        barRods: [
                          BarChartRodData(
                            toY: data.y,
                            color: AppColors.primary,
                            width: 20,
                            borderRadius: BorderRadius.circular(4),
                          ),
                        ],
                      ),
                    )
                    .toList(),
          ),
        ),
      ),
    );
  }
}
