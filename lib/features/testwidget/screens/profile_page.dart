import 'package:flutter/material.dart';
import 'package:flutterproject/features/testwidget/controller/profile_controller.dart';
import 'package:get/get.dart';

class ProfilePage extends StatelessWidget {
  ProfilePage({super.key});
  final ProfileController controller = Get.put(ProfileController());

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => ListView.builder(
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.all(8),
            child: ListTile(
              title: Text('${controller.posts[index]['title']} '),
              subtitle: Text('${controller.posts[index]['body']}'),
              trailing: Text(
                '${controller.posts[index]['reactions']['likes']}',
              ),
            ),
          );
        },
        itemCount: controller.posts.length,
      ),
    );
  }
}
