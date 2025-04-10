import 'package:flutter/cupertino.dart';
import 'package:flutterproject/medicalbook/component/featured_component.dart';
import 'package:flutterproject/theme/task_theme.dart';

class BlackFridayComponent extends StatelessWidget {
  const BlackFridayComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 622,
      width: 400,
      decoration: BoxDecoration(color: AppColors.dentbox),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Image.asset('assets/images/blackfriday.png'),
            SizedBox(height: 10),
            Text(
              'Black Friday Mega Deals – Shop & Save Big! 🛍️',
              style: TextStyle(
                fontSize: 14,
                color: AppColors.medicalbook,
                fontWeight: FontWeight.w700,
              ),
            ),
            FeaturedComponent(
              text: 'Hurry up!  ',
              size: 12,
              imagepath: 'assets/images/clock.png',
              data: '05: 20: 20:20',
              offer: 'Offer ends in',
              width: 28,
              hurryup: AppColors.hurryup,
              color: AppColors.medicalbook,
              color3: AppColors.hurryup,
            ),
            SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
