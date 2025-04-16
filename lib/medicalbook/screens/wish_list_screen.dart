import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutterproject/medicalbook/component_wrapper.dart';
import 'package:flutterproject/theme/dt_color.dart';
import 'package:flutterproject/theme/dt_styles.dart';

class WishListScreen extends StatelessWidget {
  const WishListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: DTColor.white,
        actionsPadding: EdgeInsets.only(right: 15),
        title: Text(
          ' Wishlist',
          style: header4.copyWith(
            color: DTColor.bookTitleBlack,
            fontWeight: FontWeight.w700,
          ),
        ),
        actions: [SvgPicture.asset('assets/samiksha/share.svg')],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ListView.builder(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return ComponentWrapper(
                  borderColor: DTColor.borderGrey,
                  width: 1,
                  radius: 0,
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            CachedNetworkImage(
                              imageUrl:
                                  'https://m.media-amazon.com/images/I/71D-oqE6yeL._UF1000,1000_QL80_.jpg',

                              width: 92,
                              height: 115,
                            ),
                            SizedBox(width: 10),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Textbook of Anatomy and Physiology for Health Science and Nursing and pC',
                                    style: header5.copyWith(
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                  Text(
                                    'Author: Bharat Pathak',
                                    style: header7.copyWith(
                                      color: DTColor.assetGrey,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        'Rs 1,000',
                                        style: header5.copyWith(),
                                      ),
                                      SizedBox(width: 10),
                                      Text(
                                        'In stock',
                                        style: header7.copyWith(
                                          color: DTColor.green,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                SvgPicture.asset('assets/samiksha/delete.svg'),
                                SizedBox(width: 5),
                                Text(
                                  'Remove',
                                  style: header7.copyWith(
                                    fontWeight: FontWeight.w600,
                                    color: DTColor.transParentRed,
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Container(
                                  height: 34,
                                  width: 34,
                                  decoration: BoxDecoration(
                                    color: DTColor.orange,
                                    borderRadius: BorderRadius.circular(4),
                                  ),
                                  child: Center(
                                    child: SvgPicture.asset(
                                      'assets/samiksha/cart.svg',
                                      height: 20,
                                      width: 20,
                                      color: DTColor.white,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                );
              },

              itemCount: 3,
            ),
          ],
        ),
      ),
    );
  }
}
