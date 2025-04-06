import 'package:get/get.dart';
import 'package:intl/intl.dart';

extension DateTimeUtils on DateTime {
  DateTime get startOfWeek => subtract(Duration(days: weekday - 1));
}

class AnalyticsController extends GetxController {
  final RxInt _longeststreak = 0.obs;
  final RxInt _currentstreak = 0.obs;

  // Current week's start date (starting from today)
  final Rx<DateTime> _weekStart = DateTime.now().startOfWeek.obs;

  int get longeststreak => _longeststreak.value;
  int get currentstreak => _currentstreak.value;
  DateTime get weekStart => _weekStart.value;

  String get formattedWeek {
    final start = _weekStart.value;
    final end = start.add(Duration(days: 6));
    final formatter = DateFormat('d MMM');
    return '${formatter.format(start)} - ${formatter.format(end)}';
  }

  void setLongeststreak(int value) {
    _longeststreak.value = value;
  }

  void setCurrentstreak(int value) {
    _currentstreak.value = value;
  }

  void goToPreviousWeek() {
    _weekStart.value = _weekStart.value.subtract(Duration(days: 7));
  }

  void goToNextWeek() {
    _weekStart.value = _weekStart.value.add(Duration(days: 7));
  }
}
