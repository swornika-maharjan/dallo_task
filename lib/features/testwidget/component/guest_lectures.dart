import 'package:flutter/material.dart';
import 'package:flutterproject/theme/task_theme.dart';
import '../controller/guest_lectures_controller.dart';
import 'package:get/get.dart';

class GuestLectures extends StatelessWidget {
  GuestLectures({super.key});
  final GuestLecturesController controller = Get.put(GuestLecturesController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Guest Lectures list')),
      body: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: controller.guestLectures.length,
        itemBuilder: (BuildContext context, int index) {
          final guestLectures = controller.guestLectures[index];
          final bool isUpcoming = guestLectures['name'] == 'Mr.Keshab Koirala';
          return Card(
            margin: EdgeInsets.all(5),
            child: Padding(
              padding: EdgeInsets.all(10),
              child: Column(
                children: [
                  Stack(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(5),
                        child: Image.asset(
                          guestLectures['imagepath'],
                          width: double.infinity,
                          fit: BoxFit.contain,
                          height: 300,
                        ),
                      ),
                      Align(
                        alignment: Alignment.topRight,
                        child: Column(
                          children: [
                            Container(
                              margin: EdgeInsets.all(8),
                              height: 30,
                              width: 100,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color:
                                    isUpcoming
                                        ? AppColors.upcoming
                                        : AppColors.live,
                              ),
                              child: Row(
                                children: [
                                  SizedBox(width: 6),
                                  !isUpcoming
                                      ? Image.asset(
                                        guestLectures['liveimage'],
                                        width: 18,
                                        height: 20,
                                      )
                                      : SizedBox(),
                                  SizedBox(width: 4),
                                  Text(
                                    isUpcoming ? 'UPCOMING' : 'LIVE',
                                    style: TextStyle(color: AppColors.dentbox),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '${guestLectures['name']}',
                        style: TextStyle(
                          color: AppColors.dental,
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        '${guestLectures['topic']}',
                        style: TextStyle(
                          color: AppColors.dental,
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      SizedBox(height: 10),
                      Row(
                        children: [
                          Icon(Icons.access_time, color: AppColors.lightbulb),
                          const SizedBox(width: 4),
                          Text('${guestLectures['started']}'),
                        ],
                      ),
                      SizedBox(height: 10),
                      Row(
                        children: [
                          Icon(
                            isUpcoming
                                ? Icons.calendar_month_outlined
                                : Icons.remove_red_eye_outlined,
                            color: AppColors.lightbulb,
                          ),
                          const SizedBox(width: 4),
                          Text('${guestLectures['attending']}'),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
