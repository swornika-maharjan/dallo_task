import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutterproject/medicalbook/component_wrapper.dart';
import 'package:flutterproject/theme/dt_color.dart';
import 'package:flutterproject/theme/dt_styles.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

class LaunchingSoonComponent extends StatelessWidget {
  const LaunchingSoonComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 500,
      width: 400,
      child: ListView.separated(
        shrinkWrap: true,
        separatorBuilder: (context, index) => SizedBox(height: 12),
        itemCount: 3,
        physics: NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: ComponentWrapper(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Row(
                children: [
                  CachedNetworkImage(
                    height: 130,
                    width: 92,
                    imageUrl:
                        'https://heritagebooks.com.np/wp-content/uploads/2025/02/Astanga-Hridayam.jpg',
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ComponentWrapper(
                          backgroundColor: DTColor.progressIndicatorGreen,
                          padding: EdgeInsets.symmetric(vertical: 3),
                          width: 45,
                          radius: 4,
                          child: Center(
                            child: Text(
                              '8% OFF',
                              style: header8.copyWith(
                                fontSize: 10,
                                fontWeight: FontWeight.w600,
                                color: DTColor.white,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          'Loksewa Aayog Pharma idol for Pharmacy Officers',
                          style: header6.copyWith(
                            fontWeight: FontWeight.w700,
                            color: DTColor.darkbluishgray,
                          ),
                        ),
                        SizedBox(height: 2),
                        Row(
                          children: [
                            Text(
                              'Nrs. 1500.00 ',
                              style: header6.copyWith(
                                fontWeight: FontWeight.w700,
                                color: DTColor.deeproyalblue,
                              ),
                            ),
                            SizedBox(width: 5),
                            Text(
                              'Nrs. 2,720.00 ',
                              style: header8.copyWith(
                                color: DTColor.assetGrey,
                                decoration: TextDecoration.lineThrough,
                                decorationThickness: 1.2,
                                decorationColor: DTColor.assetGrey,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 5),
                        Row(
                          children: [
                            Text(
                              'Booking Limit: 20',
                              style: header8.copyWith(
                                color: DTColor.darkbluishgray,
                              ),
                            ),
                            SizedBox(width: 90),
                            Text(
                              '10 left',
                              style: header8.copyWith(
                                color: DTColor.textFieldHintColor,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 4),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.8,
                          child: StepProgressIndicator(
                            totalSteps: 20,
                            currentStep: 10,
                            size: 6,
                            padding: 0,
                            selectedColor: Colors.yellow,
                            unselectedColor: Colors.cyan,
                            roundedEdges: Radius.circular(10),
                            selectedGradientColor: LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                              colors: [
                                DTColor.progressIndicatorGreen,
                                DTColor.progressIndicatorGreen,
                              ],
                            ),
                            unselectedGradientColor: LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                              colors: [DTColor.borderGrey, DTColor.borderGrey],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
