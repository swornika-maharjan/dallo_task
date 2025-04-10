import 'package:flutter/material.dart';
import 'package:flutterproject/task/component/appbar_component.dart';
import 'package:flutterproject/task/component/chhetri_container.dart';
import 'package:flutterproject/task/component/custom_module_container.dart';
import 'package:flutterproject/task/component/equillibrium_component.dart';
import 'package:flutterproject/task/component/exam_container.dart';
import 'package:flutterproject/task/component/exam_section_container.dart';
import 'package:flutterproject/task/component/grid_component.dart';
import 'package:flutterproject/task/component/recent_articles_container.dart';
import 'package:flutterproject/task/component/relativity_container.dart';
import 'package:flutterproject/task/component/sandip_container.dart';
import 'package:flutterproject/task/component/subjectwise_container.dart';
import 'package:flutterproject/task/component/task_reusable_component.dart';
import 'package:flutterproject/task/controller/course_card_controller.dart';
import 'package:flutterproject/theme/task_theme.dart';
import 'package:get/get.dart';

class ShikshaNetworkState extends StatelessWidget {
  ShikshaNetworkState({super.key});
  final CourseCardController controller = Get.put(CourseCardController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: AppColors.floating,
        shape: CircleBorder(),
        child: Icon(
          Icons.report_gmailerrorred_outlined,
          size: 40,
          color: AppColors.dentbox,
        ),
      ),
      //appbar
      appBar: AppbarComponent(),
      endDrawer: Drawer(
        child: Container(
          color: Colors.blue.shade50,
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 20),
                Image.asset('assets/images/drawer.png', height: 24, width: 24),
                const SizedBox(height: 20),
                const Text('My Account'),
                const SizedBox(height: 20),
                const Text('Settings'),
                const SizedBox(height: 20),
                const Text('Logout'),
              ],
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            /// Blue Background with grid
            GridComponent(),

            /// Course Card with Floating Image Section
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Column(
                children: [
                  /// Course Card Container
                  Obx(
                    () => CourseCard(
                      imagePath: 'assets/images/dental.png',
                      courseTitle: 'Dental Preparation',
                      courseDescription:
                          'Adequate examples, solved problems, diagrams & answers of numerical questions. Step by Step theoretical concepts and their practical application.',
                      level: 'Beginner',
                      duration: '7 hr 30 mins',
                      startDate: 'April 15, 2019',
                      enrolledStudents: controller.enrolledStudents,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Row(
              children: [
                SizedBox(width: 20),
                Text(
                  'Live Sessions',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    color: AppColors.dental,
                  ),
                ),
                const SizedBox(width: 170),
                Text(
                  'View all',
                  style: TextStyle(color: AppColors.primary, fontSize: 13),
                ),
                Icon(
                  Icons.arrow_forward_ios,
                  color: AppColors.primary,
                  size: 10,
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                  //container for introduction to  relativity
                  RelativityContainer(),

                  SizedBox(height: 10),

                  //container for equillibrium
                  EquillibriumContainer(),

                  SizedBox(height: 25),

                  //container for exam section
                  ExamSectionContainer(),

                  SizedBox(height: 10),
                  Column(
                    children: [
                      Row(
                        children: [
                          SizedBox(
                            width: 350,
                            height: 27,
                            child: Text(
                              'Ready to give exam?',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: AppColors.dental,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      SizedBox(
                        height: 96,
                        width: 360,
                        child: Text(
                          'Adequate examples, solved problems, diagrams & answers of numerical questions. Step by Step theoretical concepts & their practical       application.',
                          style: TextStyle(
                            fontSize: 14,
                            color: AppColors.description,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 15),
                  Column(
                    children: [
                      buildExamContainer(
                        icon: Icons.assignment_rounded,
                        description:
                            'Compete with other learners and analyze your performance based on the results',
                        title: 'Live Exam',
                        color: AppColors.liveexam,
                      ),

                      SizedBox(height: 15),
                      buildExamContainer2(
                        color: AppColors.mockset,
                        title: 'Mock Set/ Mock Test',
                        description: 'Random Questions Set',
                      ),
                      SizedBox(height: 15),
                      buildExamContainer2(
                        color: AppColors.pastyear,
                        title: 'Past year Questions',
                        description: 'Random Questions Set',
                      ),
                      SizedBox(height: 15),

                      //Subject/chapterwise container
                      SubjectContainer(),

                      SizedBox(height: 15),

                      //custom module container
                      CustomModuleContainer(),
                      SizedBox(height: 20),

                      Align(
                        alignment: Alignment.bottomLeft,
                        child: Text(
                          'Guest Lecturers',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            color: AppColors.dental,
                          ),
                        ),
                      ),
                      SizedBox(height: 15),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            //sandip container
                            SandipContainer(),

                            SizedBox(width: 10),

                            //chhetri container
                            ChhetriContainer(),
                          ],
                        ),
                      ),
                      SizedBox(height: 15),
                      Padding(
                        padding: EdgeInsets.all(2),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                SizedBox(width: 5),
                                Text(
                                  'Recent Articles',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                    color: AppColors.dental,
                                  ),
                                ),
                                const SizedBox(width: 150),
                                Text(
                                  'View all',
                                  style: TextStyle(
                                    color: AppColors.primary,
                                    fontSize: 13,
                                  ),
                                ),
                                Icon(
                                  Icons.arrow_forward_ios,
                                  color: AppColors.primary,
                                  size: 10,
                                ),
                              ],
                            ),
                            SizedBox(height: 15),

                            //recent article container
                            RecentArticlesContainer(),
                          ],
                        ),
                      ),
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
