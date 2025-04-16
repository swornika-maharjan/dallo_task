import 'package:flutter/material.dart';
import 'package:flutterproject/medicalbook/component/dt_product_card_component.dart';
import 'package:flutterproject/medicalbook/controller/countdown_controller.dart';
import 'package:flutterproject/theme/dt_color.dart';
import 'package:flutterproject/theme/dt_styles.dart';
import 'package:get/get.dart';

class SpecialOfferScreen extends StatelessWidget {
  SpecialOfferScreen({super.key});
  final CountdownController controller = Get.put(CountdownController());

  @override
  Widget build(BuildContext context) {
    final double itemWidth = (MediaQuery.of(context).size.width / 2) - 24;

    return Scaffold(
      appBar: AppBar(
        actionsPadding: EdgeInsets.only(right: 15),
        backgroundColor: DTColor.white,
        centerTitle: false,
        title: Text(
          'Special offer 🎁 ',
          style: header4.copyWith(color: DTColor.academyBlue),
        ),
        actions: [
          Image.asset('assets/images/search.png', height: 24, width: 24),
        ],
      ),

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset('assets/images/blackfriday.png'),
              SizedBox(height: 10),
              Text(
                'Black Friday Mega Deals – Shop & Save Big! 🛍️',
                style: header5.copyWith(
                  color: DTColor.academyBlue,
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(height: 10),
              Container(
                height: 35,
                width: 400,
                decoration: BoxDecoration(color: DTColor.lightpink),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text(
                          'Hurry up!',
                          style: header7.copyWith(color: DTColor.red),
                        ),
                        SizedBox(width: 5),
                        Text('Offer ends in', style: header7.copyWith()),
                      ],
                    ),
                    Obx(
                      () => Row(
                        children: [
                          Image.asset(
                            'assets/images/clock.png',
                            height: 20,
                            width: 20,
                          ),
                          SizedBox(width: 5),
                          Text(
                            controller.formattedTime,
                            style: header7.copyWith(color: DTColor.red),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              GridView.builder(
                shrinkWrap: true,
                itemCount: 6,
                physics: NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 200, // Maximum width for each item
                  crossAxisSpacing: 15,
                  mainAxisSpacing: 10,
                  childAspectRatio:
                      0.5, // Wider range of devices will handle this better
                ),
                itemBuilder: (context, index) {
                  return DTProductCardComponent();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
