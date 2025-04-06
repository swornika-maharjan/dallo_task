import 'package:flutter/material.dart';
import 'package:flutterproject/task/theme/task_theme.dart';
import '../controller/liveexam_container_controller.dart';
import 'package:get/get.dart';

class LiveExamScreen extends StatelessWidget {
  LiveExamScreen({super.key});
  final LiveexamContainerController controller = Get.put(
    LiveexamContainerController(),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.separated(
        scrollDirection: Axis.vertical,
        itemCount: controller.liveexam.length,
        separatorBuilder: (context, index) => SizedBox(height: 15),
        itemBuilder: (BuildContext context, int index) {
          final liveexam = controller.liveexam[index];
          final bool nonewbutton =
              liveexam['topic'] == 'Subject/Chapterwise Exam' ||
              liveexam['topic'] == 'Custom Module';
          final bool description =
              liveexam['topic'] == 'Live Exam' ||
              liveexam['topic'] == 'Custom Module';
          return Container(
            margin: EdgeInsets.symmetric(horizontal: 20),
            height: 160,
            width: 400,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color:
                  liveexam['topic'] == 'Live Exam'
                      ? AppColors.liveexam.withOpacity(0.5)
                      : liveexam['topic'] == 'Mock Set/Mock Test'
                      ? AppColors.mockset
                      : liveexam['topic'] == 'Past Year Questions'
                      ? AppColors.pastyear
                      : liveexam['topic'] == 'Subject/Chapterwise Exam'
                      ? AppColors.subject
                      : AppColors.custom,
            ),
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Left Side: Text & Buttons
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Container(
                              width: 40,
                              height: 40,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: AppColors.dentbox,
                              ),
                              child: Center(
                                child: Image.asset(
                                  'assets/images/checklist.png',
                                  width: 28,
                                  height: 28,
                                ),
                              ),
                            ),

                            SizedBox(width: 10),
                            Text(
                              ("${liveexam['topic']}"),
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                                color: AppColors.dental,
                              ),
                            ),
                            const SizedBox(height: 8),
                          ],
                        ),
                        const SizedBox(height: 10),
                        !description
                            ? Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Icon(
                                      Icons.help_outline_outlined,
                                      color: AppColors.beginner,
                                    ),
                                    SizedBox(width: 4),
                                    Text(
                                      '${liveexam['question']}  ',
                                      style: TextStyle(
                                        color: AppColors.beginner,
                                        fontSize: 14,
                                      ),
                                    ),
                                  ],
                                ),

                                SizedBox(height: 10),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.access_time,
                                      color: AppColors.beginner,
                                    ),
                                    SizedBox(width: 4),
                                    Text(
                                      '${liveexam['time']}',
                                      style: TextStyle(
                                        color: AppColors.beginner,
                                        fontSize: 14,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            )
                            : Text(
                              '${liveexam['description']}',
                              style: TextStyle(
                                fontSize: 14,
                                color: AppColors.beginner,
                              ),
                            ),
                        const SizedBox(height: 6),
                      ],
                    ),
                  ),
                  nonewbutton
                      ? SizedBox()
                      : Container(
                        margin: EdgeInsets.all(4),
                        decoration: BoxDecoration(
                          color: const Color.fromRGBO(52, 195, 143, 1),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        width: 50,
                        height: 30,
                        child: Center(
                          child: Text(
                            'NEW',
                            style: TextStyle(
                              color: AppColors.dentbox,
                              fontSize: 12,
                            ),
                          ),
                        ),
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
