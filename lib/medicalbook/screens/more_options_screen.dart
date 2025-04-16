import 'package:flutter/material.dart';
import 'package:flutterproject/medicalbook/controller/option_controller.dart';
import 'package:flutterproject/theme/task_theme.dart';
import 'package:get/get.dart';

class MoreOptionsScreen extends StatelessWidget {
  final OptionController controller = Get.put(OptionController());

  MoreOptionsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfff8f9fb),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Obx(() {
          return GridView.count(
            crossAxisCount: 2,
            crossAxisSpacing: 12,
            mainAxisSpacing: 12,
            childAspectRatio: 2.9,
            shrinkWrap: true,
            physics:
                NeverScrollableScrollPhysics(), 
            children:
                controller.options.map((option) {
                  final title = option['title']!;
                  final iconPath = option['icon']!;
                  final isSelected = controller.selectedOption.value == title;

                  return GestureDetector(
                    onTap: () => controller.selectOption(title),
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                        vertical: 12,
                        horizontal: 10,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(
                          color:
                              isSelected ? Colors.orange : Colors.grey.shade200,
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black12,
                            blurRadius: 3,
                            offset: Offset(1, 1),
                          ),
                        ],
                      ),
                      child: Row(
                        children: [
                          Image.asset(iconPath, height: 24, width: 24),
                          const SizedBox(width: 10),
                          Flexible(
                            child: Text(
                              title,
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                color: AppColors.dental,
                              ),
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                }).toList(),
          );
        }),
      ),
    );
  }
}
