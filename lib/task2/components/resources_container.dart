import 'package:flutter/cupertino.dart';
import 'package:flutterproject/task/theme/task_theme.dart';

class ResourcesContainer extends StatelessWidget {
  const ResourcesContainer({
    super.key,
    required this.details,
    required this.data,
  });
  final String details;
  final String data;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topRight,
      child: Container(
        height: 65,
        width: 218,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: AppColors.dentbox,
        ),
        child: Row(
          children: [
            Container(
              margin: EdgeInsets.only(left: 10),
              height: 50,
              width: 40,
              child: Stack(
                children: [
                  Image.asset('assets/images/yback.png'),

                  Positioned(child: Image.asset('assets/images/youtube.png')),
                ],
              ),
            ),
            SizedBox(width: 20),
            Column(
              children: [
                SizedBox(height: 10),
                Text(
                  details,
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    color: AppColors.beginner,
                  ),
                ),
                Row(
                  children: [
                    Text(
                      data,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: AppColors.primary,
                      ),
                    ),
                    Text(
                      '/200',
                      style: TextStyle(
                        fontWeight: FontWeight.w300,
                        color: AppColors.beginner,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
