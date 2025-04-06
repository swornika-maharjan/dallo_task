import 'package:flutter/material.dart';
import 'package:flutterproject/features/testwidget/controller/profile_controller.dart';
import 'package:get/get.dart';

class TransactionPage extends StatelessWidget {
  TransactionPage({super.key});
  final ProfileController controller = Get.put(ProfileController());

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => ListView.builder(
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.all(8),
            child: ListTile(
              leading: Text('${controller.products[index]['title']}'),
              subtitle: Text('${controller.products[index]['description']}'),
              trailing: Text(
                'width : ${controller.products[index]['dimensions']['width']}',
              ),
            ),
          );
        },
        itemCount: controller.products.length,
      ),
    );
  }
}
