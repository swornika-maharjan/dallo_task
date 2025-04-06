import 'package:flutter/material.dart';
import 'package:flutterproject/task/theme/task_theme.dart';

class EquillibriumContainer extends StatelessWidget {
  const EquillibriumContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue.shade50,
      height: 210,
      width: 400,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          children: [
            // Left Side: Text & Buttons
            Expanded(
              child: Column(
                children: [
                  Row(
                    children: [
                      Column(
                        children: [
                          Text(
                            'Vector and Equillibrium',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                              color: AppColors.dental,
                            ),
                          ),
                          const SizedBox(height: 8),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 4),
                  Row(
                    children: [
                      Text(
                        'Teacher: Gyanendra Shah',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                          color: AppColors.dental,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 6),
                  Row(
                    children: [
                      Icon(Icons.calendar_month, color: AppColors.lightbulb),
                      const SizedBox(width: 6),
                      Text(
                        'Sunday, July 15, 11:00',
                        style: TextStyle(
                          fontSize: 12,
                          color: AppColors.description,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      SizedBox(width: 20),
                      Text(
                        '  AM-12:00 PM',
                        style: TextStyle(
                          fontSize: 12,
                          color: AppColors.description,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 6),
                  Row(
                    children: [
                      Icon(Icons.access_time, color: AppColors.lightbulb),
                      const SizedBox(width: 6),
                      Text(
                        'Starts in ',
                        style: TextStyle(
                          fontSize: 12,
                          color: AppColors.description,
                        ),
                      ),
                      Text(
                        ' 20hrs:20mins: 10',
                        style: TextStyle(
                          color: AppColors.primary,
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      SizedBox(width: 20),
                      Text(
                        '  secs',
                        style: TextStyle(
                          color: AppColors.primary,
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 6),
                ],
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Container(
                  height: 30,
                  width: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: AppColors.upcoming,
                  ),
                  child: Row(
                    children: [
                      SizedBox(width: 9),
                      Text(
                        'UPCOMING',
                        style: TextStyle(color: AppColors.dentbox),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Transform(
                    transform:
                        Matrix4.identity()
                          ..translate(
                            5.0,
                            15.0,
                          ) // Moves the image 5 pixels right and 7 down
                          ..scale(1.0), //scales the images by 1.1 times
                    alignment: Alignment.centerRight,
                    child: Container(
                      margin: EdgeInsets.only(top: 10),
                      child: Image.asset(
                        'assets/images/equillibrium.png',
                        fit: BoxFit.cover,
                        width: 132,
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
  }
}
