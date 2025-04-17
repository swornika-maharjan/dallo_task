import 'package:flutter/material.dart';
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
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(70),
        child: AppBar(
          centerTitle: false,
          backgroundColor: DTColor.white,
          toolbarHeight: 70,
          title: Text(
            'Order Issues (34)',
            style: header4.copyWith(
              color: DTColor.academyBlue,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Obx(
          () => ListView.builder(
            shrinkWrap: true,
            itemCount: controller.issuesList.length,
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 5,
                ),
                child: Container(
                  decoration: BoxDecoration(color: DTColor.white),
                  child: ExpansionTile(
                    iconColor: DTColor.academyBlue,
                    shape: Border.all(color: Colors.transparent),
                    collapsedShape: Border.all(color: Colors.transparent),

                    title: Text(
                      '${controller.issuesList[index]['question']}',
                      style: header5.copyWith(
                        fontWeight: FontWeight.w600,
                        color: DTColor.academyBlue,
                      ),
                    ),
                    children: [
                      Container(
                        height: 160,
                        decoration: BoxDecoration(
                          border: Border.symmetric(
                            horizontal: BorderSide(
                              color: DTColor.borderLite,
                              width: 3,
                            ),
                          ),
                        ),
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: 10,
                            vertical: 15,
                          ),
                          child: Text(
                            '${controller.issuesList[index]['answer']}',
                            style: header6.copyWith(
                              fontWeight: FontWeight.w400,
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
