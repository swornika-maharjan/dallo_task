import 'package:get/get.dart';

class AllCategoriesController extends GetxController {
  final RxList _categoriesList =
      [
        'Dental Science Specific (43)',
        'Exclusive Books Hub- Usmle Exclusive (0)',
        'Our Publications (80)',
        'Loksewa and Competitive Exams (8)',
        'Exclusive Books Hub (20)',
        'ENTRANCE EXAM PREP - UG (9)',
        'ASSORTED & EXCLUSIVE DISTRIBUTION Long name (2)',
      ].obs;

  List get categoriesList => _categoriesList;
}
