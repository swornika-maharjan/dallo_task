import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutterproject/medicalbook/component_wrapper.dart';
import 'package:flutterproject/medicalbook/controller/option_controller.dart';
import 'package:flutterproject/theme/dt_color.dart';
import 'package:flutterproject/theme/dt_styles.dart';
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
            childAspectRatio: 4 / 1,
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            children:
                controller.options.map((option) {
                  final title = option['title']!;
                  final iconPath = option['icon']!;
                  final isSelected = controller.selectedOption.value == title;

                  return GestureDetector(
                    onTap: () => controller.selectOption(title),
                    child: ComponentWrapper(
                      padding: EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 10,
                      ),
                      borderColor:
                          isSelected ? DTColor.orange : DTColor.platinum,
                      child: Row(
                        children: [
                          SvgPicture.asset(iconPath),
                          const SizedBox(width: 10),
                          Text(
                            title,
                            style: header5.copyWith(
                              fontWeight: FontWeight.w600,
                              color: DTColor.bookTitleBlack,
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
