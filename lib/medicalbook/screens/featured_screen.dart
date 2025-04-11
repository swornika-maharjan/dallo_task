import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutterproject/theme/dt_color.dart';
import 'package:flutterproject/theme/dt_styles.dart';

class FeaturedScreen extends StatelessWidget {
  const FeaturedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final double itemWidth = (MediaQuery.of(context).size.width / 2) - 24;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: DTColor.white,
        title: Row(
          children: [
            Text(
              'Featured',
              style: header5.copyWith(
                fontSize: 16,
                fontWeight: FontWeight.w700,
                color: DTColor.academyBlue,
              ),
            ),
            SizedBox(width: 5),
            Image.asset('assets/images/featured.png', height: 20, width: 20),
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(15),
            child: SvgPicture.asset(
              'assets/samiksha/search.svg',
              height: 24,
              width: 24,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Wrap(
            spacing: 16,
            runSpacing: 16,
            children: List.generate(12, (index) {
              return SizedBox(
                width: itemWidth,
                child: Column(
                  children: [
                    CachedNetworkImage(
                      imageUrl:
                          'https://marketplace.canva.com/EAFf0E5urqk/1/0/1003w/canva-blue-and-green-surreal-fiction-book-cover-53S3IzrNxvY.jpg',
                      height: 202,
                      width: itemWidth,
                      fit: BoxFit.cover,
                    ),
                    SizedBox(height: 4),
                    Row(
                      children: [
                        Container(
                          height: 17,
                          width: 35,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4),
                            color: DTColor.lightRed,
                          ),
                          child: Center(
                            child: Text(
                              'SALE',
                              style: header7.copyWith(
                                fontWeight: FontWeight.w600,
                                color: DTColor.white,
                                fontSize: 10,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(width: 5),
                        Container(
                          height: 17,
                          width: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4),
                            color: DTColor.green,
                          ),
                          child: Center(
                            child: Text(
                              '50% OFF',
                              style: header7.copyWith(
                                fontWeight: FontWeight.w600,
                                color: DTColor.white,
                                fontSize: 10,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Loksewa Aayog Pharma idol for Pharmacy Officers',
                      style: header6.copyWith(
                        fontSize: 13,
                        fontWeight: FontWeight.w700,
                        color: DTColor.darkbluishgray,
                      ),
                    ),
                    SizedBox(height: 10),
                    Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Nrs. 1,500.00',
                          style: header7.copyWith(
                            fontSize: 12,
                            color: DTColor.deeproyalblue,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        SizedBox(width: 5),
                        Text(
                          'Nrs. 2,720.00',
                          style: header8.copyWith(
                            fontSize: 11,
                            fontWeight: FontWeight.w500,
                            color: DTColor.assetGrey,
                            decoration: TextDecoration.lineThrough,
                            decorationColor: DTColor.assetGrey,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              );
            }),
          ),
        ),
      ),
    );
  }
}
