import 'package:flutter/material.dart';
import 'package:flutterproject/task/component/reusable_container.dart';
import 'package:flutterproject/task/component/task_reusable_component.dart';
import 'package:flutterproject/task/theme/task_theme.dart';

class ShikshaNetworkState extends StatelessWidget {
  const ShikshaNetworkState({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.dentbox,
        toolbarHeight: 77,
        elevation: 0,
        leadingWidth: 360,
        leading: Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Row(
            children: [
              Image.asset('assets/images/shiksha.png', height: 41, width: 177),
              const SizedBox(width: 8),
            ],
          ),
        ),
        actions: [
          SizedBox(
            height: 24,
            width: 24,
            child: Image.asset('assets/images/drawer.png'),
          ),
          const SizedBox(width: 16),
        ],
      ),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /// Blue Background
                SizedBox(
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
                              buildCard(
                                "Quiz of the day",
                                "assets/images/quiz.png",
                              ),
                              buildCard("Course", "assets/images/course.png"),
                              buildCard(
                                "E-Books Collection",
                                "assets/images/ebooks.png",
                              ),
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
                ),

                /// Course Card with Floating Image Section
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: Column(
                    children: [
                      /// Course Card Container
                      CourseCard(
                        imagePath: 'assets/images/dental.png',
                        courseTitle: 'Dental Preparation',
                        courseDescription:
                            'Adequate examples, solved problems, diagrams & answers of numerical questions. Step by Step theoretical concepts and their practical application.',
                        level: 'Beginner',
                        duration: '7 hr 30 mins',
                        startDate: 'April 15, 2019',
                        enrolledStudents: 2000,
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
                      Container(
                        color: Colors.blue.shade50,
                        height: 200,
                        width: 400,
                        child: Padding(
                          padding: const EdgeInsets.all(16),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Introduction to Relativity',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16,
                                        color: AppColors.relativity,
                                      ),
                                    ),

                                    Text(
                                      '(Chapter 6)',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16,
                                        color: AppColors.relativity,
                                      ),
                                    ),
                                    const SizedBox(height: 6),
                                    Text(
                                      'Teacher: Rashmika Shrestha',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 12,
                                        color: AppColors.relativity,
                                      ),
                                    ),
                                    const SizedBox(height: 6),
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.access_time,
                                          color: AppColors.lightbulb,
                                        ),
                                        const SizedBox(width: 6),
                                        Text(
                                          'Started 20mins ago',
                                          style: TextStyle(
                                            fontSize: 12,
                                            color: AppColors.description,
                                          ),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(height: 6),
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.remove_red_eye_outlined,
                                          color: AppColors.lightbulb,
                                        ),
                                        const SizedBox(width: 6),
                                        Text(
                                          '213 students attending',
                                          style: TextStyle(
                                            fontSize: 12,
                                            color: AppColors.description,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),

                              // Ensure the image stays within the right side
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Container(
                                    margin: EdgeInsets.all(0),
                                    height: 30,
                                    width: 70,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      color: AppColors.live.withOpacity(0.79),
                                    ),
                                    child: Row(
                                      children: [
                                        SizedBox(width: 9),
                                        Image.asset(
                                          'assets/images/live.png',
                                          width: 18,
                                          height: 20,
                                        ),
                                        SizedBox(width: 6),
                                        Text(
                                          'LIVE',
                                          style: TextStyle(
                                            color: AppColors.dentbox,
                                            fontSize: 12,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Expanded(
                                    child: Transform(
                                      transform:
                                          Matrix4.identity()
                                            ..translate(
                                              5.0,
                                              15.0,
                                            ) // Moves the image 5 pixels right and 7 down
                                            ..scale(
                                              1.0,
                                            ), //scales the images by 1.1 times

                                      child: Container(
                                        margin: EdgeInsets.only(top: 5),
                                        child: Image.asset(
                                          'assets/images/relativityintro.png',
                                          fit: BoxFit.cover,
                                          width: 134,
                                          height: 134,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                      Container(
                        color: Colors.blue.shade50,
                        height: 210,
                        width: 400,
                        child: Padding(
                          padding: const EdgeInsets.all(16),
                          child: Row(
                            children: [
                              // Left Side: Text & Buttons
                              Expanded(
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        Column(
                                          children: [
                                            Text(
                                              'Vector and Equillibrium',
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 16,
                                                color: AppColors.dental,
                                              ),
                                            ),
                                            const SizedBox(height: 8),
                                          ],
                                        ),
                                      ],
                                    ),
                                    const SizedBox(height: 4),
                                    Row(
                                      children: [
                                        Text(
                                          'Teacher: Gyanendra Shah',
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 12,
                                            color: AppColors.dental,
                                          ),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(height: 6),
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.calendar_month,
                                          color: AppColors.lightbulb,
                                        ),
                                        const SizedBox(width: 6),
                                        Text(
                                          'Sunday, July 15, 11:00',
                                          style: TextStyle(
                                            fontSize: 12,
                                            color: AppColors.description,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          '  AM-12:00 PM',
                                          style: TextStyle(
                                            fontSize: 12,
                                            color: AppColors.description,
                                          ),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(height: 6),
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.access_time,
                                          color: AppColors.lightbulb,
                                        ),
                                        const SizedBox(width: 6),
                                        Text(
                                          'Starts in ',
                                          style: TextStyle(
                                            fontSize: 12,
                                            color: AppColors.description,
                                          ),
                                        ),
                                        Text(
                                          ' 20hrs:20mins: 10',
                                          style: TextStyle(
                                            color: AppColors.primary,
                                            fontSize: 12,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          '  secs',
                                          style: TextStyle(
                                            color: AppColors.primary,
                                            fontSize: 12,
                                          ),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(height: 6),
                                  ],
                                ),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Container(
                                    height: 30,
                                    width: 100,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      color: AppColors.upcoming,
                                    ),
                                    child: Row(
                                      children: [
                                        SizedBox(width: 9),
                                        Text(
                                          'UPCOMING',
                                          style: TextStyle(
                                            color: AppColors.dentbox,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Expanded(
                                    child: Transform(
                                      transform:
                                          Matrix4.identity()
                                            ..translate(
                                              5.0,
                                              15.0,
                                            ) // Moves the image 5 pixels right and 7 down
                                            ..scale(
                                              1.0,
                                            ), //scales the images by 1.1 times
                                      alignment: Alignment.centerRight,
                                      child: Container(
                                        margin: EdgeInsets.only(top: 10),
                                        child: Image.asset(
                                          'assets/images/equillibrium.png',
                                          fit: BoxFit.cover,
                                          width: 132,
                                          height: 134,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 25),
                      Align(
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
                                    style: TextStyle(
                                      color: AppColors.dentbox,
                                      fontSize: 13,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
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

                          Container(
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
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          children: [
                                            Stack(
                                              alignment: Alignment.center,
                                              children: [
                                                Container(
                                                  width: 40,
                                                  height: 40,
                                                  decoration: BoxDecoration(
                                                    shape: BoxShape.circle,
                                                    color: AppColors.dentbox,
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
                                            Icon(
                                              Icons.access_time,
                                              color: AppColors.beginner,
                                            ),
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
                          ),

                          SizedBox(height: 15),

                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: AppColors.custom,
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
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          children: [
                                            Stack(
                                              alignment: Alignment.center,
                                              children: [
                                                Container(
                                                  width: 40,
                                                  height: 40,
                                                  decoration: BoxDecoration(
                                                    shape: BoxShape.circle,
                                                    color: AppColors.dentbox,
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
                                              'Custom Module',
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
                                          'Create your own set of test by choosing your own chapter topics and give test on the specific topics',
                                          style: TextStyle(
                                            fontSize: 14,
                                            color: AppColors.beginner,
                                          ),
                                        ),
                                        const SizedBox(height: 6),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
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
                                Container(
                                  width: 330,
                                  height: 380,
                                  decoration: BoxDecoration(
                                    color: AppColors.sandip,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(16),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
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
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                            5,
                                                          ),
                                                      color: AppColors.live
                                                          .withOpacity(0.8),
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
                                                          style: TextStyle(
                                                            color:
                                                                AppColors
                                                                    .dentbox,
                                                          ),
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
                                            Icon(
                                              Icons.access_time,
                                              color: AppColors.lightbulb,
                                            ),
                                            const SizedBox(width: 4),
                                            Text(
                                              'Started 20 minutes ago',
                                              style: TextStyle(
                                                fontSize: 12,
                                                color: AppColors.beginner,
                                              ),
                                            ),
                                          ],
                                        ),
                                        const SizedBox(height: 10),
                                        Row(
                                          children: [
                                            Icon(
                                              Icons.remove_red_eye_outlined,
                                              color: AppColors.lightbulb,
                                            ),
                                            const SizedBox(width: 4),
                                            Text(
                                              '213 students attending',
                                              style: TextStyle(
                                                fontSize: 12,
                                                color: AppColors.beginner,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(width: 10),
                                Container(
                                  width: 330,
                                  height: 380,
                                  decoration: BoxDecoration(
                                    color: AppColors.sandip,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(16),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
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
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                            5,
                                                          ),
                                                      color: AppColors.upcoming,
                                                    ),
                                                    child: Row(
                                                      children: [
                                                        SizedBox(width: 4),
                                                        Text(
                                                          'UPCOMING',
                                                          style: TextStyle(
                                                            color:
                                                                AppColors
                                                                    .dentbox,
                                                          ),
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
                                            Icon(
                                              Icons.access_time,
                                              color: AppColors.lightbulb,
                                            ),
                                            const SizedBox(width: 4),
                                            Text(
                                              'Starts in ',
                                              style: TextStyle(
                                                fontSize: 12,
                                                color: AppColors.beginner,
                                              ),
                                            ),
                                            Text(
                                              '20 hrs:53mins: 23 secs',
                                              style: TextStyle(
                                                fontSize: 12,
                                                color: AppColors.primary,
                                              ),
                                            ),
                                          ],
                                        ),
                                        const SizedBox(height: 10),
                                        Row(
                                          children: [
                                            Icon(
                                              Icons.remove_red_eye_outlined,
                                              color: AppColors.lightbulb,
                                            ),
                                            const SizedBox(width: 4),
                                            Text(
                                              'Sunday, July 31, 11:15 AM-12 AM',
                                              style: TextStyle(
                                                fontSize: 12,
                                                color: AppColors.beginner,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
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
                                Container(
                                  height: 520,
                                  width: 340,
                                  decoration: BoxDecoration(
                                    color: AppColors.dentbox,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
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
                                                  color: AppColors.dentbox
                                                      .withOpacity(0.8),
                                                  borderRadius:
                                                      BorderRadius.circular(10),
                                                ),
                                                width: 120,
                                                height: 40,
                                                margin: EdgeInsets.all(7),
                                                child: Center(
                                                  child: Text(
                                                    'IOE Prep 2080',
                                                    style: TextStyle(
                                                      color: AppColors.dental,
                                                    ),
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
                                                  child: Image.asset(
                                                    'assets/images/hari.png',
                                                  ),
                                                ),
                                                Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Row(
                                                      children: [
                                                        SizedBox(width: 6),
                                                        Text(
                                                          'Hari Maharjan',
                                                          style: const TextStyle(
                                                            fontSize: 14,
                                                            color:
                                                                AppColors
                                                                    .description,
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
                                                            color:
                                                                AppColors
                                                                    .beginner,
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
                                        style: TextStyle(
                                          fontSize: 14,
                                          color: AppColors.description,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
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
          Align(
            alignment: Alignment.bottomRight,
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: SizedBox(
                width: 60,
                height: 60,
                child: FloatingActionButton(
                  onPressed: () {},
                  backgroundColor: AppColors.floating,
                  shape: CircleBorder(),
                  child: Icon(
                    Icons.report_gmailerrorred_outlined,
                    size: 40,
                    color: AppColors.dentbox,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildCard(String title, String imagePath) {
    return Container(
      width: 152,
      height: 143,
      decoration: BoxDecoration(
        color: AppColors.dentbox,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(color: Colors.black12, blurRadius: 5, spreadRadius: 2),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(12),
            child: Row(
              children: [
                Stack(
                  children: [
                    Container(
                      width: 35,
                      height: 35,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.orange.shade100,
                      ),
                    ),
                    Positioned(
                      top: 5,
                      left: 5,
                      bottom: 5,
                      child: Image.asset('assets/images/Lightbulb.png'),
                    ),
                  ],
                ),

                const SizedBox(width: 8),
                Expanded(
                  child: Text(
                    title,
                    style: const TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.bold,
                      color: AppColors.dental,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Center(
              child: Image.asset(imagePath, height: 140, fit: BoxFit.cover),
            ),
          ),
        ],
      ),
    );
  }
}
