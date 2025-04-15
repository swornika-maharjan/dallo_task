import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutterproject/medicalbook/component/dt_product_card_component.dart';
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
          child: GridView.builder(
            shrinkWrap: true,
            itemCount: 6,
            physics: NeverScrollableScrollPhysics(),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 15,
              mainAxisSpacing: 10,
              childAspectRatio: 2 / 4,
            ),
            itemBuilder: (context, index) {
              return DTProductCardComponent();
            },
          ),
        ),
      ),
    );
  }
}
