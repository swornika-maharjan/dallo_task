import 'package:flutter/material.dart';
import 'package:flutterproject/theme/task_theme.dart';
import 'package:flutterproject/task2/components/piechart/overall_four_containers.dart';
import 'package:flutterproject/task2/components/piechart/piechart_component.dart';
import 'package:flutterproject/task2/components/piechart/piechart_data.dart';
import 'package:flutterproject/task2/components/resources_component.dart';
import 'package:flutterproject/task2/components/ringchart/ring_chart.dart';
import 'package:flutterproject/task2/components/topicwise_container.dart';
import 'package:flutterproject/task2/controller/ring_chart_controller.dart';
import 'package:get/get.dart';

class OverallQuestionAnalytics extends StatelessWidget {
  OverallQuestionAnalytics({super.key});
  final RingChartController controller = Get.put(RingChartController());

  @override
  Widget build(BuildContext context) {
    return Container(
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
          SizedBox(height: 20),
          Row(
            children: [
              SizedBox(width: 10),
              SizedBox(
                height: 144,
                width: 144,
                child: PiechartComponent(
                  data: PiechartData(color: AppColors.primary),
                ),
              ),
              SizedBox(width: 34),
              Column(
                children: [
                  OverallContainers(
                    details: 'Attempted',
                    numbers: '700',
                    color: AppColors.primary,
                    width: 70,
                  ),
                  SizedBox(height: 10),
                  OverallContainers(
                    details: 'Correct',
                    numbers: '230',
                    color: AppColors.correct,
                    width: 88,
                  ),
                  SizedBox(height: 10),
                  OverallContainers(
                    details: 'Incorrect',
                    numbers: '100',
                    color: AppColors.incorrect,
                    width: 77,
                  ),
                  SizedBox(height: 10),
                  OverallContainers(
                    details: 'Unanswered',
                    numbers: '370',
                    color: AppColors.unanswered,
                    width: 58,
                  ),
                ],
              ),
            ],
          ),

          SizedBox(height: 40),

          //Resource container starts here
          Text(
            'Resources covered',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: AppColors.description,
            ),
          ),
          SizedBox(height: 10),
          Row(
            children: [
              SizedBox(width: 10),
              SizedBox(
                height: 141,
                width: 141,
                child: RingChart(
                  data: PiechartData(color: AppColors.primary),
                  centerText: '${controller.ringText}% completed',
                ),
              ),

              SizedBox(width: 30),
              Column(
                children: [
                  ResourcesContainer(
                    details: 'Videos Watched',
                    data: '100',
                    imagepath: 'assets/images/yback.png',
                    image: 'assets/images/youtube.png',
                  ),
                  SizedBox(height: 10),
                  ResourcesContainer(
                    details: 'Notes Read',
                    data: '150',
                    imagepath: 'assets/images/nback.png',
                    image: 'assets/images/notes.png',
                  ),
                  SizedBox(height: 10),
                  ResourcesContainer(
                    details: 'Exams Completed',
                    data: '150',
                    imagepath: 'assets/images/nback.png',
                    image: 'assets/images/notes.png',
                  ),
                ],
              ),
            ],
          ),

          SizedBox(height: 20),
          //Topic wise container starts here
          TopicwiseContainer(),
          SizedBox(height: 30),
        ],
      ),
    );
  }
}
