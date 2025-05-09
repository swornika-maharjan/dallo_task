import 'package:flutter/material.dart';
import 'package:flutterproject/medicalbook/component_wrapper.dart';
import 'package:flutterproject/medicalbook/controller/faqs_controller.dart';
import 'package:flutterproject/medicalbook/screens/order_issues_screen.dart';
import 'package:flutterproject/theme/dt_color.dart';
import 'package:flutterproject/theme/dt_styles.dart';
import 'package:get/get.dart';

class FaqsScreen extends StatelessWidget {
  FaqsScreen({super.key});
  final FaqsController controller = Get.put(FaqsController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: DTColor.white,

        title: Text(
          'FAQs',
          style: header4.copyWith(
            fontWeight: FontWeight.w700,
            color: DTColor.academyBlue,
          ),
        ),
      ),

      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(15),
            child: Text(
              'FAQ Categories',
              style: header7.copyWith(color: DTColor.assetGrey),
            ),
          ),

          Expanded(
            child: ListView.builder(
              itemCount: controller.faqCategories.length,
              itemBuilder: (context, index) {
                return ComponentWrapper(
                  padding: EdgeInsets.symmetric(horizontal: 5, vertical: 4),
                  borderColor: DTColor.platinum,
                  child: GestureDetector(
                    onTap: () {
                      Get.to(() => OrderIssuesScreen());
                    },
                    child: ListTile(
                      leading: Text(
                        '${controller.faqCategories[index]}',
                        style: header6.copyWith(color: DTColor.darkbluishgray),
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
          ),
        ],
      ),
    );
  }
}
