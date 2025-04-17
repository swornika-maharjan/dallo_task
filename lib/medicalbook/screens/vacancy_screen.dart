import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutterproject/medicalbook/component_wrapper.dart';
import 'package:flutterproject/medicalbook/dt_divider.dart';
import 'package:flutterproject/theme/dt_color.dart';
import 'package:flutterproject/theme/dt_styles.dart';

class VacancyScreen extends StatelessWidget {
  const VacancyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: DTColor.booksBackground,
      appBar: AppBar(
        centerTitle: false,
        backgroundColor: DTColor.white,
        title: Text(
          'Vacancy',
          style: header4.copyWith(
            fontWeight: FontWeight.w700,
            color: DTColor.academyBlue,
          ),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 19, vertical: 15),
            child: ListView.separated(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return ComponentWrapper(
                  padding: EdgeInsets.all(15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              SvgPicture.asset('assets/samiksha/calendar.svg'),
                              SizedBox(width: 5),
                              Text(
                                '11 Oct, 2024 - 11 Nov, 2024',
                                style: header7.copyWith(
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                          ComponentWrapper(
                            padding: EdgeInsets.symmetric(
                              horizontal: 8,
                              vertical: 3,
                            ),
                            radius: 4,
                            backgroundColor: DTColor.lightGreen,
                            child: Center(
                              child: Text(
                                'Active',
                                style: header7.copyWith(color: DTColor.green),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 8),
                      Text(
                        'Sales and Marketing Manager',
                        style: header5.copyWith(
                          fontWeight: FontWeight.w700,
                          color: DTColor.bookTitleBlack,
                        ),
                      ),
                      SizedBox(height: 6),
                      DTDivider(),
                      SizedBox(height: 6),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.person_outline_outlined,
                                color: DTColor.primaryTextColor,
                                size: 24,
                              ),
                              SizedBox(width: 5),
                              Text(
                                'Required candidates: 2',
                                style: header7.copyWith(
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Text(
                                'View details ',
                                style: header7.copyWith(
                                  fontWeight: FontWeight.w600,
                                  color: DTColor.starCommandBlue,
                                ),
                              ),

                              Icon(
                                Icons.arrow_forward_ios_outlined,
                                size: 12,
                                color: DTColor.starCommandBlue,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                );
              },
              separatorBuilder: (context, index) => SizedBox(height: 10),
              itemCount: 3,
            ),
          ),
        ],
      ),
    );
  }
}
