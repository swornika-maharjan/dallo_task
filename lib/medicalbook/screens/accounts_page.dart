import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutterproject/medicalbook/component/amore_option_component.dart';
import 'package:flutterproject/medicalbook/component/company_updates_component.dart';
import 'package:flutterproject/medicalbook/component/refer_component.dart';
import 'package:flutterproject/medicalbook/component_wrapper.dart';
import 'package:flutterproject/medicalbook/controller/bottom_navigation_controller.dart';
import 'package:flutterproject/medicalbook/controller/option_controller.dart';
import 'package:flutterproject/medicalbook/screens/edit_profile_screen.dart';
import 'package:flutterproject/medicalbook/screens/faqs_screen.dart';
import 'package:flutterproject/medicalbook/screens/main_page.dart';
import 'package:flutterproject/theme/dt_color.dart';
import 'package:flutterproject/theme/dt_styles.dart';
import 'package:get/get.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

class AccountsPage extends StatelessWidget {
  AccountsPage({super.key});
  final BottomNavigationController controller = Get.put(
    BottomNavigationController(),
  );
  final OptionController optioncontroller = Get.put(OptionController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actionsPadding: EdgeInsets.only(right: 15),
        backgroundColor: DTColor.white,
        title: Text(
          'Account',
          style: header4.copyWith(
            fontWeight: FontWeight.w700,
            color: DTColor.academyBlue,
          ),
        ),
        actions: [
          Image.asset('assets/images/notification.png', height: 24, width: 24),
          SizedBox(width: 10),
          Image.asset('assets/images/heart.png', height: 24, width: 24),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(15),
              child: ComponentWrapper(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        CachedNetworkImage(
                          height: 91,
                          width: 91,
                          imageUrl:
                              'https://c8.alamy.com/comp/W53G0X/david-von-cologne-pineapple-plant-painting-oil-on-canvas-height-112-cm-44-width-91-cm-358-W53G0X.jpg',
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Welcome!',
                                style: header7.copyWith(
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              Text(
                                'Robert Alexandar',
                                style: header5.copyWith(
                                  fontWeight: FontWeight.w700,
                                  color: DTColor.academyBlue,
                                ),
                              ),
                              GestureDetector(
                                onTap: () => Get.to(() => EditProfileScreen()),
                                child: ComponentWrapper(
                                  backgroundColor: DTColor.orange,
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 15,
                                    vertical: 10,
                                  ),
                                  child: Text(
                                    'Edit Profile',
                                    style: header7.copyWith(
                                      fontWeight: FontWeight.w600,
                                      color: DTColor.white,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 12),
                    ComponentWrapper(
                      padding: EdgeInsets.symmetric(
                        horizontal: 10,
                        vertical: 15,
                      ),
                      width: 380,
                      backgroundColor: DTColor.aliceBlue,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Your profile is incomplete',
                            style: header7.copyWith(
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          StepProgressIndicator(
                            totalSteps: 30,
                            currentStep: 15,
                            size: 6,
                            padding: 0,
                            unselectedColor: DTColor.borderGrey,
                            selectedColor: DTColor.green,
                            roundedEdges: Radius.circular(10),
                          ),
                          Text(
                            '40% completed',
                            style: header8.copyWith(color: DTColor.assetGrey),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              child: ComponentWrapper(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                backgroundColor: DTColor.orangeLite,
                child: Column(
                  children: [
                    Row(
                      children: [
                        const SizedBox(width: 5),
                        Image.asset(
                          'assets/images/diamond.png',
                          width: 20,
                          height: 20,
                        ),
                        const SizedBox(width: 5),
                        Text(
                          'Become a member',
                          style: header8.copyWith(
                            fontWeight: FontWeight.w400,
                            color: DTColor.black,
                          ),
                        ),

                        const SizedBox(width: 5),
                        Icon(
                          Icons.arrow_forward_ios,
                          size: 12,
                          color: DTColor.black,
                        ),
                      ],
                    ),
                    Text(
                      'Our members enjoys promotional discounts, offers and many more.See membership benefits',
                      style: header8.copyWith(),
                    ),
                  ],
                ),
              ),
            ),

            ReferComponent(),

            SizedBox(height: 10),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: GridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: 12,
                mainAxisSpacing: 12,
                childAspectRatio: 5 / 2,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                children:
                    optioncontroller.accountsoption.map((option) {
                      final title = option['title']!;
                      final iconPath = option['icon']!;

                      return ComponentWrapper(
                        padding: EdgeInsets.symmetric(
                          horizontal: 16,
                          vertical: 10,
                        ),

                        child: Row(
                          children: [
                            SvgPicture.asset(iconPath),
                            const SizedBox(width: 10),
                            Text(
                              title,
                              style: header5.copyWith(
                                fontWeight: FontWeight.w600,
                                color: DTColor.bookTitleBlack,
                              ),
                            ),
                          ],
                        ),
                      );
                    }).toList(),
              ),
            ),
            SizedBox(height: 15),

            SizedBox(height: 305, child: AccountsMoreOption()),

            SizedBox(height: 15),

            ComponentWrapper(
              padding: EdgeInsets.symmetric(vertical: 0, horizontal: 0),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 16, top: 10),
                    child: Text(
                      'Help and Support',
                      style: header7.copyWith(color: DTColor.assetGrey),
                    ),
                  ),
                  SizedBox(height: 15),
                  ListView.builder(
                    shrinkWrap: true,
                    itemCount: 2,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () => Get.to(() => FaqsScreen()),
                        child: ComponentWrapper(
                          padding: EdgeInsets.symmetric(
                            horizontal: 16,
                            vertical: 15,
                          ),
                          borderColor: DTColor.platinum,
                          width: 380,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  SvgPicture.asset('assets/samiksha/faqs.svg'),
                                  SizedBox(width: 5),
                                  Text(
                                    'FAQs',
                                    style: header6.copyWith(
                                      color: DTColor.darkbluishgray,
                                    ),
                                  ),
                                ],
                              ),
                              Icon(
                                Icons.arrow_forward_ios_outlined,
                                size: 16,
                                color: DTColor.textFieldHintColor,
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),

            SizedBox(height: 10),

            SizedBox(height: 292, child: DTListTileComponent()),
            SizedBox(height: 10),
            SizedBox(height: 292, child: DTListTileComponent()),
            SizedBox(height: 10),

            ComponentWrapper(
              padding: EdgeInsets.symmetric(vertical: 15, horizontal: 16),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'More',
                    style: header7.copyWith(color: DTColor.assetGrey),
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Text(
                            'Rate us',
                            style: header6.copyWith(
                              color: DTColor.darkbluishgray,
                            ),
                          ),
                        ],
                      ),
                      Icon(Icons.arrow_forward_ios_outlined, size: 16),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            ComponentWrapper(
              width: 380,
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 13),
              backgroundColor: DTColor.lightRed.withOpacity(0.1),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset('assets/samiksha/logout.svg'),
                  SizedBox(width: 5),
                  Text(
                    'Logout',
                    style: header5.copyWith(
                      color: DTColor.red,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 15),
          ],
        ),
      ),
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
                icon: GestureDetector(
                  onTap: () => Get.to(() => MedicalBookScreen()),
                  child: Image.asset(
                    'assets/images/home.png',
                    height: 20,
                    width: 20,
                    color:
                        controller.selectedIndex.value == 0
                            ? DTColor.orange
                            : DTColor.darkbluishgray,
                  ),
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
                icon: GestureDetector(
                  onTap: () => Get.to(AccountsPage()),
                  child: Image.asset(
                    'assets/images/accounts.png',
                    width: 20,
                    height: 20,
                    color:
                        controller.selectedIndex.value == 4
                            ? DTColor.orange
                            : DTColor.darkbluishgray,
                  ),
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
