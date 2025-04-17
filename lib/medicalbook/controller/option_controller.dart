import 'package:get/get.dart';

class OptionController extends GetxController {
  var selectedOption = ''.obs;

  // Storing data directly as list of maps
  final options =
      [
        {'title': 'My Wishlists', 'icon': 'assets/samiksha/heart.svg'},
        {'title': 'My Coupons', 'icon': 'assets/samiksha/coupons.svg'},
        {'title': 'Request book', 'icon': 'assets/samiksha/request.svg'},
      ].obs;

  void selectOption(String title) {
    selectedOption.value = title;
  }
}
