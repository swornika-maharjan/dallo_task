import 'package:flutter/material.dart';
import 'package:flutterproject/task/component/buildcard_component.dart';
import 'package:flutterproject/task/theme/task_theme.dart';

class GridComponent extends StatelessWidget {
  const GridComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 428,
      child: Stack(
        children: [
          // Container Section
          Container(
            height: 101,
            color: AppColors.primary,
            child: const Center(child: SizedBox(height: 10)),
          ),

          // Padding Section (Overlapping with Container)
          Positioned(
            top: 20,
            left: 16,
            right: 16,
            child: SizedBox(
              height: 400,
              child: GridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                children: [
                  buildCard("Quiz of the day", "assets/images/quiz.png"),
                  buildCard("Course", "assets/images/course.png"),
                  buildCard("E-Books Collection", "assets/images/ebooks.png"),
                  buildCard(
                    "Discussion Platform",
                    "assets/images/discussion.png",
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
