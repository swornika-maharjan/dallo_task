import 'package:flutter/material.dart';
import 'package:flutterproject/task/theme/task_theme.dart';
import 'package:flutterproject/task2/components/back_arrow_component.dart';
import 'package:flutterproject/task2/components/barchart/bar_chart.dart';
import 'package:flutterproject/task2/components/calendar.dart';
import 'package:flutterproject/task2/components/piechart/overall_question_component.dart';
import 'package:flutterproject/task2/components/streaks_container.dart';
import 'package:flutterproject/task2/controller/analytics_controller.dart';
import 'package:get/get.dart';

class AnalyticsComponent extends StatelessWidget {
  AnalyticsComponent({super.key});
  final AnalyticsController controller = Get.put(AnalyticsController());

  @override
  Widget build(BuildContext context) {
    final AnalyticsController controller = Get.put(AnalyticsController());
    return Container(
      color: AppColors.primary.withOpacity(0.1),
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Obx(
            () => Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Streaks",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: AppColors.description,
                    ),
                  ),
                ),

                //calendar
                SizedBox(height: 408, child: Calendar()),

                SizedBox(height: 20),
                Row(
                  children: [
                    SizedBox(width: 10),
                    StreaksContainer(
                      title: 'Longest Streak',
                      days: '${controller.longeststreak} Days',
                    ),
                  ],
                ),

                SizedBox(height: 10),
                Row(
                  children: [
                    SizedBox(width: 10),
                    StreaksContainer(
                      title: 'Current Streak',
                      days: '${controller.currentstreak} Days',
                    ),
                  ],
                ),

                SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Great Work!',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: AppColors.description,
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'You’re on a ${controller.currentstreak} days streak this week! Keep learning to grow your streak.',
                    style: TextStyle(
                      fontSize: 12,
                      color: AppColors.description,
                    ),
                  ),
                ),
                SizedBox(height: 20),

                //container for time spent on weekly basis
                Container(
                  height: 560,
                  width: 400,
                  color: AppColors.dentbox,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 20),
                      Row(
                        children: [
                          SizedBox(width: 20),
                          Text(
                            'Time spent on weekly basis ',
                            style: TextStyle(
                              fontSize: 14,
                              color: AppColors.description,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 20),
                      Obx(
                        () => Row(
                          children: [
                            SizedBox(width: 200),
                            BackArrowComponent(
                              icon: Icons.arrow_back_ios_new,
                              onPressed: controller.goToPreviousWeek,
                            ),
                            SizedBox(width: 10),
                            Text(
                              controller.formattedWeek,
                              style: TextStyle(
                                color: AppColors.beginner,
                                fontSize: 12,
                              ),
                            ),
                            SizedBox(width: 10),
                            BackArrowComponent(
                              icon: Icons.arrow_forward_ios,
                              onPressed: controller.goToNextWeek,
                            ),
                          ],
                        ),
                      ),

                      // SizedBox(height: 30),

                      //Bartchart
                      SizedBox(
                        height: 250,
                        width: 400,
                        child: BarChartComponent(),
                      ),

                      Center(
                        child: Text(
                          'Daily Time Spent',
                          style: TextStyle(
                            color: AppColors.beginner,
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      SizedBox(height: 30),

                      Padding(
                        padding: const EdgeInsets.all(15),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Text(
                                  'Online class attendance: ',
                                  style: TextStyle(
                                    color: AppColors.longeststreak,
                                    fontSize: 12,
                                  ),
                                ),
                                SizedBox(width: 155),
                                Text(
                                  '41/55',
                                  style: TextStyle(
                                    color: AppColors.primary,
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 24),
                            Row(
                              children: [
                                Text(
                                  'Total time spent ',
                                  style: TextStyle(
                                    color: AppColors.longeststreak,
                                    fontSize: 12,
                                  ),
                                ),
                                SizedBox(width: 140),
                                Text(
                                  '56 hours 20 mins',
                                  style: TextStyle(
                                    color: AppColors.primary,
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 24),
                            Row(
                              children: [
                                Text(
                                  'Average time/day',
                                  style: TextStyle(
                                    color: AppColors.longeststreak,
                                    fontSize: 12,
                                  ),
                                ),
                                SizedBox(width: 190),
                                Text(
                                  '56 mins',
                                  style: TextStyle(
                                    color: AppColors.primary,
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                OverallQuestionAnalytics(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
