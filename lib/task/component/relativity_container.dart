import 'package:flutter/material.dart';
import 'package:flutterproject/theme/task_theme.dart';

class RelativityContainer extends StatelessWidget {
  const RelativityContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue.shade50,
      height: 200,
      width: 400,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Introduction to Relativity',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: AppColors.relativity,
                    ),
                  ),

                  Text(
                    '(Chapter 6)',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: AppColors.relativity,
                    ),
                  ),
                  const SizedBox(height: 6),
                  Text(
                    'Teacher: Rashmika Shrestha',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 12,
                      color: AppColors.relativity,
                    ),
                  ),
                  const SizedBox(height: 6),
                  Row(
                    children: [
                      Icon(Icons.access_time, color: AppColors.lightbulb),
                      const SizedBox(width: 6),
                      Text(
                        'Started 20mins ago',
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
                      Icon(
                        Icons.remove_red_eye_outlined,
                        color: AppColors.lightbulb,
                      ),
                      const SizedBox(width: 6),
                      Text(
                        '213 students attending',
                        style: TextStyle(
                          fontSize: 12,
                          color: AppColors.description,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            // Ensure the image stays within the right side
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Container(
                  margin: EdgeInsets.all(0),
                  height: 30,
                  width: 70,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: AppColors.live.withOpacity(0.79),
                  ),
                  child: Row(
                    children: [
                      SizedBox(width: 9),
                      Image.asset(
                        'assets/images/live.png',
                        width: 18,
                        height: 20,
                      ),
                      SizedBox(width: 6),
                      Text(
                        'LIVE',
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
                            5.0,
                            15.0,
                          ) // Moves the image 5 pixels right and 7 down
                          ..scale(1.0), //scales the images by 1.1 times

                    child: Container(
                      margin: EdgeInsets.only(top: 5),
                      child: Image.asset(
                        'assets/images/relativityintro.png',
                        fit: BoxFit.cover,
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
  }
}
