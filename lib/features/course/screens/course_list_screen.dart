import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutterproject/features/course/controllers/course_list_controller.dart';
import 'package:get/get.dart';

class CourseListScreen extends StatelessWidget {
  final CourseListController controller = Get.put(CourseListController());

  CourseListScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Obx(
          () => Text('Length of course : ${controller.courseList.length}'),
        ),
      ),
      body: Obx(
        () =>
            controller.isLoading
                ? Center(child: CircularProgressIndicator())
                : ListView.separated(
                  itemBuilder: (context, index) {
                    final course = controller.courseList[index];
                    return Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.indigo.withOpacity(0.2),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          spacing: 10,
                          children: [
                            Text('courseId ${course['courseId']}'),
                            Text('name ${course['name']}'),
                            Text('description ${course['description']}'),
                            Text('courseImage ${controller.imageBasepath}'),
                            Text('duration ${course['duration']}'),
                            Text('language ${course['language']}'),
                            Text(
                              'category ${course['category']['categoryId']}',
                            ),
                            Text('category ${course['category']['name']}'),
                            Text(
                              'category ${course['category']?['parent'] ?? ''}',
                            ),

                            CachedNetworkImage(
                              imageUrl:
                                  controller.imageBasepath +
                                  course['courseImage'],
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                  separatorBuilder: (context, index) => SizedBox(height: 10),
                  itemCount: controller.courseList.length,
                ),
      ),
    );
  }
}
