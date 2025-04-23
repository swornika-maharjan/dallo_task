import 'package:flutter/material.dart';
import 'package:flutterproject/medicalbook/component/appbardrawer_component.dart';
import 'package:flutterproject/medicalbook/component/book_bundles_component.dart';
import 'package:flutterproject/medicalbook/controller/bottom_navigation_controller.dart';
import 'package:flutterproject/medicalbook/controller/side_bar_controller.dart';
import 'package:flutterproject/medicalbook/screens/accounts_page.dart';
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

            ListView.builder(
              shrinkWrap: true,
              itemCount: 4,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(
                    '${barController.sideBar[index]}',
                    style: header5.copyWith(
                      fontWeight: FontWeight.w400,
                      color: DTColor.darkbluishgray,
                    ),
                  ),
                );
              },
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
              switch (value) {
                case 0:
                  Get.to(() => const MedicalBookScreen());
                  break;
                case 1:
                  // TODO: Navigate to Search Page
                  break;
                case 2:
                  // TODO: Navigate to Categories Page
                  break;
                case 3:
                  // TODO: Navigate to Cart Page
                  break;
                case 4:
                  Get.to(() => AccountsPage());
                  break;
              }
            },
            selectedItemColor: DTColor.orange,
            unselectedItemColor: DTColor.darkbluishgray,
            type: BottomNavigationBarType.fixed,
            items: [
              BottomNavigationBarItem(
                icon: ImageIcon(AssetImage('assets/images/home.png')),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: ImageIcon(AssetImage('assets/images/search.png')),
                label: 'Search',
              ),
              BottomNavigationBarItem(
                icon: ImageIcon(AssetImage('assets/images/categories.png')),
                label: 'Categories',
              ),
              BottomNavigationBarItem(
                icon: ImageIcon(AssetImage('assets/images/cart.png')),
                label: 'Cart',
              ),
              BottomNavigationBarItem(
                icon: ImageIcon(AssetImage('assets/images/accounts.png')),
                label: 'Account',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
