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

  final accountsoption =
      [
        {'title': 'My Orders', 'icon': 'assets/samiksha/orders.svg'},
        {'title': 'Saved address', 'icon': 'assets/samiksha/address.svg'},
        {'title': 'My Coupons', 'icon': 'assets/samiksha/coupons.svg'},
        {'title': 'Membership', 'icon': 'assets/samiksha/diamond.svg'},
      ].obs;

  void selectOption(String title) {
    selectedOption.value = title;
  }
}
