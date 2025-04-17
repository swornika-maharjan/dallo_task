import 'package:flutter/material.dart';
import 'package:flutterproject/medicalbook/component/dt_product_card_component.dart';
import 'package:flutterproject/medicalbook/component_wrapper.dart';
import 'package:flutterproject/medicalbook/screens/featured_screen.dart';
import 'package:flutterproject/theme/dt_color.dart';
import 'package:flutterproject/theme/dt_styles.dart';
import 'package:get/get.dart';

class FeaturedComponent extends StatelessWidget {
  const FeaturedComponent({
    super.key,
    required this.text,
    required this.imagepath,

  
  });
  final String text;
  final String imagepath;



  @override
  @override
  Widget build(BuildContext context) {
    return ComponentWrapper(
      padding: const EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Text(
                    text,
                    style: header4.copyWith(
                      color: DTColor.academyBlue,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const SizedBox(width: 5),
                  Image.asset(imagepath, height: 20, width: 20),
                ],
              ),
              GestureDetector(
                onTap: () {
                  Get.to(() => FeaturedScreen());
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
                    const SizedBox(width: 4),
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
              shrinkWrap: true,
              separatorBuilder: (context, index) => SizedBox(width: 10),
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
