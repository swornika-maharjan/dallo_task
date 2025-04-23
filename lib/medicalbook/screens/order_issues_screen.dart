import 'package:flutter/material.dart';
import 'package:flutterproject/medicalbook/component_wrapper.dart';
import 'package:flutterproject/medicalbook/controller/order_issues_controller.dart';
import 'package:flutterproject/theme/dt_color.dart';
import 'package:flutterproject/theme/dt_styles.dart';
import 'package:get/get.dart';

class OrderIssuesScreen extends StatelessWidget {
  OrderIssuesScreen({super.key});
  final OrderIssuesController controller = Get.put(OrderIssuesController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        backgroundColor: DTColor.white,

        title: Text(
          'Order Issues (34)',
          style: header4.copyWith(
            color: DTColor.academyBlue,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        child: Obx(
          () => ListView.separated(
            separatorBuilder: (context, index) => SizedBox(height: 10),
            shrinkWrap: true,
            itemCount: controller.issuesList.length,
            itemBuilder: (BuildContext context, int index) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  GestureDetector(
                    onTap: () => controller.toggleExpansion(index),
                    child: ComponentWrapper(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 10,
                        vertical: 15,
                      ),
                      borderColor: DTColor.platinum,
                      width: 380,
                      child: Row(
                        children: [
                          Expanded(
                            child: Text(
                              controller.issuesList[index]['question']!,
                              style: header5.copyWith(
                                fontWeight: FontWeight.w600,
                                color: DTColor.academyBlue,
                              ),
                            ),
                          ),
                          Obx(
                            () => Icon(
                              controller.isExpandedList[index]
                                  ? Icons.keyboard_arrow_up_outlined
                                  : Icons.keyboard_arrow_down_outlined,
                              size: 24,
                              color: DTColor.blueDark,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  Obx(
                    () =>
                        controller.isExpandedList[index]
                            ? ComponentWrapper(
                              child: Text(
                                controller.issuesList[index]['answer']!,
                                style: header6.copyWith(
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            )
                            : const SizedBox(),
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
