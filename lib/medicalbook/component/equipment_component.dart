import 'package:flutter/material.dart';
import 'package:flutterproject/theme/task_theme.dart';

class EquipmentComponent extends StatelessWidget {
  const EquipmentComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      decoration: BoxDecoration(color: AppColors.dentbox),
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Equipment',
                  style: TextStyle(
                    color: AppColors.medicalbook,
                    fontWeight: FontWeight.w700,
                    fontSize: 16,
                  ),
                ),
                SizedBox(width: 190),
                Row(
                  children: [
                    Text(
                      'View all',
                      style: TextStyle(color: AppColors.viewall, fontSize: 12),
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
                  return Container(
                    height: 211,
                    width: 165,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: AppColors.dentbox,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset('assets/images/labcoat.png'),
                        SizedBox(height: 4),
                        Text(
                          'Medical Lab Coat',
                          style: TextStyle(
                            color: AppColors.featuredescrip,
                            fontSize: 13,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        SizedBox(height: 4),
                        Row(
                          children: [
                            Text(
                              'Nrs. 1500.00',
                              style: TextStyle(
                                color: AppColors.price,
                                fontSize: 12,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            SizedBox(width: 4),
                            Text(
                              'Nrs. 2,720.00',
                              style: TextStyle(
                                color: AppColors.beginner,
                                fontSize: 11,
                                fontWeight: FontWeight.w500,
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
          ],
        ),
      ),
    );
  }
}
