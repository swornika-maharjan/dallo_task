import 'package:flutter/cupertino.dart';
import 'package:flutterproject/task/theme/task_theme.dart';
import 'package:flutterproject/task2/components/overall_four_containers.dart';
import 'package:flutterproject/task2/components/resources_container.dart';

class OverallQuestionAnalytics extends StatelessWidget {
  const OverallQuestionAnalytics({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 455,
      // width: 400,
      margin: EdgeInsets.all(5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 50),
          Text(
            'Overall Questions Analytics',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
              color: AppColors.description,
            ),
          ),
          SizedBox(height: 10),
          OverallContainers(
            details: 'Attempted',
            numbers: '700',
            color: AppColors.primary,
            width: 75,
          ),
          SizedBox(height: 10),
          OverallContainers(
            details: 'Correct',
            numbers: '230',
            color: AppColors.correct,
            width: 92,
          ),
          SizedBox(height: 10),
          OverallContainers(
            details: 'Incorrect',
            numbers: '100',
            color: AppColors.incorrect,
            width: 80,
          ),
          SizedBox(height: 10),
          OverallContainers(
            details: 'Unanswered',
            numbers: '370',
            color: AppColors.unanswered,
            width: 62,
          ),
          SizedBox(height: 40),
          Text(
            'Resources covered',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: AppColors.description,
            ),
          ),
          SizedBox(height: 10),
          ResourcesContainer(details: 'Videos Watched', data: '100'),
          SizedBox(height: 10),
          ResourcesContainer(details: 'Notes Read', data: '150'),
          SizedBox(height: 10),
          ResourcesContainer(details: 'Exams Completed', data: '150'),
        ],
      ),
    );
  }
}
