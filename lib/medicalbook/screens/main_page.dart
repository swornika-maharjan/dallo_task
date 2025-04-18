import 'package:flutter/material.dart';
import 'package:flutterproject/medicalbook/component/appbardrawer_component.dart';
import 'package:flutterproject/medicalbook/component/book_bundles_component.dart';
import 'package:flutterproject/medicalbook/controller/bottom_navigation_controller.dart';
import 'package:flutterproject/medicalbook/controller/side_bar_controller.dart';
import 'package:flutterproject/theme/dt_color.dart';
import 'package:flutterproject/theme/dt_styles.dart';
import 'package:get/get.dart';

class MedicalBookScreen extends StatefulWidget {
  const MedicalBookScreen({super.key});

  @override
  State<MedicalBookScreen> createState() => _MedicalBookScreenState();
}

class _MedicalBookScreenState extends State<MedicalBookScreen> {
  final BottomNavigationController controller = Get.put(
    BottomNavigationController(),
  );
  final SideBarController barController = Get.put(SideBarController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Column(
          children: [
            AppBar(
              actionsPadding: EdgeInsets.only(right: 15),
              toolbarHeight: 70,
              leadingWidth: 100,
              leading: Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Image.asset('assets/samiksha/samiksha.png'),
              ),

              actions: [
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Icon(Icons.close_outlined),
                ),
              ],
            ),

            SizedBox(
              height: 300,
              child: ListView.builder(
                itemCount: 4,
                itemBuilder: (context, index) {
                  return SizedBox(
                    child: ListTile(
                      title: Text(
                        '${barController.sideBar[index]}',
                        style: header5.copyWith(
                          fontWeight: FontWeight.w400,
                          color: DTColor.darkbluishgray,
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
      appBar: AppbarComponents(),

      body: SingleChildScrollView(child: BookBundlesComponent()),

      bottomNavigationBar: SizedBox(
        height: 67,
        child: Obx(
          () => BottomNavigationBar(
            currentIndex: controller.selectedIndex.value,
            onTap: (value) {
              controller.getselectedIndex(value);
            },
            selectedItemColor: DTColor.orange,
            unselectedItemColor: DTColor.darkbluishgray,
            type: BottomNavigationBarType.fixed,
            items: [
              BottomNavigationBarItem(
                icon: Image.asset(
                  'assets/images/home.png',
                  height: 20,
                  width: 20,
                  color:
                      controller.selectedIndex.value == 0
                          ? DTColor.orange
                          : DTColor.darkbluishgray,
                ),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Image.asset(
                  'assets/images/search.png',
                  height: 20,
                  width: 20,
                  color:
                      controller.selectedIndex.value == 1
                          ? DTColor.orange
                          : DTColor.darkbluishgray,
                ),
                label: 'Search',
              ),
              BottomNavigationBarItem(
                icon: Image.asset(
                  'assets/images/categories.png',
                  height: 20,
                  width: 20,
                  color:
                      controller.selectedIndex.value == 2
                          ? DTColor.orange
                          : DTColor.darkbluishgray,
                ),
                label: 'Categories',
              ),
              BottomNavigationBarItem(
                icon: Image.asset(
                  'assets/images/cart.png',
                  width: 20,
                  height: 20,
                  color:
                      controller.selectedIndex.value == 3
                          ? DTColor.orange
                          : DTColor.darkbluishgray,
                ),
                label: 'cart',
              ),
              BottomNavigationBarItem(
                icon: Image.asset(
                  'assets/images/accounts.png',
                  width: 20,
                  height: 20,
                  color:
                      controller.selectedIndex.value == 4
                          ? DTColor.orange
                          : DTColor.darkbluishgray,
                ),
                label: 'Account',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
