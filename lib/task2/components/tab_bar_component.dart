import 'package:flutter/material.dart';
import 'package:flutterproject/task/theme/task_theme.dart';
import 'package:flutterproject/task2/components/analytics_page_component.dart';
import 'package:flutterproject/task2/controller/tab_bar_controller.dart';
import 'package:get/get.dart';

class TabBarComponent extends StatefulWidget {
  const TabBarComponent({super.key});

  @override
  State<TabBarComponent> createState() => _TabBarComponentState();
}

class _TabBarComponentState extends State<TabBarComponent>
    with SingleTickerProviderStateMixin {
  final CustomTabController controller = Get.put(CustomTabController());

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Tab Bar
        Container(
          height: 105,
          color: AppColors.primary,
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 20),
                height: 27,
                width: 340,
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'My Accounts',
                    style: TextStyle(
                      color: AppColors.dentbox,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 10),
                child: TabBar(
                  controller: controller.tabController,
                  tabs: const [
                    Tab(text: "Profile"),
                    Tab(text: "Transactions"),
                    Tab(text: "Analytics"),
                    Tab(text: "Password Settings"),
                  ],
                  labelColor: AppColors.dentbox,
                  unselectedLabelColor: AppColors.dentbox.withOpacity(0.7),
                  indicatorColor: AppColors.dentbox,
                  indicatorSize: TabBarIndicatorSize.tab,
                ),
              ),
            ],
          ),
        ),

        // Tab Bar Views
        Expanded(
          child: TabBarView(
            controller: controller.tabController,
            children: [
              Center(child: Text("Profile page")),
              Center(child: Text('Transaction page')),
              AnalyticsComponent(),
              Center(child: Text('password settings page')),
            ],
          ),
        ),
      ],
    );
  }
}
