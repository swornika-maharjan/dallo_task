import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutterproject/medicalbook/component_wrapper.dart';
import 'package:flutterproject/theme/dt_color.dart';
import 'package:flutterproject/theme/dt_styles.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

class LaunchingSoonScreen extends StatelessWidget {
  const LaunchingSoonScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actionsPadding: EdgeInsets.only(right: 15),
        backgroundColor: DTColor.white,
        title: Text(
          'Launching soon!',
          style: header4.copyWith(color: DTColor.academyBlue),
        ),
        actions: [
          Image.asset('assets/images/search.png', height: 24, width: 24),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ListView.separated(
              separatorBuilder: (context, index) => SizedBox(height: 15),
              scrollDirection: Axis.vertical,
              itemCount: 6,
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              padding: const EdgeInsets.symmetric(horizontal: 20),
              itemBuilder:
                  (context, index) => ComponentWrapper(
                    padding: const EdgeInsets.all(10),
                    child: Row(
                      children: [
                        CachedNetworkImage(
                          height: 115,
                          width: 92,
                          imageUrl:
                              'https://heritagebooks.com.np/wp-content/uploads/2025/02/Astanga-Hridayam.jpg',
                        ),
                        SizedBox(width: 10),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Container(
                                    height: 20,
                                    width: 40,
                                    decoration: BoxDecoration(
                                      color: DTColor.lightRed,
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                    child: Center(
                                      child: Text(
                                        'SALE',
                                        style: header8.copyWith(
                                          color: DTColor.white,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 5),
                                  Container(
                                    height: 20,
                                    width: 50,
                                    decoration: BoxDecoration(
                                      color: DTColor.green,
                                      borderRadius: BorderRadius.circular(4),
                                    ),
                                    child: Center(
                                      child: Text(
                                        '8% OFF',
                                        style: header8.copyWith(
                                          color: DTColor.white,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 10),
                              Text(
                                'Loksewa Aayog Pharma idol for Pharmacy Officers',
                                style: header5.copyWith(
                                  color: DTColor.academyBlue,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              SizedBox(height: 10),
                              Row(
                                children: [
                                  Text(
                                    'Nrs. 1500.00 ',
                                    style: header6.copyWith(
                                      color: DTColor.blueDark,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                  SizedBox(width: 5),
                                  Text(
                                    'Nrs. 2,720.00 ',
                                    style: header8.copyWith(
                                      color: DTColor.assetGrey,
                                      decoration: TextDecoration.lineThrough,
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
                                      color: DTColor.blueDark,
                                    ),
                                  ),
                                  SizedBox(width: 90),
                                  Text(
                                    '10 left',
                                    style: header8.copyWith(
                                      color: DTColor.assetGrey,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 4),
                              SizedBox(
                                width: MediaQuery.of(context).size.width * 0.8,
                                child: StepProgressIndicator(
                                  totalSteps: 20,
                                  currentStep: 15,
                                  size: 6,
                                  padding: 0,
                                  selectedColor: Colors.yellow,
                                  unselectedColor: Colors.cyan,
                                  roundedEdges: Radius.circular(10),
                                  selectedGradientColor: LinearGradient(
                                    begin: Alignment.topLeft,
                                    end: Alignment.bottomRight,
                                    colors: [DTColor.green, DTColor.green],
                                  ),
                                  unselectedGradientColor: LinearGradient(
                                    begin: Alignment.topLeft,
                                    end: Alignment.bottomRight,
                                    colors: [
                                      DTColor.borderGrey,
                                      DTColor.borderGrey,
                                    ],
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
          ],
        ),
      ),
    );
  }
}
