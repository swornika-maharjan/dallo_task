import 'package:get/get.dart';

class RelativityController extends GetxController {
  final RxList _relativityList =
      [
        {
          "topic": "Introduction to Relativity",
          "subtopic": "(Chapter 6)",
          "teacher": "Rashmika Shrestha",
          "time": "Started 20 minutes ago",
          "attending": "213 students attending",
          "imagepath": "assets/images/relativityintro.png",
          "liveimage": "assets/images/live.png",
          "live": "LIVE",
        },
        {
          "topic": "Vector and Equillibrium",
          "subtopic": "",
          "teacher": "Gyanendra Shah",
          "time": "Sunday, July 15, 11:00 AM-12:00 PM",
          "attending": "Starts in 20 hrs:20mins:10 secs",
          "imagepath": "assets/images/equillibrium.png",
          "liveimage": "assets/images/live.png",
          "live": "UPCOMING",
        },
      ].obs;

  // Getter to access the list
  List get relativityList => _relativityList;
}
