import 'package:flutter/material.dart';
import 'package:flutterproject/task/theme/task_theme.dart';

class SubjectContainer extends StatelessWidget {
  const SubjectContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: AppColors.subject,
      ),

      height: 160,
      width: 400,
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
                        'Subject/Chapterwise Exam',
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
                  Row(
                    children: [
                      Icon(
                        Icons.help_outline_outlined,
                        color: AppColors.beginner,
                      ),
                      SizedBox(width: 4),
                      Text(
                        'Random Questions Set',
                        style: TextStyle(
                          fontSize: 14,
                          color: AppColors.beginner,
                        ),
                      ),
                      const SizedBox(height: 6),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Icon(Icons.access_time, color: AppColors.beginner),
                      SizedBox(width: 4),
                      Text(
                        'Time: 2hrs',
                        style: TextStyle(
                          fontSize: 14,
                          color: AppColors.beginner,
                        ),
                      ),
                      const SizedBox(height: 6),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
