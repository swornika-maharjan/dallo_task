import 'package:flutter/material.dart';
import 'package:flutterproject/task/theme/task_theme.dart';
import '../controller/relativity_controller.dart';
import 'package:get/get.dart';

class RelativityComponent extends StatelessWidget {
  RelativityComponent({super.key});
  final RelativityController controller = Get.put(RelativityController());

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: controller.relativityList.length,
      itemBuilder: (context, index) {
        final item = controller.relativityList[index];
        final timeicon =
            item['teacher'] == "Rashmika Shrestha"
                ? Icons.access_time
                : Icons.calendar_month_outlined;
        final redeyeicon =
            item['teacher'] == "Rashmika Shrestha"
                ? Icons.remove_red_eye_outlined
                : Icons.access_time;
        final teacher = item['teacher'] == "Rashmika Shrestha";
        final livebutton = item['teacher'] == 'Rashmika Shrestha';

        return Padding(
          padding: const EdgeInsets.all(10),
          child: Container(
            margin: const EdgeInsets.only(top: 10),
            height: 200,
            width: 400,
            decoration: BoxDecoration(
              color: Colors.blue.shade50,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 10),

                        Text(
                          '${item['topic']}',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            color: AppColors.dental,
                          ),
                        ),

                        teacher
                            ? Text(
                              '${item['subtopic']}',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                                color: AppColors.dental,
                              ),
                            )
                            : SizedBox(),
                        SizedBox(height: 10),
                        Text(
                          'Teacher: ${item['teacher']}',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 12,
                            color: AppColors.dental,
                          ),
                        ),
                        SizedBox(height: 10),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Icon(timeicon, color: AppColors.lightbulb),
                            SizedBox(width: 6),
                            Flexible(
                              child: Text(
                                '${item['time']}',
                                style: TextStyle(
                                  fontSize: 12,
                                  color: AppColors.description,
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 10),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Icon(redeyeicon, color: AppColors.lightbulb),
                            SizedBox(width: 6),
                            Flexible(
                              child: Text(
                                '${item['attending']}',
                                style: TextStyle(
                                  fontSize: 12,
                                  color: AppColors.description,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Container(
                      margin: EdgeInsets.symmetric(
                        horizontal: 10,
                        vertical: 10,
                      ),
                      height: 30,
                      width: livebutton ? 70 : 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: livebutton ? AppColors.live : AppColors.upcoming,
                      ),
                      child: Row(
                        children: [
                          SizedBox(width: 9),
                          livebutton
                              ? Image.asset(
                                'assets/images/live.png',
                                width: 18,
                                height: 20,
                              )
                              : SizedBox(),
                          SizedBox(width: 6),
                          Text(
                            '${item['live']}',
                            style: TextStyle(
                              color: AppColors.dentbox,
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Transform(
                        transform:
                            Matrix4.identity()
                              ..translate(
                                0.6,
                                6.0,
                              ) // Moves the image 0 pixels right and 6 down
                              ..scale(1.0), //scales the images by 1.1 times

                        child: Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: Image.asset(
                            '${item['imagepath']}',
                            fit: BoxFit.contain,
                            width: 134,
                            height: 134,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
