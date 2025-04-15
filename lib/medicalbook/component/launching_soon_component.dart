import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutterproject/theme/task_theme.dart';

class LaunchingSoonComponent extends StatelessWidget {
  const LaunchingSoonComponent({super.key, required this.imagepath});
  final String imagepath;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 570,
      width: 400,
      child: ListView.separated(
        separatorBuilder: (context, index) => SizedBox(),
        itemCount: 3,
        physics: NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(10),
            child: Container(
              height: 160,
              width: 380,
              decoration: BoxDecoration(
                color: AppColors.dentbox,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: AppColors.shadow,
                    blurRadius: 10,
                    offset: Offset(0, 2),
                  ),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Row(
                  children: [
                    CachedNetworkImage(height: 115, width: 92, imageUrl: imagepath,),
                    SizedBox(width: 10),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 20,
                            width: 50,
                            decoration: BoxDecoration(
                              color: AppColors.offer,
                              borderRadius: BorderRadius.circular(4),
                            ),
                            child: Center(
                              child: Text(
                                '8% OFF',
                                style: TextStyle(
                                  color: AppColors.dentbox,
                                  fontSize: 10,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 10),
                          Text(
                            'Loksewa Aayog Pharma idol for Pharmacy Officers',
                            style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.w700,
                              color: AppColors.featuredescrip,
                            ),
                          ),
                          SizedBox(height: 10),
                          Row(
                            children: [
                              Text(
                                'Nrs. 1500.00 ',
                                style: TextStyle(
                                  color: AppColors.price,
                                  fontSize: 13,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              SizedBox(width: 5),
                              Text(
                                'Nrs. 2,720.00 ',
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
                          SizedBox(height: 5),
                          Row(
                            children: [
                              Text(
                                'Booking Limit: 20',
                                style: TextStyle(
                                  color: AppColors.featuredescrip,
                                  fontSize: 11,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              SizedBox(width: 90),
                              Text(
                                '10 left',
                                style: TextStyle(
                                  color: AppColors.dropdownbutton,
                                  fontSize: 11,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 4),
                          Container(
                            height: 7,
                            width: 230,
                            decoration: BoxDecoration(
                              color: AppColors.allbutton,
                            ),
                            child: FractionallySizedBox(
                              alignment: Alignment.centerLeft,
                              widthFactor: 0.3,
                              child: Container(
                                decoration: BoxDecoration(
                                  color: AppColors.offer,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
