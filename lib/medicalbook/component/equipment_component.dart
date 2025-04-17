import 'package:flutter/material.dart';
import 'package:flutterproject/medicalbook/component/dt_product_card_component.dart';
import 'package:flutterproject/theme/dt_color.dart';
import 'package:flutterproject/theme/dt_styles.dart';
import 'package:flutterproject/theme/task_theme.dart';

class EquipmentComponent extends StatelessWidget {
  const EquipmentComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 419,
      decoration: BoxDecoration(color: DTColor.white),
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Equipment',
                  style: header4.copyWith(
                    fontWeight: FontWeight.w700,
                    color: DTColor.academyBlue,
                  ),
                ),

                Row(
                  children: [
                    Text(
                      'View all',
                      style: header7.copyWith(
                        fontWeight: FontWeight.w700,
                        color: DTColor.orange,
                      ),
                    ),
                    Icon(
                      Icons.arrow_forward_ios_outlined,
                      size: 16,
                      color: AppColors.viewall,
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 15),
            Expanded(
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                separatorBuilder: (context, index) => SizedBox(width: 10),
                itemCount: 3,
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
