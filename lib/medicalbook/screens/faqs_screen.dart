import 'package:flutter/material.dart';
import 'package:flutterproject/medicalbook/controller/faqs_controller.dart';
import 'package:flutterproject/medicalbook/screens/order_issues_screen.dart';
import 'package:flutterproject/theme/task_theme.dart';
import 'package:get/get.dart';

class FaqsScreen extends StatelessWidget {
  FaqsScreen({super.key});
  final FaqsController controller = Get.put(FaqsController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(70),
        child: AppBar(
          backgroundColor: AppColors.dentbox,
          toolbarHeight: 70,
          title: Text(
            'FAQs',
            style: TextStyle(
              color: AppColors.medicalbook,
              fontSize: 16,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
      ),
      body: Container(
        height: 280,
        width: 420,
        decoration: BoxDecoration(
          color: AppColors.dentbox,
          border: Border.symmetric(
            horizontal: BorderSide(color: AppColors.beginner, width: 0.1),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 10),
              Text(
                'FAQ Categories',
                style: TextStyle(
                  color: AppColors.beginner,
                  fontWeight: FontWeight.w500,
                  fontSize: 12,
                ),
              ),
              SizedBox(height: 10),
              SizedBox(
                height: 210,
                width: 420,
                child: ListView.builder(
                  itemCount: controller.faqCategories.length,
                  itemBuilder: (context, index) {
                    return Container(
                      height: 57,
                      width: 328,
                      decoration: BoxDecoration(
                        color: AppColors.dentbox,
                        border: Border.symmetric(
                          horizontal: BorderSide(
                            color: AppColors.border,
                            width: 1,
                          ),
                        ),
                      ),
                      child: GestureDetector(
                        onTap: () {
                          Get.to(() => OrderIssuesScreen());
                        },
                        child: ListTile(
                          leading: Text(
                            '${controller.faqCategories[index]}',
                            style: TextStyle(
                              color: AppColors.featuredescrip,
                              fontSize: 13,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          trailing: Icon(
                            Icons.arrow_forward_ios_outlined,
                            size: 20,
                            color: AppColors.dropdownbutton,
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
