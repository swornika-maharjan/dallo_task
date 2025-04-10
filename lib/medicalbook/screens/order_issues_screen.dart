import 'package:flutter/material.dart';
import 'package:flutterproject/medicalbook/controller/order_issues_controller.dart';
import 'package:flutterproject/theme/task_theme.dart';
import 'package:get/get.dart';

class OrderIssuesScreen extends StatelessWidget {
  OrderIssuesScreen({super.key});
  final OrderIssuesController controller = Get.put(OrderIssuesController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(70),
        child: AppBar(
          backgroundColor: AppColors.dentbox,
          toolbarHeight: 70,
          title: Text(
            'Order Issues (34)',
            style: TextStyle(
              color: AppColors.medicalbook,
              fontSize: 16,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
      ),
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(color: AppColors.barline.withOpacity(0.3)),
        child: Obx(
          () => ListView.builder(
            itemCount: controller.issuesList.length,
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding: const EdgeInsets.all(5),
                child: Container(
                  decoration: BoxDecoration(
                    color: AppColors.dentbox,
                    // border: Border.symmetric(
                    //   horizontal: BorderSide(
                    //     color: AppColors.issueborder,
                    //     width: 1,
                    //   ),
                    // ),
                  ),
                  child: ExpansionTile(
                    title: Text(
                      '${controller.issuesList[index]['question']}',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: AppColors.featuredescrip,
                      ),
                    ),
                    children: [
                      Container(
                        height: 160,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: AppColors.issueborder,
                            width: 10,
                          ),
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(20),
                          child: Text(
                            '${controller.issuesList[index]['answer']}',
                            style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.w400,
                              color: AppColors.description,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
