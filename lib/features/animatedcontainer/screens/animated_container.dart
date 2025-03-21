import 'package:flutter/material.dart';
import 'package:flutterproject/features/animatedcontainer/controller/animated_controller.dart';
import 'package:get/get.dart';

class RandomShapeScreen extends StatelessWidget {
  final RandomController controller = Get.put(RandomController());

  RandomShapeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(' Random Shape animation')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(
              () => AnimatedContainer(
                duration: Duration(milliseconds: 500),
                width: controller.width.value,
                height: controller.height.value,
                decoration: BoxDecoration(
                  color: controller.color.value,
                  borderRadius: controller.borderRadius.value,
                ),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: controller.generateRandomValues,
              child: Text('Generate Random Shape'),
              
            ),
          ],
        ),
      ),
    );
  }
}
