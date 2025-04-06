import 'package:get/get.dart';

class ActionButtonController extends GetxController {
  final RxInt _number = 0.obs;

  int get number => _number.value;

  void increaseNumber() {
    _number.value = _number.value + 1;
  }

  void decreaseNumber() {
    _number.value = _number.value - 1;
  }
}
