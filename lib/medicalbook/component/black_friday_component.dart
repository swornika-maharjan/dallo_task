import 'package:flutter/material.dart';
import 'package:flutterproject/medicalbook/controller/countdown_controller.dart';
import 'package:flutterproject/medicalbook/screens/special_offer_screen.dart';
import 'package:flutterproject/theme/dt_color.dart';
import 'package:flutterproject/theme/dt_styles.dart';
import 'package:flutterproject/theme/task_theme.dart';
import 'package:get/get.dart';

class BlackFridayComponent extends StatelessWidget {
  BlackFridayComponent({super.key});
  final CountdownController controller = Get.put(CountdownController());

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 518,
      width: 400,
      decoration: BoxDecoration(color: DTColor.white),
      child: Padding(
        padding: const EdgeInsets.all(10),
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
              height: 317,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 4,
                itemBuilder: (context, index) {
                  return Container(
                    width: 165,
                    height: 320,
                    decoration: BoxDecoration(
                      color: AppColors.dentbox,
                      borderRadius: BorderRadius.circular(4),
                    ),

                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset(
                          'assets/images/loksewa.png',
                          width: 149,
                          height: 193,
                        ),
                        const SizedBox(height: 5),
                        Row(
                          children: [
                            Container(
                              height: 20,
                              width: 35,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(4),
                                color: AppColors.salebutton,
                              ),
                              child: Center(
                                child: Text(
                                  'SALE',
                                  style: TextStyle(
                                    color: AppColors.dentbox,
                                    fontSize: 10,
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(width: 5),
                            Container(
                              height: 20,
                              width: 40,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(4),
                                color: AppColors.offer,
                              ),
                              child: Center(
                                child: Text(
                                  '8% off',
                                  style: TextStyle(
                                    color: AppColors.dentbox,
                                    fontSize: 10,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 5),
                        Text(
                          'Loksewa Aayog Pharma idol for Pharmacy Officers',
                          style: header6.copyWith(),
                        ),
                        // const SizedBox(height: 5),
                        Row(
                          children: [
                            Text(
                              'Nrs. 1500.00',
                              style: TextStyle(
                                color: AppColors.price,
                                fontSize: 12,
                              ),
                            ),
                            const SizedBox(width: 4),
                            Text(
                              'Nrs. 2,720.00',
                              style: TextStyle(
                                color: AppColors.beginner,
                                fontSize: 11,
                                decoration: TextDecoration.lineThrough,
                                decorationThickness: 1.2,
                                decorationColor: AppColors.beginner,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            // FeaturedComponent(
            //   text: 'Hurry up!  ',
            //   size: 12,
            //   imagepath: 'assets/images/clock.png',
            //   data: '05: 20: 20:20',
            //   offer: 'Offer ends in',
            //   width: 28,
            //   hurryup: AppColors.hurryup,
            //   color: AppColors.medicalbook,
            //   color3: AppColors.hurryup,
            // ),
            SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
