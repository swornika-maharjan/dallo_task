import 'package:flutter/material.dart';
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
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(70),
        child: AppBar(
          backgroundColor: DTColor.white,
          toolbarHeight: 70,
          title: Text(
            'FAQs',
            style: header4.copyWith(
              fontWeight: FontWeight.w700,
              color: DTColor.academyBlue,
            ),
          ),
        ),
      ),

      body: Container(
        height: 280,
        width: 420,
        decoration: BoxDecoration(
          color: DTColor.white,
          border: Border.symmetric(
            horizontal: BorderSide(color: DTColor.borderGrey, width: 1),
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
                style: header7.copyWith(color: DTColor.assetGrey),
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
                        color: DTColor.white,
                        border: Border.symmetric(
                          horizontal: BorderSide(
                            color: DTColor.borderLite,
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}
