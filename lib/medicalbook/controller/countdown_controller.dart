import 'dart:async';

import 'package:get/get.dart';

class CountdownController extends GetxController {
  // Initial countdown duration: 5 days, 20 hours, 20 minutes, 20 seconds
  final Rx<Duration> remainingTime =
      const Duration(days: 5, hours: 20, minutes: 20, seconds: 20).obs;

  late Timer _timer;

  @override
  void onInit() {
    super.onInit();
    _startTimer();
  }

  void _startTimer() {
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (remainingTime.value.inSeconds <= 0) {
        timer.cancel();
      } else {
        remainingTime.value -= const Duration(seconds: 1);
      }
    });
  }

  String get formattedTime {
    final d = remainingTime.value;
    final days = d.inDays.toString().padLeft(2, '0');
    final hours = (d.inHours % 24).toString().padLeft(2, '0');
    final minutes = (d.inMinutes % 60).toString().padLeft(2, '0');
    final seconds = (d.inSeconds % 60).toString().padLeft(2, '0');
    return '${days}d:${hours}h:${minutes}m:${seconds}s';
  }

  @override
  void onClose() {
    _timer.cancel();
    super.onClose();
  }
}
