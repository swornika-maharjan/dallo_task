import 'package:flutter/material.dart';
import 'package:flutterproject/task/theme/task_theme.dart';
import 'package:flutterproject/task2/components/overall_component.dart';
import 'package:flutterproject/task2/components/streaks_container.dart';

@override
Widget buildAnalyticsPage() {
  return Container(
    color: AppColors.primary.withOpacity(0.1),
    child: SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
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
            SizedBox(height: 20),
            Row(
              children: [
                SizedBox(width: 10),
                StreaksContainer(title: 'Longest Streak', days: '12 Days'),
              ],
            ),
            SizedBox(height: 10),
            Row(
              children: [
                SizedBox(width: 10),
                StreaksContainer(title: 'Current Streak', days: '2 Days'),
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
                'You’re on a 2 days streak this week! Keep learning to grow your streak.',
                style: TextStyle(fontSize: 12, color: AppColors.description),
              ),
            ),

            //container for time spent on weekly basis
            Container(
              height: 422,
              width: 390,
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
                  Row(
                    children: [
                      SizedBox(width: 150),
                      Text(
                        'Daily Time Spent',
                        style: TextStyle(
                          color: AppColors.beginner,
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),

                  Container(
                    margin: EdgeInsets.all(10),
                    width: 360,
                    height: 114,
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
                            SizedBox(width: 160),
                            Text(
                              '41/55',
                              style: TextStyle(
                                color: AppColors.primary,
                                fontSize: 12,
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
  );
}
