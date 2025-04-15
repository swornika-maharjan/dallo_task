import 'package:flutter/material.dart';
import 'package:flutterproject/medicalbook/screens/featured_screen.dart';
import 'package:flutterproject/theme/dt_color.dart';
import 'package:flutterproject/theme/dt_styles.dart';
import 'package:flutterproject/theme/task_theme.dart';
import 'package:get/get.dart';

class FeaturedComponent extends StatelessWidget {
  const FeaturedComponent({
    super.key,
    required this.text,
    required this.imagepath,

    this.hurryup,
    this.size,
  });
  final String text;
  final String imagepath;

  final Color? hurryup;
  final double? size;

  @override
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 376,
      width: 400,
      decoration: BoxDecoration(color: DTColor.white),
      padding: const EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Text(
                    text,
                    style: header4.copyWith(color: DTColor.academyBlue),
                  ),
                  const SizedBox(width: 5),
                  Image.asset(imagepath, height: 20, width: 20),
                ],
              ),
              GestureDetector(
                onTap: () {
                  Get.to(() => FeaturedScreen());
                },
                child: Row(
                  children: [
                    Text(
                      'View all',
                      style: header7.copyWith(color: DTColor.orange),
                    ),
                    const SizedBox(width: 4),
                    Icon(
                      Icons.arrow_forward_ios_outlined,
                      size: 16,
                      color: DTColor.orange,
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 10),
          SizedBox(
            height: 317,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 4,
              itemBuilder: (context, index) {
                return Container(
                  width: 165,
                  height: 320,
                  decoration: BoxDecoration(
                    color: AppColors.dentbox,
                    borderRadius: BorderRadius.circular(4),
                  ),

                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        'assets/images/loksewa.png',
                        width: 149,
                        height: 193,
                      ),
                      const SizedBox(height: 5),
                      Row(
                        children: [
                          Container(
                            height: 20,
                            width: 35,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(4),
                              color: AppColors.salebutton,
                            ),
                            child: Center(
                              child: Text(
                                'SALE',
                                style: TextStyle(
                                  color: AppColors.dentbox,
                                  fontSize: 10,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(width: 5),
                          Container(
                            height: 20,
                            width: 40,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(4),
                              color: AppColors.offer,
                            ),
                            child: Center(
                              child: Text(
                                '8% off',
                                style: TextStyle(
                                  color: AppColors.dentbox,
                                  fontSize: 10,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 5),
                      Text(
                        'Loksewa Aayog Pharma idol for Pharmacy Officers',
                        style: header6.copyWith(),
                      ),
                      // const SizedBox(height: 5),
                      Row(
                        children: [
                          Text(
                            'Nrs. 1500.00',
                            style: TextStyle(
                              color: AppColors.price,
                              fontSize: 12,
                            ),
                          ),
                          const SizedBox(width: 4),
                          Text(
                            'Nrs. 2,720.00',
                            style: TextStyle(
                              color: AppColors.beginner,
                              fontSize: 11,
                              decoration: TextDecoration.lineThrough,
                              decorationThickness: 1.2,
                              decorationColor: AppColors.beginner,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
