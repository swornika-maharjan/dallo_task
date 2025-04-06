import 'package:get/get.dart';

class CourseCardController extends GetxController {
  final RxInt _enrolledStudents = 0.obs;
  

  //getter
  int get enrolledStudents => _enrolledStudents.value;
}
