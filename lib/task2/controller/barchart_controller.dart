import 'package:flutterproject/task2/components/barchart/individual_bar.dart';
import 'package:get/get.dart';

class BarchartController extends GetxController {
  final RxList _barData =
      <IndividualBar>[
        IndividualBar(x: 0, y: 20),
        IndividualBar(x: 1, y: 50),
        IndividualBar(x: 2, y: 70),
        IndividualBar(x: 3, y: 0),
        IndividualBar(x: 4, y: 90),
        IndividualBar(x: 5, y: 0),
        IndividualBar(x: 6, y: 110),
      ].obs;

  List get barData => _barData;
}
