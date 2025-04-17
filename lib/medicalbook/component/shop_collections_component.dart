import 'package:flutter/material.dart';
import 'package:flutterproject/medicalbook/component/buttons_component.dart';
import 'package:flutterproject/medicalbook/component_wrapper.dart';
import 'package:flutterproject/medicalbook/screens/launching_soon_screen.dart';
import 'package:flutterproject/theme/dt_color.dart';
import 'package:flutterproject/theme/dt_styles.dart';
import 'package:flutterproject/theme/task_theme.dart';
import 'package:get/get.dart';

class ShopCollectionsComponent extends StatelessWidget {
  const ShopCollectionsComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Text(
              'Shop by collections',
              style: header4.copyWith(
                fontWeight: FontWeight.w700,
                color: DTColor.academyBlue,
              ),
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                ButtonsComponent(
                  text: 'Dental Science Specific',
                  imagepath: 'assets/images/whitecircle.png',
                ),
                ButtonsComponent(
                  text: 'Exclusive Books Hub-Usmle Exclusive',
                  imagepath: 'assets/images/whitecircle.png',
                ),
                ButtonsComponent(
                  text: 'Dental Science Specific',
                  imagepath: 'assets/images/whitecircle.png',
                ),
              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ComponentWrapper(
                  backgroundColor: DTColor.lightBlue,
                  child: Column(
                    children: [
                      SizedBox(height: 15),
                      Image.asset(
                        'assets/images/pharmaidol.png',
                        height: 73,
                        width: 93,
                      ),
                      SizedBox(height: 5),
                      Text(
                        'Book Bundles',
                        style: header5.copyWith(
                          fontWeight: FontWeight.w700,
                          color: DTColor.academyBlue,
                        ),
                      ),
                      SizedBox(height: 5),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Shop now',
                            style: header7.copyWith(
                              fontWeight: FontWeight.w700,
                              color: DTColor.orange,
                            ),
                          ),
                          SizedBox(width: 5),
                          Image.asset(
                            'assets/images/arrow.png',
                            height: 10,
                            width: 10,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),

                ComponentWrapper(
                  backgroundColor: DTColor.orangeLite,
                  child: Column(
                    children: [
                      Text(
                        'Medical Equipment',
                        style: header5.copyWith(
                          fontWeight: FontWeight.w700,
                          color: DTColor.academyBlue,
                        ),
                      ),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Shop now',
                            style: header7.copyWith(
                              fontWeight: FontWeight.w700,
                              color: DTColor.orange,
                            ),
                          ),
                          SizedBox(width: 5),
                          Image.asset(
                            'assets/images/arrow.png',
                            height: 10,
                            width: 10,
                          ),
                        ],
                      ),
                      SizedBox(height: 15),
                      Image.asset(
                        'assets/images/thermo.png',
                        height: 73,
                        width: 165,
                      ),
                      SizedBox(height: 5),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Launching soon!',
                style: header4.copyWith(
                  fontWeight: FontWeight.w700,
                  color: DTColor.academyBlue,
                ),
              ),

              GestureDetector(
                onTap: () {
                  Get.to(() => LaunchingSoonScreen());
                },
                child: Row(
                  children: [
                    Text(
                      'View all',
                      style: header7.copyWith(
                        fontWeight: FontWeight.w700,
                        color: DTColor.orange,
                      ),
                    ),

                    Icon(
                      Icons.arrow_forward_ios_outlined,
                      color: AppColors.viewall,
                      size: 16,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
