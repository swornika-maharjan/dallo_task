import 'package:flutter/material.dart';
import 'package:flutterproject/medicalbook/component/buttons_component.dart';
import 'package:flutterproject/medicalbook/component/equipment_component.dart';
import 'package:flutterproject/medicalbook/component/launching_soon_component.dart';
import 'package:flutterproject/medicalbook/screens/more_options_screen.dart';
import 'package:flutterproject/medicalbook/component/refer_component.dart';
import 'package:flutterproject/theme/task_theme.dart';

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
              style: TextStyle(
                fontSize: 16,
                color: AppColors.medicalbook,
                fontWeight: FontWeight.bold,
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
            padding: const EdgeInsets.all(15),
            child: Row(
              children: [
                Container(
                  height: 150,
                  width: 130,
                  decoration: BoxDecoration(
                    color: AppColors.pharma,
                    borderRadius: BorderRadius.circular(10),
                  ),
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
                        style: TextStyle(
                          color: AppColors.medicalbook,
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      SizedBox(height: 5),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Shop now',
                            style: TextStyle(
                              color: AppColors.viewall,
                              fontSize: 12,
                              fontWeight: FontWeight.w700,
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
                SizedBox(width: 20),
                Container(
                  height: 150,
                  width: 200,
                  decoration: BoxDecoration(
                    color: AppColors.equipment,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    children: [
                      SizedBox(height: 15),
                      Text(
                        'Medical Equipment',
                        style: TextStyle(
                          color: AppColors.medicalbook,
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                        ),
                      ),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Shop now',
                            style: TextStyle(
                              color: AppColors.viewall,
                              fontSize: 12,
                              fontWeight: FontWeight.w700,
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
            children: [
              Text(
                'Launching soon!',
                style: TextStyle(
                  color: AppColors.medicalbook,
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(width: 170),
              Text(
                'View all',
                style: TextStyle(color: AppColors.viewall, fontSize: 12),
              ),

              Icon(
                Icons.arrow_forward_ios_outlined,
                color: AppColors.viewall,
                size: 16,
              ),
            ],
          ),
          SizedBox(height: 10),
          LaunchingSoonComponent(imagepath: 'assets/images/launchpharma.png'),
          EquipmentComponent(),
          SizedBox(height: 20),
          ReferComponent(),
          SizedBox(height: 10),
          SizedBox(height: 200, width: 500, child: MoreOptionsScreen()),
          // CouponsComponent(),
        ],
      ),
    );
  }
}
