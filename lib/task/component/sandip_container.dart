import 'package:flutter/material.dart';
import 'package:flutterproject/task/theme/task_theme.dart';

class SandipContainer extends StatelessWidget {
  const SandipContainer({super.key});

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
                  'assets/images/sandip.png',
                  height: 200,
                  width: double.infinity,
                  fit: BoxFit.contain,
                ),
                //live container
                Align(
                  alignment: Alignment.topRight,
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.all(8),
                        height: 30,
                        width: 65,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: AppColors.live.withOpacity(0.8),
                        ),
                        child: Row(
                          children: [
                            SizedBox(width: 6),
                            Image.asset(
                              'assets/images/live.png',
                              width: 18,
                              height: 20,
                            ),
                            SizedBox(width: 4),
                            Text(
                              'LIVE',
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
                  'Started 20 minutes ago',
                  style: TextStyle(fontSize: 12, color: AppColors.beginner),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                Icon(Icons.remove_red_eye_outlined, color: AppColors.lightbulb),
                const SizedBox(width: 4),
                Text(
                  '213 students attending',
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
