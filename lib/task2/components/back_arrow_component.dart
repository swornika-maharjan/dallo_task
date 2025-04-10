import 'package:flutter/material.dart';
import 'package:flutterproject/theme/task_theme.dart';
import 'package:flutterproject/task2/controller/analytics_controller.dart';
import 'package:get/get.dart';

class BackArrowComponent extends StatelessWidget {
  BackArrowComponent({super.key, required this.icon, required this.onPressed});
  final IconData? icon;
  final VoidCallback onPressed;
  final AnalyticsController controller = Get.put(AnalyticsController());

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 25,
      width: 25,
      child: FloatingActionButton(
        backgroundColor: AppColors.dentbox,
        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
        elevation: 0,

        shape: CircleBorder(
          side: BorderSide(color: AppColors.backarrow, width: 2),
        ),
        onPressed: onPressed,
        child: Icon(icon, size: 14, color: AppColors.backarrow),
        
      ),
    );
  }
}
