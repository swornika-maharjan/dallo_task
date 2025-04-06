import 'package:flutter/material.dart';
import 'package:flutterproject/task/theme/task_theme.dart';
import '../controller/action_button_controller.dart';
import 'package:get/get.dart';

class ActionbuttonPage extends StatelessWidget {
  ActionbuttonPage({super.key});
  final ActionButtonController controller = Get.put(ActionButtonController());

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Column(
        children: [
          SizedBox(height: 50),
          Container(
            height: 80,
            width: 80,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: AppColors.correct,
            ),
            child: Center(child: Text('${controller.number}')),
          ),
          SizedBox(height: 20),
          Row(
            children: [
              ElevatedButton(
                onPressed: () {
                  controller.decreaseNumber();
                },
                child: Icon(Icons.minimize),
              ),
              SizedBox(width: 220),
              ElevatedButton(
                onPressed: () {
                  controller.increaseNumber();
                },
                child: Icon(Icons.add),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
