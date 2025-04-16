import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutterproject/medicalbook/component/dt_product_card_component.dart';
import 'package:flutterproject/theme/dt_color.dart';
import 'package:flutterproject/theme/dt_styles.dart';

class BookBundlesScreen extends StatelessWidget {
  const BookBundlesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actionsPadding: EdgeInsets.only(right: 15),
        backgroundColor: DTColor.white,
        title: Text(
          'Book Bundles',
          style: header4.copyWith(
            color: DTColor.academyBlue,
            fontWeight: FontWeight.w700,
          ),
        ),
        actions: [SvgPicture.asset('assets/samiksha/search.svg')],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16),
              child: GridView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: 3,
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
          ],
        ),
      ),
    );
  }
}
