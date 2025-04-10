import 'package:flutter/material.dart';
import 'package:flutterproject/medicalbook/controller/all_categories_controller.dart';
import 'package:flutterproject/medicalbook/screens/our_publication_screen.dart';
import 'package:flutterproject/theme/task_theme.dart';
import 'package:get/get.dart';

class AllCategoriesScreen extends StatelessWidget {
  AllCategoriesScreen({super.key});
  final AllCategoriesController controller = Get.put(AllCategoriesController());

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(50),
          child: AppBar(
            backgroundColor: AppColors.dentbox,
            title: Text(
              'All Categories',
              style: TextStyle(
                fontSize: 16,
                color: AppColors.medicalbook,
                fontWeight: FontWeight.w700,
              ),
            ),

            actions: [
              Padding(
                padding: const EdgeInsets.only(right: 20.0),
                child: Image.asset(
                  'assets/images/search.png',
                  height: 24,
                  width: 24,
                ),
              ),
            ],
          ),
        ),
        body: Column(
          children: [
            Container(
              height: 60,

              decoration: BoxDecoration(
                color: AppColors.dentbox,
                border: Border.all(color: AppColors.issueborder, width: 2),
              ),
              child: TabBar(
                tabAlignment: TabAlignment.start,
                padding: EdgeInsets.only(top: 10),
                isScrollable: true,
                labelStyle: TextStyle(
                  color: AppColors.viewall,
                  fontSize: 13,
                  fontWeight: FontWeight.w600,
                ),
                indicatorColor: AppColors.viewall,
                unselectedLabelStyle: TextStyle(
                  color: AppColors.beginner,
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                ),

                tabs: [Tab(text: 'Books'), Tab(text: 'Equipment')],
              ),
            ),

            Expanded(
              child: TabBarView(
                children: [
                  ListView.separated(
                    separatorBuilder: (context, index) => SizedBox(),
                    itemCount: controller.categoriesList.length,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {
                          Get.to(() => OurPublicationScreen());
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border(
                              bottom: BorderSide(color: Colors.grey.shade300),
                            ),
                          ),
                          child: ListTile(
                            title: Text(
                              '${controller.categoriesList[index]}',
                              style: TextStyle(
                                fontSize: 13,
                                color: AppColors.categoriesList,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            trailing: Icon(
                              Icons.arrow_forward_ios_outlined,
                              size: 20,
                              color: AppColors.categoriesarrow,
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                  ListView.separated(
                    separatorBuilder: (context, index) => SizedBox(),
                    itemCount: controller.categoriesList.length,
                    itemBuilder: (context, index) {
                      return Container(
                        decoration: BoxDecoration(
                          border: Border(
                            bottom: BorderSide(color: Colors.grey.shade300),
                          ),
                        ),
                        child: GestureDetector(
                          onTap: () {
                            Get.to(() => OurPublicationScreen());
                          },
                          child: ListTile(
                            title: Text(
                              '${controller.categoriesList[index]}',
                              style: TextStyle(
                                fontSize: 13,
                                color: AppColors.categoriesList,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            trailing: Icon(
                              Icons.arrow_forward_ios_outlined,
                              size: 20,
                              color: Colors.grey,
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
