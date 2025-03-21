import 'package:flutter/material.dart';
import 'package:flutterproject/task/theme/task_theme.dart';

class CourseCard extends StatelessWidget {
  final String imagePath;
  final String courseTitle;
  final String courseDescription;
  final String level;
  final String duration;
  final String startDate;
  final int enrolledStudents;

  const CourseCard({
    super.key,
    required this.imagePath,
    required this.courseTitle,
    required this.courseDescription,
    required this.level,
    required this.duration,
    required this.startDate,
    required this.enrolledStudents,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Container(
        height: 603,
        decoration: BoxDecoration(
          color: AppColors.dentbox,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  imagePath,
                  height: 190,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(height: 10),

              // Course Button
              SizedBox(
                child: Container(
                  decoration: BoxDecoration(
                    color: AppColors.primary,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  width: 110,
                  height: 40,
                  margin: EdgeInsets.all(4),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SizedBox(width: 15),
                      Image.asset(
                        'assets/images/bookmark.png',
                        height: 15,
                        width: 15,
                      ),
                      const SizedBox(width: 6),
                      const Text(
                        'COURSE',
                        style: TextStyle(color: AppColors.dentbox),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 10),

              // Course Title
              Text(
                courseTitle,
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: AppColors.dental,
                ),
              ),

              // Course Description
              const SizedBox(height: 4),
              Text(
                courseDescription,
                style: TextStyle(fontSize: 14, color: AppColors.description),
              ),

              const SizedBox(height: 10),

              // Beginner & Duration
              Row(
                children: [
                  const Icon(
                    Icons.bar_chart,
                    color: AppColors.lightbulb,
                    size: 16,
                  ),
                  const SizedBox(width: 6),
                  Text(level, style: const TextStyle(fontSize: 14)),
                  const SizedBox(width: 8),
                  const Icon(
                    Icons.access_time,
                    color: AppColors.lightbulb,
                    size: 16,
                  ),
                  const SizedBox(width: 6),
                  Text(duration, style: const TextStyle(fontSize: 14)),
                ],
              ),
              const SizedBox(height: 8),

              // Start Date
              Row(
                children: [
                  const Icon(
                    Icons.calendar_month_outlined,
                    color: AppColors.lightbulb,
                    size: 16,
                  ),
                  const SizedBox(width: 6),
                  Text(startDate, style: const TextStyle(fontSize: 14)),
                ],
              ),
              const SizedBox(height: 20),

              // Enrolled Users
              Row(
                children: [
                  Image.asset('assets/images/hug.png', height: 30),
                  const SizedBox(width: 6),
                  Text(
                    "$enrolledStudents+ students already enrolled",
                    style: const TextStyle(
                      color: AppColors.primary,
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 15),

              // Course Overview Button
              SizedBox(
                height: 50,
                width: 320,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.lightbulb,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  onPressed: () {},
                  child: const Center(
                    child: Text(
                      "Course Overview",
                      style: TextStyle(color: AppColors.dentbox),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget buildExamContainer({
  required Color color,
  required IconData icon,
  required String title,
  String? description,
}) {
  return Container(
    height: 160,
    width: 400,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      color: color,
    ),
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
                    Stack(
                      children: [
                        Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: AppColors.dentbox, // Change to any color
                          ),
                        ),
                        Positioned(
                          top: 5,
                          left: 5,
                          child: Image.asset(
                            'assets/images/checklist.png',
                            width: 28,
                            height: 28,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(width: 10),
                    Text(
                      title,
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
                Text(
                  '$description',
                  style: TextStyle(fontSize: 14, color: AppColors.beginner),
                ),
                const SizedBox(height: 6),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.all(4),
            decoration: BoxDecoration(
              color: AppColors.newgreen,
              borderRadius: BorderRadius.circular(8),
            ),
            width: 50,
            height: 30,
            child: Center(
              child: Text(
                'NEW',
                style: TextStyle(color: AppColors.dentbox, fontSize: 12),
              ),
            ),
          ),
        ],
      ),
    ),
  );
}
