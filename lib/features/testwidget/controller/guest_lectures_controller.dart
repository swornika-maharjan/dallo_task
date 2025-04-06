import 'package:get/get.dart';

class GuestLecturesController extends GetxController {
  final RxList _guestLectures =
      [
        {
          "id": 1,
          "imagepath": "assets/images/sandip.png",
          "liveimage": "assets/images/live.png",
          "name": "Mr.Sandip Chhetri",
          "topic": "Topic: Biostatistics and Research",
          "started": "Started 21 minutes ago",
          "attending": "213 students attending",
        },
        {
          "id": 2,
          "imagepath": "assets/images/chhetri.png",
          "liveimage": "assets/images/live.png",
          "name": "Mr.Keshab Koirala",
          "topic": "Topic: Advanced Database ",
          "started": "Starts in 20 hrs: 52 mins: 23 secs",
          "attending": "Sunday, July 31, 11:15 AM - 12 AM",
          "text": "UPCOMING",
        },
      ].obs;

  List get guestLectures => _guestLectures;
}
