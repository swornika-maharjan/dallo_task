import 'package:flutter/material.dart';
import 'package:flutterproject/task/component/buildcard_component.dart';
import 'package:flutterproject/task/controller/grid_controller.dart';
import 'package:flutterproject/task/theme/task_theme.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/get_instance.dart';

class GridComponent extends StatelessWidget {
  GridComponent({super.key});
  final GridController controller = Get.put(GridController());

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
              child: GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: 4,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                ),
                itemBuilder: (context, index) {
                  return buildCard(
                    controller.item[index]["title"]!,
                    controller.item[index]["image"]!,
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
