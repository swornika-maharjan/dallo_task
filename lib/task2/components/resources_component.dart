import 'package:flutter/cupertino.dart';
import 'package:flutterproject/task/theme/task_theme.dart';

class ResourcesContainer extends StatelessWidget {
  const ResourcesContainer({
    super.key,
    required this.details,
    required this.data,
    required this.imagepath,
    required this.image,
  });
  final String details;
  final String data;
  final String imagepath;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topRight,
      child: Container(
        height: 59,
        width: 185,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: AppColors.dentbox,
        ),
        child: Row(
          children: [
            Container(
              margin: EdgeInsets.only(left: 10),
              height: 30,
              width: 33,
              child: Stack(
                children: [
                  Image.asset(imagepath),

                  Positioned(child: Image.asset(image)),
                ],
              ),
            ),
            SizedBox(width: 4),
            Column(
              children: [
                SizedBox(height: 10),
                Text(
                  details,
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    color: AppColors.beginner,
                    fontSize: 14,
                  ),
                ),
                Row(
                  children: [
                    Text(
                      data,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                        color: AppColors.primary,
                      ),
                    ),
                    Text(
                      '/200',
                      style: TextStyle(
                        fontWeight: FontWeight.w300,
                        color: AppColors.beginner,
                        fontSize: 14,
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
