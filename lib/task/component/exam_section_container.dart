import 'package:flutter/material.dart';
import 'package:flutterproject/theme/task_theme.dart';

class ExamSectionContainer extends StatelessWidget {
  const ExamSectionContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topLeft,
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.all(2),
            decoration: BoxDecoration(
              color: AppColors.primary,
              borderRadius: BorderRadius.circular(8),
            ),
            width: 155,
            height: 40,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(width: 15),
                Image.asset(
                  'assets/images/checklist.png',
                  width: 18,
                  height: 18,
                  color: AppColors.dentbox,
                ),
                SizedBox(width: 5),
                Text(
                  'EXAM SECTION',
                  style: TextStyle(color: AppColors.dentbox, fontSize: 13),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
