import 'package:get/get.dart';

class OurPublicationController extends GetxController {
  final RxString _publication = ''.obs;

  String get publication => _publication.value;

  void getselectedPublication(String index) {
    _publication.value = index;
  }
}
