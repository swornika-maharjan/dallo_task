import 'package:flutter/material.dart';
import 'package:flutterproject/theme/task_theme.dart';

class RecentArticlesContainer extends StatelessWidget {
  const RecentArticlesContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 520,
      width: 340,
      decoration: BoxDecoration(
        color: AppColors.dentbox,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Image.asset(
                'assets/images/recentarticle.png',
                height: 200,
                width: double.infinity,
                fit: BoxFit.contain,
              ),
              Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: AppColors.dentbox.withOpacity(0.8),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    width: 120,
                    height: 40,
                    margin: EdgeInsets.all(7),
                    child: Center(
                      child: Text(
                        'IOE Prep 2080',
                        style: TextStyle(color: AppColors.dental),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),

          const SizedBox(height: 10),
          Text(
            'Tips to get success in upcoming Entran..',
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
              color: AppColors.dental,
            ),
          ),
          const SizedBox(height: 10),
          SizedBox(
            child: Column(
              children: [
                Row(
                  children: [
                    SizedBox(
                      width: 32,
                      height: 32,
                      child: Image.asset('assets/images/hari.png'),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            SizedBox(width: 6),
                            Text(
                              'Hari Maharjan',
                              style: const TextStyle(
                                fontSize: 14,
                                color: AppColors.description,
                              ),
                            ),
                          ],
                        ),

                        Row(
                          children: [
                            SizedBox(width: 6),
                            Text(
                              '25 July, 2023 | 3 min read',
                              style: TextStyle(
                                fontSize: 12,
                                color: AppColors.beginner,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(height: 15),
          Text(
            'The WHO differentiates between intrinsic sugars, which are found naturally in fruits and vegetables and for which no scientific evidence has been reported that their consumption causes adverse health effects, and free sugars, which would include both sugars that we add to food and those naturally present in certain foods and beverages that contain them in high amounts.',
            style: TextStyle(fontSize: 14, color: AppColors.description),
          ),
        ],
      ),
    );
  }
}
