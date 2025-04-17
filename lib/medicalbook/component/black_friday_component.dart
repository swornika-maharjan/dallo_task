import 'package:flutter/material.dart';
import 'package:flutterproject/medicalbook/component/dt_product_card_component.dart';
import 'package:flutterproject/medicalbook/component_wrapper.dart';
import 'package:flutterproject/medicalbook/controller/countdown_controller.dart';
import 'package:flutterproject/medicalbook/screens/special_offer_screen.dart';
import 'package:flutterproject/theme/dt_color.dart';
import 'package:flutterproject/theme/dt_styles.dart';
import 'package:get/get.dart';

class BlackFridayComponent extends StatelessWidget {
  BlackFridayComponent({super.key});
  final CountdownController controller = Get.put(CountdownController());

  @override
  Widget build(BuildContext context) {
    return ComponentWrapper(
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset('assets/images/blackfriday.png'),
          SizedBox(height: 10),
          Text(
            'Black Friday Mega Deals – Shop & Save Big! 🛍️',
            style: header5.copyWith(
              fontWeight: FontWeight.w700,
              color: DTColor.academyBlue,
            ),
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Obx(
                () => Row(
                  children: [
                    Text(
                      'Hurry up! ',
                      style: header7.copyWith(
                        color: DTColor.red,
                        fontWeight: FontWeight.w600,
                      ),
                    ),

                    Text(
                      'Offer ends in',
                      style: header7.copyWith(
                        fontWeight: FontWeight.w600,
                        color: DTColor.academyBlue,
                      ),
                    ),
                    SizedBox(width: 4),
                    Image.asset(
                      'assets/images/clock.png',
                      height: 24,
                      width: 24,
                    ),

                    Text(
                      controller.formattedTime,
                      style: header7.copyWith(
                        color: DTColor.red,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
              ),
              GestureDetector(
                onTap: () {
                  Get.to(() => SpecialOfferScreen());
                },
                child: Row(
                  children: [
                    Text(
                      'View all',
                      style: header7.copyWith(
                        color: DTColor.orange,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Icon(
                      Icons.arrow_forward_ios_outlined,
                      size: 16,
                      color: DTColor.orange,
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 10),
          SizedBox(
            height: 350,
            child: ListView.separated(
              separatorBuilder: (context, index) => SizedBox(width: 12),
              scrollDirection: Axis.horizontal,
              itemCount: 4,
              itemBuilder: (context, index) {
                return DTProductCardComponent();
              },
            ),
          ),
        ],
      ),
    );
  }
}
