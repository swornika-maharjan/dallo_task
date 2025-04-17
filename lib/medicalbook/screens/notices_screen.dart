import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutterproject/medicalbook/component_wrapper.dart';
import 'package:flutterproject/medicalbook/dt_divider.dart';
import 'package:flutterproject/theme/dt_color.dart';
import 'package:flutterproject/theme/dt_styles.dart';

class NoticesScreen extends StatelessWidget {
  const NoticesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        backgroundColor: DTColor.white,
        title: Text(
          'Notices',
          style: header4.copyWith(
            fontWeight: FontWeight.w700,
            color: DTColor.academyBlue,
          ),
        ),
      ),
      body: Column(
        children: [
          ListView.separated(
            separatorBuilder: (context, index) => SizedBox(height: 15),
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: 4,
            padding: EdgeInsets.symmetric(horizontal: 19, vertical: 15),
            itemBuilder: (context, index) {
              return ComponentWrapper(
                borderColor: DTColor.borderLite,
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(5),
                      child: CachedNetworkImage(
                        imageUrl:
                            'https://www.burpee.com/media/catalog/product/p/r/prod500060_alt2.jpg?optimize=medium&bg-color=255,255,255&fit=bounds&height=660&width=500',
                        height: 88,
                        width: 70,
                      ),
                    ),
                    SizedBox(width: 10),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Happy Dashain, Deepawali, Chhath 2081',
                            style: header5.copyWith(
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          SizedBox(height: 6),
                          DTDivider(),
                          SizedBox(height: 6),

                          Row(
                            children: [
                              SvgPicture.asset('assets/samiksha/calendar.svg'),
                              SizedBox(width: 5),
                              Text(
                                '11 October, 2024',
                                style: header7.copyWith(
                                  fontWeight: FontWeight.w400,
                                  color: DTColor.assetGrey,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
