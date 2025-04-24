import 'package:flutter/material.dart';
import 'package:flutterproject/medicalbook/component_wrapper.dart';
import 'package:flutterproject/medicalbook/controller/faqs_controller.dart';
import 'package:flutterproject/medicalbook/screens/order_issues_screen.dart';
import 'package:flutterproject/theme/dt_color.dart';
import 'package:get/get.dart';

import '../../theme/dt_styles.dart';

class DTListTileComponent extends StatelessWidget {
  DTListTileComponent({super.key});
  final FaqsController controller = Get.put(FaqsController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ComponentWrapper(
        padding: EdgeInsets.zero,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 15),
              child: Text(
                'Company and Updates',
                style: header7.copyWith(color: DTColor.assetGrey),
              ),
            ),
            SizedBox(height: 15),
            ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: controller.faqCategories.length,
              itemBuilder: (context, index) {
                return ComponentWrapper(
                  padding: EdgeInsets.zero,
                  borderColor: DTColor.platinum,
                  child: GestureDetector(
                    onTap: () {
                      Get.to(() => OrderIssuesScreen());
                    },
                    child: ListTile(
                      leading: Text(
                        '${controller.faqCategories[index]}',
                        style: header6.copyWith(
                          color: DTColor.darkbluishgray,
                        ),
                      ),
                      trailing: Icon(
                        Icons.arrow_forward_ios_outlined,
                        size: 20,
                        color: DTColor.textFieldHintColor,
                      ),
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
