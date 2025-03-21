import 'package:flutter/material.dart';
import 'package:flutterproject/task/theme/task_theme.dart';

class ChhetriContainer extends StatelessWidget {
  const ChhetriContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 330,
      height: 380,
      decoration: BoxDecoration(
        color: AppColors.sandip,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Image.asset(
                  'assets/images/chhetri.png',
                  height: 200,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
                //live container
                Align(
                  alignment: Alignment.topRight,
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.all(8),
                        height: 30,
                        width: 90,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: AppColors.upcoming,
                        ),
                        child: Row(
                          children: [
                            SizedBox(width: 4),
                            Text(
                              'UPCOMING',
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
            const SizedBox(height: 10),
            Text(
              'Mr. Sandip Chhetri',
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
                color: AppColors.dental,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              'Topic: Biostatistics and Research',
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 14,
                color: AppColors.dental,
              ),
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                Icon(Icons.access_time, color: AppColors.lightbulb),
                const SizedBox(width: 4),
                Text(
                  'Starts in ',
                  style: TextStyle(fontSize: 12, color: AppColors.beginner),
                ),
                Text(
                  '20 hrs:53mins: 23 secs',
                  style: TextStyle(fontSize: 12, color: AppColors.primary),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                Icon(Icons.remove_red_eye_outlined, color: AppColors.lightbulb),
                const SizedBox(width: 4),
                Text(
                  'Sunday, July 31, 11:15 AM-12 AM',
                  style: TextStyle(fontSize: 12, color: AppColors.beginner),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
