import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutterproject/task/theme/task_theme.dart';
import 'package:flutterproject/task2/components/linechart/line_chart.dart';
import 'package:flutterproject/task2/components/linechart/line_chart_2.dart';
import 'package:flutterproject/task2/controller/topic_wise_controller.dart';
import 'package:get/get.dart';

class TopicwiseContainer extends StatelessWidget {
  TopicwiseContainer({super.key, this.onChanged});
  final void Function(String?)? onChanged;

  final TopicWiseController controller = Get.put(TopicWiseController());

  @override
  Widget build(BuildContext context) {
    final day = controller.topicWisecontainer[0]['day'];
    final week = controller.topicWisecontainer[0]['week'];
    final month = controller.topicWisecontainer[0]['month'];
    final year = controller.topicWisecontainer[0]['year'];
    return Container(
      height: 850,
      width: 400,
      decoration: BoxDecoration(color: AppColors.dentbox),
      child: ListView.separated(
        itemCount: controller.topicWisecontainer.length,
        separatorBuilder:
            (context, index) => SizedBox(
              height: 20,
              child: Container(color: AppColors.primary.withOpacity(0.1)),
            ),
        itemBuilder: (context, index) {
          final title =
              controller.topicWisecontainer[index]['title'] ==
              'Topic wise test';
          return SizedBox(
            child: Column(
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: Text(
                        '${controller.topicWisecontainer[index]['title']}',
                        style: TextStyle(
                          color: AppColors.description,
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                    ),
                    SizedBox(width: 120),
                    Obx(
                      () => DropdownButton(
                        items: [
                          DropdownMenuItem(value: 'All', child: Text('All')),
                          DropdownMenuItem(value: '1D', child: Text('1 Day')),
                          DropdownMenuItem(value: '1W', child: Text('1 Week')),
                          DropdownMenuItem(value: '1M', child: Text('1 Month')),
                          DropdownMenuItem(value: '1Y', child: Text('1 Year')),
                        ],
                        menuMaxHeight: 200,
                        style: TextStyle(color: AppColors.dental, fontSize: 12),

                        value:
                            title
                                ? controller.dropDownitems
                                : controller.selectedItems,

                        onChanged: (value) {
                          title
                              ? controller.selectItems(value!)
                              : controller.onItemsSelected(value!);
                        },
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    SizedBox(width: 200),
                    Container(
                      width: 160,
                      height: 30,
                      decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        color: AppColors.dentbox,
                        // border: Border.all(color: AppColors.beginner),
                      ),

                      child: Obx(
                        () => Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children:
                              [day, week, month, year].map((label) {
                                final isselected =
                                    title
                                        ? controller.selectedRange == label
                                        : controller.range == label;
                                return GestureDetector(
                                  onTap: () {
                                    title
                                        ? controller.selectRange(label)
                                        : controller.onRangeSelected(label);
                                  },

                                  child: Container(
                                    height: 30,
                                    width: 38,
                                    decoration: BoxDecoration(
                                      color:
                                          isselected
                                              ? AppColors.primary
                                              : AppColors.dentbox,
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                    child: Center(
                                      child: Text(
                                        label,
                                        style: TextStyle(
                                          color:
                                              isselected
                                                  ? AppColors.dentbox
                                                  : AppColors.beginner,
                                        ),
                                      ),
                                    ),
                                  ),
                                );
                              }).toList(),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),

                //linechart
                SizedBox(
                  height: 250,
                  width: 340,
                  child:
                      title
                          ? LineChartScreen(LineChartData())
                          : LineChartScreen2(LineChartData()),
                ),
                SizedBox(height: 20),
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 20),
                      height: 20,
                      width: 20,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: title ? AppColors.dentbox : AppColors.primary,
                      ),
                    ),
                    SizedBox(width: 5),
                    Text(
                      '${controller.topicWisecontainer[index]['percentage']}',
                      style: TextStyle(color: AppColors.beginner),
                    ),
                    SizedBox(width: 30),
                    Container(
                      margin: EdgeInsets.only(left: 20),
                      height: 20,
                      width: 20,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: title ? AppColors.dentbox : AppColors.dental,
                      ),
                    ),
                    SizedBox(width: 5),
                    Text(
                      '${controller.topicWisecontainer[index]['top']}',
                      style: TextStyle(color: AppColors.beginner),
                    ),
                  ],
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
