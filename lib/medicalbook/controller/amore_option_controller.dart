import 'package:get/get.dart';

class AmoreOptionController extends GetxController {
  final RxList _options =
      ['Notifications', 'My Wishlists', 'Request book', 'Reset password'].obs;

  final RxList _icons =
      [
        'assets/samiksha/notification.svg',
        'assets/samiksha/heart.svg',
        'assets/samiksha/request.svg',
        'assets/samiksha/reset.svg',
      ].obs;

 

  List get options => _options;
  List get icons => _icons;

}
