import 'package:flutter/material.dart';
import 'package:flutterproject/task/theme/task_theme.dart';

class StreaksContainer extends StatelessWidget {
  const StreaksContainer({super.key, required this.title, required this.days});
  final String title;
  final String days;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 360,
      decoration: BoxDecoration(color: AppColors.dentbox),
      child: Row(
        children: [
          SizedBox(width: 10),
          Text(title, style: TextStyle(color: AppColors.longeststreak)),
          SizedBox(width: 20),
          Stack(
            children: [
              Container(
                width: 40,
                height: 40,
                margin: EdgeInsets.only(left: 90),
                decoration: BoxDecoration(
                  color: AppColors.firebackground.withOpacity(0.1),
                  shape: BoxShape.circle,
                ),
              ),

              Positioned(
                top: 5,
                bottom: 5,
                right: 3,
                left: 3,
                child: Container(
                  margin: EdgeInsets.only(left: 90),
                  child: Image.asset(
                    'assets/images/fire.png',
                    width: 50,
                    height: 50,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(width: 10),
          Text(
            days,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
              color: AppColors.description,
            ),
          ),
        ],
      ),
    );
  }
}
