import 'package:flutter/material.dart';
import 'package:flutterproject/theme/task_theme.dart';

class ReferComponent extends StatelessWidget {
  const ReferComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 150,
          width: 380,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: AppColors.dentbox,
          ),
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Refer and earn reward points',
                  style: TextStyle(
                    color: AppColors.dental,
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  'Refer your friends to shop with us. Each successful referral earns you exciting reward points! ⭐ 🏆',
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: AppColors.description,
                  ),
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    Container(
                      height: 38,
                      width: 280,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(
                          color: AppColors.ringcolor,
                          width: 1,
                        ),
                      ),
                      child: Row(
                        children: [
                          SizedBox(width: 10),
                          Text(
                            'LeslieAlexandar1234',
                            style: TextStyle(
                              color: AppColors.dental,
                              fontWeight: FontWeight.w500,
                              fontSize: 12,
                            ),
                          ),
                          SizedBox(width: 80),
                          Icon(
                            Icons.content_copy_outlined,
                            color: AppColors.viewall,
                            size: 16,
                          ),
                          SizedBox(width: 4),
                          Icon(Icons.arrow_drop_down, color: AppColors.viewall),
                        ],
                      ),
                    ),
                    SizedBox(width: 20),
                    Container(
                      height: 38,
                      width: 38,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(
                          color: AppColors.ringcolor,
                          width: 1,
                        ),
                      ),
                      child: Icon(Icons.share_outlined),
                    ),
                  ],
                ),
                
              ],
            ),
          ),
        ),
      ],
    );
  }
}
