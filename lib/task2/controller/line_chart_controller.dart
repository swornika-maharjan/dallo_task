import 'package:fl_chart/fl_chart.dart';
import 'package:get/get.dart';

class LineChartController extends GetxController {
  final RxList<FlSpot> _lineChart =
      [
        FlSpot(0, 40),
        FlSpot(40, 10),
        FlSpot(60, 40),
        FlSpot(150, 20),
        FlSpot(225, 80),
        FlSpot(300, 50),
      ].obs;
  final RxList<FlSpot> _lineChart2 =
      [
        FlSpot(0, 40),
        FlSpot(20, 60),
        FlSpot(60, 80),
        FlSpot(150, 30),
        FlSpot(250, 100),
        FlSpot(300, 60),
      ].obs;
  final RxList<FlSpot> _lineChart3 =
      [
        FlSpot(0, 0),
        FlSpot(30, 50),
        FlSpot(60, 20),
        FlSpot(150, 60),
        FlSpot(250, 90),
        FlSpot(300, 80),
      ].obs;

  List<FlSpot> get lineChart => _lineChart;
  List<FlSpot> get lineChart2 => _lineChart2;
  List<FlSpot> get lineChart3 => _lineChart3;
}
