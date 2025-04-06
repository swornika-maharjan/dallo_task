import 'package:get/state_manager.dart';

class GridController extends GetxController {
  final RxList _item =
      [
        {"title": "Quiz of the day", "image": "assets/images/quiz.png"},
        {"title": "Course", "image": "assets/images/course.png"},
        {"title": "E-Books Collection", "image": "assets/images/ebooks.png"},
        {
          "title": "Discussion Platform",
          "image": "assets/images/discussion.png",
        },
      ].obs;

  List get item => _item;
}
