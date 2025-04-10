import 'package:get/get.dart';

class OptionController extends GetxController {
  var selectedOption = ''.obs;

  // Storing data directly as list of maps
  final options =
      [
        {'title': 'My Wishlists', 'icon': 'assets/images/heart1.png'},
        {'title': 'My Coupons', 'icon': 'assets/images/coupon.png'},
        {'title': 'Request book', 'icon': 'assets/images/request.png'},
      ].obs;

  void selectOption(String title) {
    selectedOption.value = title;
  }
}
