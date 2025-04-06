import 'package:get/get.dart';

class LiveexamContainerController extends GetxController {
  final RxList _liveexam =
      [
        {
          "id": 1,
          "topic": "Live Exam",
          "description":
              "Compete with other learners and analyze your performance based on the results ",
        },
        {
          "id": 2,
          "topic": "Mock Set/Mock Test",
          "question": "Random Questions Set",
          "time": "Time : 2 hrs",
        },
        {
          "id": 3,
          "topic": "Past Year Questions",
          "question": "Random Questions Set",
          "time": "Time : 2 hrs",
        },
        {
          "id": 4,
          "topic": "Subject/Chapterwise Exam",
          "question": "Random Questions Set",
          "time": "Time : 2 hrs",
        },
        {
          "id": 5,
          "topic": "Custom Module",
          "description":
              "Create your own set of test by choosing your own chapter topics and give test on the specific topics ",
        },
      ].obs;

  List get liveexam => _liveexam;
}
