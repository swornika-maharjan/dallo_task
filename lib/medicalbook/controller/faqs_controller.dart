import 'package:get/get.dart';

class FaqsController extends GetxController {
  final RxList _faqCategories =
      [
        'Order Issues (34)',
        'Shipping and delivery (20)',
        'Returns (2)',
        'Category name (no of questions)',
      ].obs;

  List get faqCategories => _faqCategories.value;

  
}
